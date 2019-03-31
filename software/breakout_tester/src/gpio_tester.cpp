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
#include <gpio_tester.hpp>
#include <ticks.hpp>

/* 
maximum transition times for Low to High and High to Low. These values are
derived from charging a 2.2uF capacitor and multiplied by 3 to make sure we
have sufficient margin.
 */

const uint32_t maxTicksLoHi = 150;
const uint32_t maxTicksHiLo = 210;

void gpioTestInit(const ioTest_t *pinTable, int size)
{
    // set all pins to input
    for(int i = 0; i < size; i++)
    {
        ioTest_t currentGpioDut = pinTable[i];
        Chip_IOCON_PinSetMode(LPC_IOCON, currentGpioDut.gpioPullUp, PIN_MODE_INACTIVE);
        Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut);
    }
}

bool gpioTestEntry(const ioTest_t dut)
{
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioDut);
    // discharge capacitor
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioPullUp);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPullUp, false);
    delayTicks(10);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioPullUp);
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
