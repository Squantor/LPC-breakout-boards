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

const uint32_t maxTicksLoHi = 600;
const uint32_t maxTicksHiLo = 600;
const uint32_t minTicksLoHi = 100;
const uint32_t minTicksHiLo = 100;

void gpioTestAllHigh(const ioTest_t *pinTable, const int size, const int dut)
{
    for(int i = 0; i < size; i++)
    {
        if(i == dut)
            continue;
        ioTest_t currentGpioDut = pinTable[i];
        Chip_IOCON_PinSetMode(LPC_IOCON, currentGpioDut.ioconDut, PIN_MODE_INACTIVE);
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut, true);
        Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut);     
    }
}

void gpioTestAllLow(const ioTest_t *pinTable, const int size, const int dut)
{
    for(int i = 0; i < size; i++)
    {
        if(i == dut)
            continue;
        ioTest_t currentGpioDut = pinTable[i];
        Chip_IOCON_PinSetMode(LPC_IOCON, currentGpioDut.ioconDut, PIN_MODE_INACTIVE);
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut, false);
        Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut);     
    }
}

void gpioTestAllInput(const ioTest_t *pinTable, const int size, const int dut)
{
    for(int i = 0; i < size; i++)
    {
        if(i == dut)
            continue;
        ioTest_t currentGpioDut = pinTable[i];
        Chip_IOCON_PinSetMode(LPC_IOCON, currentGpioDut.ioconDut, PIN_MODE_INACTIVE);
        Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, currentGpioDut.gpioDut);     
    }
}

void gpioTestInit(const ioTest_t *pinTable, const int size)
{
    // set all pins to input
    gpioTestAllInput(pinTable, size, size+1);
}

bool gpioTestAll(const ioTest_t *pinTable, const int size)
{
    gpioTestAllLow(pinTable, size);
    
}

bool gpioTestEntry(const ioTest_t dut)
{
    // TODO: all duts low to discharge all capacities
    // TODO: all duts input to remove influence
    // set DUT to input
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioDut);
    Chip_IOCON_PinSetMode(LPC_IOCON, dut.ioconDut, PIN_MODE_INACTIVE);
    // discharge capacitor via pull resistor
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPull, false);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioPull);
    delayTicks(100);
    uint32_t ticksLoHiStart = ticks;
    uint32_t ticksLoHiEnd = ticksLoHiStart;
    // turn on pin
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPull, true);
    // wait until high 
    while(!Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
            ticksLoHiEnd < maxTicksHiLo + maxTicksLoHi )
    {
        ticksLoHiEnd = ticks;
    }
    uint32_t ticksLoHi = ticksLoHiEnd - ticksLoHiStart;
    // wait until we charge capacitor fully
    delayTicks(100);
    uint32_t ticksHiLoStart = ticks;
    uint32_t ticksHiLoEnd = ticksHiLoStart;
    // start discharging capacitor
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPull, false);
    // wait until low
    while(Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
            ticksHiLoEnd < ticksHiLoStart + maxTicksHiLo )
    {
        ticksHiLoEnd = ticks;
    }
    uint32_t ticksHiLo = ticksHiLoEnd - ticksHiLoStart;
    // turn the pull pin to input again
    Chip_IOCON_PinSetMode(LPC_IOCON, dut.ioconPull, PIN_MODE_INACTIVE);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioPull);
    // discharge cap
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioDut, false);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioDut);     
    delayTicks(100);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioDut);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, dut.gpioPull, false);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, dut.gpioPull);     
    delayTicks(100);
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, dut.gpioPull);  
    return((ticksHiLo < maxTicksHiLo) && (ticksLoHi < maxTicksLoHi));
}
