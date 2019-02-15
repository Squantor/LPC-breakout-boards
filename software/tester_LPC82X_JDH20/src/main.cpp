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

const uint32_t maxTicksLoHi = 150;
const uint32_t maxTicksHiLo = 210;

const uint32_t OscRateIn = 12000000;
const uint32_t ExtRateIn = 0;
volatile uint32_t ticks = 0;

extern "C"
{
    void SysTick_Handler(void)
    {
        ticks++;
    }
}

// TODO type that couples GPIO to PIO pin as these two are disjoint in the LPC824
// all the testable pins, smart to set all pins in proximity
uint8_t boardPinTable[] = {23, 17, 13, 12, 4, 11, 10, 15, 1, 0, 14};

// true for okay, false for timeout
bool testGpio(uint8_t pinTable[], uint8_t tableIndex)
{
    uint8_t currentPin = pinTable[tableIndex];
    // turn to input
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, currentPin);
    uint32_t ticksLoHiStart = ticks;
    uint32_t ticksLoHiEnd = ticksLoHiStart;
    // turn on pullup
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO15, PIN_MODE_PULLUP);
    // wait until high
    while(!Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, currentPin))
    {
        ticksLoHiEnd = ticks;
    }
    volatile uint32_t ticksLoHi = ticksLoHiEnd - ticksLoHiStart;

    uint32_t ticksHiLoStart = ticks;
    uint32_t ticksHiLoEnd = ticksHiLoStart;
    // turn off pullup, turn on pulldown
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO15, PIN_MODE_PULLDN);
    // wait until low
    while(Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, currentPin))
    {
        ticksHiLoEnd = ticks;
    }
    volatile uint32_t ticksHiLo = ticksHiLoEnd - ticksHiLoStart;
    // turn to output, low
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO15, PIN_MODE_INACTIVE);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, 15);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 15, false);
    return((ticksHiLo < maxTicksHiLo) && (ticksLoHi < maxTicksLoHi));
}

int main()
{
    bool allPinsGood = true;
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO15, PIN_MODE_INACTIVE);
    //Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_GPIO_Init(LPC_GPIO_PORT);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, 15);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 15, false);
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock / 1000);
    
    // set all pins to output and low
    for(uint32_t i = 0; 
        i < (sizeof(boardPinTable) / sizeof(boardPinTable[0])); 
        i+= sizeof(boardPinTable[0])
        )
    {
        Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, boardPinTable[i]);
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, boardPinTable[i], false);
    }
    // test each pin
    allPinsGood &= testGpio(boardPinTable, 7);
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
