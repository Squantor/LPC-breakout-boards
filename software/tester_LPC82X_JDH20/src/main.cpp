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

// all the testable pins, smart to set all pins in proximity
uint8_t boardPinTable[] = {23, 17, 13, 12, 4, 11, 10, 15, 1, 0, 14};

uint8_t testGpio(uint8_t pinTable[], uint8_t tableIndex)
{
    uint8_t currentPin = pinTable[tableIndex];
    // turn to input
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, currentPin);
    // turn on pullup
    
    // loop
    // turn off pullup
    // loop
    // turn to output, low
}

int main()
{
    uint32_t currentTicks = 0;
    uint8_t testresult = 0;
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE);
    //Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_GPIO_Init(LPC_GPIO_PORT);
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, 15);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 15, true);
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock / 10);
    
    // set all pins to output and low
    for(int i = 0; 
        i < (sizeof(boardPinTable) / sizeof(boardPinTable[0])); 
        i+= sizeof(boardPinTable[0])
        )
    {
        Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, boardPinTable[i]);
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, boardPinTable[i], false);
    }
    // test each pin
    testresult |= testGpio(boardPinTable, 8);
    // breakpoint for all okay
    // breakpoint for error
    
    while (1) {
        if(currentTicks != ticks)
        {
            currentTicks = ticks;
            Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, 0, 15);
        }
        __WFI();
    }
}
