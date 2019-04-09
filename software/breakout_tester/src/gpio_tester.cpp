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
Quite a long time but this is to take into account that open drain pins
cannot go high and are charged up only via the 100K resistor.
*/
const uint32_t chargeTime = 600;

/* 
maximum transition times for Low to High and High to Low. These values are
derived from charging a 2.2uF via 100K, with some counts added to have 
sufficient margin.
*/
const uint32_t maxTicksLoHi = 500;
const uint32_t maxTicksHiLo = 500;
const uint32_t minTicksLoHi = 100;
const uint32_t minTicksHiLo = 100;

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

bool gpioTestAll(const ioTest_t *pinTable, const int size)
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
                ticksLoHiEnd < ticksLoHiStart + maxTicksLoHi )
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
        while(Chip_GPIO_GetPinState(LPC_GPIO_PORT, 0, dut.gpioDut) && 
                ticksHiLoEnd < ticksHiLoStart + maxTicksHiLo )
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
            return false;
        }
    }
    return true;
}
