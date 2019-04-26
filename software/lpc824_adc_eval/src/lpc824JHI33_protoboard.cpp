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

// init Switch matrix stuff
static inline void swmInit(void)
{
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);

    // disable existing functionality
    Chip_SWM_DisableFixedPin(SWM_FIXED_ADC8);
    Chip_SWM_DisableFixedPin(SWM_FIXED_ADC0);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALIN, true);
    Chip_SWM_FixedPinEnable(SWM_FIXED_XTALOUT, true);

    // use UART0 for debug output
    Chip_SWM_MovablePinAssign(SWM_U0_TXD_O, 7);
    Chip_SWM_MovablePinAssign(SWM_U0_RXD_I, 18);

    // I2C functionality
    Chip_SWM_EnableFixedPin(SWM_FIXED_I2C0_SDA);
    Chip_SWM_EnableFixedPin(SWM_FIXED_I2C0_SCL);

    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
}

static inline void uartInit(void)
{
    Chip_UART_Init(LPC_USART0);
    Chip_UART_ConfigData(LPC_USART0, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
    Chip_Clock_SetUSARTNBaseClockRate((115200 * 16), true);
    Chip_UART_SetBaud(LPC_USART0, 115200);
    Chip_UART_Enable(LPC_USART0);
    Chip_UART_TXEnable(LPC_USART0);
}

static inline void ioconInit(void)
{
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_IOCON);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO8, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO9, PIN_MODE_INACTIVE);
    Chip_IOCON_PinSetI2CMode(LPC_IOCON, IOCON_PIO10, PIN_I2CMODE_FASTPLUS);
    Chip_IOCON_PinSetI2CMode(LPC_IOCON, IOCON_PIO11, PIN_I2CMODE_FASTPLUS);
    Chip_IOCON_PinSetMode(LPC_IOCON, IOCON_PIO16, PIN_MODE_INACTIVE);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_IOCON);
}

static inline void gpioInit(void)
{
    /* Initialize GPIO */
    Chip_GPIO_Init(LPC_GPIO_PORT);
    // setup led
    Chip_GPIO_SetPinDIROutput(LPC_GPIO_PORT, 0, 12);
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 12, true);
    // setup interrupt pin
    Chip_GPIO_SetPinDIRInput(LPC_GPIO_PORT, 0, 16);
}

static inline void setupI2CMaster()
{
    /* Enable I2C clock and reset I2C peripheral */
    Chip_I2C_Init(LPC_I2C);

    /* Setup clock rate for I2C, 100kHz */
    Chip_I2C_SetClockDiv(LPC_I2C, 75);

    /* Setup I2CM transfer rate */
    Chip_I2CM_SetBusSpeed(LPC_I2C, 400000);

    /* Enable Master Mode */
    Chip_I2CM_Enable(LPC_I2C);
}

static inline void setupPinInt(void)
{
    Chip_PININT_Init(LPC_PININT);
    Chip_SYSCTL_SetPinInterrupt(0, 16);
    Chip_SYSCTL_EnablePINTWakeup(0);
    Chip_PININT_SetPinModeEdge(LPC_PININT, PININTCH0);
    Chip_PININT_EnableIntLow(LPC_PININT, PININTCH0);
}

static inline void setupInterrupts(void)
{
    NVIC_EnableIRQ(PININT0_IRQn);
    NVIC_DisableIRQ(I2C_IRQn);
}

void boardInit(void)
{
    swmInit();
    ioconInit();
    Chip_SetupXtalClocking();
    SystemCoreClockUpdate();
    gpioInit();
    uartInit();
    setupI2CMaster();
    setupPinInt();
    setupInterrupts();
}
