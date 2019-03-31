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

const uint32_t OscRateIn = 12000000;
const uint32_t ExtRateIn = 0;

const ioTest_t boardPinTable[] =
{
    {11, IOCON_PIO11, IOCON_PIO11},
    {10, IOCON_PIO10, IOCON_PIO10},
    {16, IOCON_PIO16, IOCON_PIO16},
    {15, IOCON_PIO16, IOCON_PIO15},
    {1, IOCON_PIO1, IOCON_PIO1},
    {7, IOCON_PIO7, IOCON_PIO7},
    {6, IOCON_PIO6, IOCON_PIO6},
    {0, IOCON_PIO0, IOCON_PIO0},
    {14, IOCON_PIO14, IOCON_PIO14},
    {17, IOCON_PIO17, IOCON_PIO17},
    {13, IOCON_PIO12, IOCON_PIO12},
    {12, IOCON_PIO12, IOCON_PIO12},
    {4, IOCON_PIO4, IOCON_PIO4},
};
const int boardPinCount = sizeof(boardPinTable) / sizeof(boardPinTable[0]);

void boardInit(void)
{
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE); 
    //Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_GPIO_Init(LPC_GPIO_PORT);
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock / 1000);
}
