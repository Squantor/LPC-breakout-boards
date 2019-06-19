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
#include <board.hpp>

// dut is the index that will be skipped, dut > size, will apply to all
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

// dut is the index that will be skipped, dut > size, will apply to all
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

// dut is the index that will be skipped, dut > size, will apply to all
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

int gpioTestAll(const ioTest_t *pinTable, const int size)
{
    for(int i = 0; i < size; i++)
    {
        const ioTest_t dut = pinTable[i];
        // discharge all caps
        gpioTestAllLow(pinTable, size, size+1);
        delayTicks(chargeTime);
        gpioTestAllInput(pinTable, size, size+1);
        // test low to high transition
        uint32_t ticksLoHiStart = ticks;
        uint32_t ticksLoHiEnd = ticksLoHiStart;
        gpioTestAllHigh(pinTable, size, i);
        while(  !Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
                ticksLoHiEnd < ticksLoHiStart + chargeTime )
        {
            ticksLoHiEnd = ticks;
        }
        uint32_t ticksLoHi = ticksLoHiEnd - ticksLoHiStart;
        // charge all caps
        gpioTestAllHigh(pinTable, size, size+1);
        delayTicks(chargeTime);
        gpioTestAllInput(pinTable, size, size+1);
        uint32_t ticksHiLoStart = ticks;
        uint32_t ticksHiLoEnd = ticksHiLoStart;
        gpioTestAllLow(pinTable, size, i);
        while(  Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
                ticksHiLoEnd < ticksHiLoStart + chargeTime )
        {
            ticksHiLoEnd = ticks;
        }
        uint32_t ticksHiLo = ticksHiLoEnd - ticksHiLoStart;
        // done testing
        gpioTestAllInput(pinTable, size, size+1);
        // pass or fail test
        if( (ticksHiLo > maxTicksHiLo) ||
            (ticksHiLo < minTicksHiLo) ||
            (ticksLoHi > maxTicksLoHi) ||
            (ticksLoHi < minTicksLoHi) )
        {
            return i;
        }
    }
    return size;
}
