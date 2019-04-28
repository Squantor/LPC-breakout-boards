/*
The MIT License (MIT)

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
/*
Contains all the board specific initialization like connections to peripherals
etcetera.


*/

#include <board.hpp>
#include <chip.h>

const uint32_t OscRateIn = 12000000;
const uint32_t ExtRateIn = 0;

void boardInit(void)
{
    // setup switch matrix pinning
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    // disable existing functionality
    Chip_SWM_DisableFixedPin(SWM_FIXED_ADC8);
    Chip_SWM_DisableFixedPin(SWM_FIXED_ADC0);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);
    // use UART0 for debug output
    Chip_SWM_MovablePinAssign(SWM_U0_TXD_O, UART_RX);
    Chip_SWM_MovablePinAssign(SWM_U0_RXD_I, UART_TX);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    // setup iocon 
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE); 
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
    // crystal clocking
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    // Initialize GPIOs
    Chip_GPIO_Init(LPC_GPIO_PORT);
    // setup uart
    Chip_UART_Init(LPC_USART0);
    Chip_UART_ConfigData(LPC_USART0, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
    Chip_Clock_SetUSARTNBaseClockRate((115200 * 16), true);
    Chip_UART_SetBaud(LPC_USART0, 115200);
    Chip_UART_Enable(LPC_USART0);
    Chip_UART_TXEnable(LPC_USART0);
    // setup ADC
    Chip_ADC_Init(LPC_ADC, 0);
    Chip_ADC_StartCalibration(LPC_ADC);
    while (!(Chip_ADC_IsCalibrationDone(LPC_ADC))) {}
    Chip_ADC_SetClockRate(LPC_ADC, ADC_MAX_SAMPLE_RATE);
    
    Chip_ADC_SetupSequencer(LPC_ADC, ADC_SEQA_IDX, (
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH0) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH1) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH2) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH3) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH4) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH5) | 
        ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH6) | 
        ADC_SEQ_CTRL_MODE_EOS ));
    // enable fixed pins after the sequencer
    // TODO investigate this as it is not according to the datasheet
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC3);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC4);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC5);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC6);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC7);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC8);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC9);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    
    Chip_ADC_ClearFlags(LPC_ADC, Chip_ADC_GetFlags(LPC_ADC));
    Chip_ADC_EnableInt(LPC_ADC, (ADC_INTEN_SEQA_ENABLE));
    
    NVIC_EnableIRQ(ADC_SEQA_IRQn);
    
    Chip_ADC_EnableSequencer(LPC_ADC, ADC_SEQA_IDX);
    
}
