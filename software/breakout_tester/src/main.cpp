/*
MIT License

Copyright (c) 2019 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

 */
#include <stdint.h>
#include <chip.h>
#include <board.hpp>

/* 
maximum transition times for Low to High and High to Low. These values are
derived from charging a 2.2uF capacitor and multiplied by 3 to make sure we
have sufficient margin.
 */

const uint32_t maxTicksLoHi = 150;
const uint32_t maxTicksHiLo = 210;

typedef uint32_t timeTicks;
volatile timeTicks ticks = 0;

extern "C"
{
    void SysTick_Handler(void)
    {
        ticks++;
    }
}

void delayTicks(timeTicks ticksToWait)
{
    timeTicks ticksMax = ticks + ticksToWait;
    while(ticks < ticksMax)
        ;
}

typedef struct {
    uint8_t gpioDut;
    CHIP_PINx_T ioconPin;
    CHIP_PINx_T gpioPullUp;
} ioTest_t;

const ioTest_t boardPinTable[] =
{
    {23, IOCON_PIO23, IOCON_PIO23},
    {17, IOCON_PIO17, IOCON_PIO17},
    {13, IOCON_PIO13, IOCON_PIO13},
    {12, IOCON_PIO12, IOCON_PIO12},
    {4, IOCON_PIO4, IOCON_PIO4},
    // we cant fully test these pins, they are open drain
    // See UM10800 page 90, chapter 8.3 of IOCON peripheral
    {11, IOCON_PIO11, IOCON_PIO15},
    {10, IOCON_PIO10, IOCON_PIO15},
    {15, IOCON_PIO15, IOCON_PIO15},
    {1, IOCON_PIO1, IOCON_PIO1},
    {0, IOCON_PIO0, IOCON_PIO0},
    {14, IOCON_PIO14, IOCON_PIO14},
};
const int boardPinCount = sizeof(boardPinTable) / sizeof(boardPinTable[0]);

// true for okay, false for timeout
bool testGpio(ioTest_t dut)
{
    // discharge capacitor
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioDut);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0,dut.gpioDut, false);
    delayTicks(10);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioDut);
    uint32_t ticksLoHiStart = ticks;
    uint32_t ticksLoHiEnd = ticksLoHiStart;
    // turn on pullup
    Chip_IOCON_PinSetMode(LPC_IOCON, dut.gpioPullUp, PIN_MODE_PULLUP);
    // wait until high 
    while(  !Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
            ticksLoHiEnd < maxTicksHiLo + maxTicksLoHi )
    {
        ticksLoHiEnd = ticks;
    }
    uint32_t ticksLoHi = ticksLoHiEnd - ticksLoHiStart;
    // charge capacitor
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioPullUp);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPullUp, true);
    delayTicks(10);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioPullUp);
    uint32_t ticksHiLoStart = ticks;
    uint32_t ticksHiLoEnd = ticksHiLoStart;
    // turn off pullup, turn on pulldown
    Chip_IOCON_PinSetMode(LPC_IOCON, dut.gpioPullUp, PIN_MODE_PULLDN);
    // wait until low
    while(  Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
            ticksHiLoEnd < ticksHiLoStart + maxTicksHiLo )
    {
        ticksHiLoEnd = ticks;
    }
    uint32_t ticksHiLo = ticksHiLoEnd - ticksHiLoStart;
    // turn to output, low
    Chip_IOCON_PinSetMode(LPC_IOCON, dut.gpioPullUp, PIN_MODE_INACTIVE);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioDut);
    return((ticksHiLo < maxTicksHiLo) && (ticksLoHi < maxTicksLoHi));
}

int main()
{
    bool allPinsGood = true;
    boardInit();
    
    // set all pins to input
    for(int i = 0; i < boardPinCount; i++)
    {
        ioTest_t currentGpioDut = boardPinTable[i];
        Chip_IOCON_PinSetMode(LPC_IOCON, currentGpioDut.gpioPullUp, PIN_MODE_INACTIVE);
        Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut);
    }
    // test each pin
    for(int i = 0; i < boardPinCount; i++)
    {
        allPinsGood &= testGpio(boardPinTable[i]);
    }
    // breakpoint for all okay
    if(allPinsGood == true)
        __BKPT(1);
    // breakpoint for error
    else
        __BKPT(0);
    
    while (1) {
        __WFI();
    }
}
