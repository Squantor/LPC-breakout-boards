/*
The MIT License (MIT)

Copyright (c) 2018 Bart Bilos

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
Main program entry/file.
*/

#include "chip.h"
#include <cr_section_macros.h>
#include <boardinit.h>
#include <sqassert.h>

#define TICKRATE_HZ (2)	/* 10 ticks per second */

/* I2CM transfer record */
static I2CM_XFER_T  i2cmXferRec;

/* Function to setup and execute I2C transfer request */
static void SetupXferRecAndExecute(uint8_t devAddr,
								   uint8_t *txBuffPtr,
								   uint16_t txSize,
								   uint8_t *rxBuffPtr,
								   uint16_t rxSize)
{
	/* Setup I2C transfer record */
	i2cmXferRec.slaveAddr = devAddr;
	i2cmXferRec.status = 0;
	i2cmXferRec.txSz = txSize;
	i2cmXferRec.rxSz = rxSize;
	i2cmXferRec.txBuff = txBuffPtr;
    i2cmXferRec.rxBuff = rxBuffPtr;
	Chip_I2CM_XferBlocking(LPC_I2C, &i2cmXferRec);
}

static uint8_t txData[1];
static uint8_t rxData[1];
static void setI2CExpander(uint8_t outputs)
{
	txData[0] = outputs;
	SetupXferRecAndExecute(0x20, txData, sizeof(txData), rxData, 0);
}

static void getI2CExpander(uint8_t *inputs)
{
	SetupXferRecAndExecute(0x20, txData, 0, rxData, sizeof(rxData));
    *inputs = rxData[0];
}



volatile uint32_t ticks = 0;
volatile uint32_t events_int0 = 0;

extern "C"
{
	void SysTick_Handler(void)
	{
		ticks++;
	}

	void PIN_INT0_IRQHandler(void)
	{
		events_int0++;
		Chip_PININT_ClearIntStatus(LPC_PININT, PININTCH0);
	}
}



int main(void)
{
    static volatile uint8_t test;
	char string[] = "int0\n\r";
	uint8_t leds = 0;
	uint32_t eventsInt0Current = 0;

	boardInit();

	/* Enable SysTick Timer */
	sqassert(SysTick_Config(SystemCoreClock / TICKRATE_HZ) == 0);

	/* Loop forever */
	while (1)
	{
		// handle I2c port expander pins
		if(eventsInt0Current != events_int0)
		{
            uint8_t pins;
            getI2CExpander(&pins);
            test = pins;
            Chip_UART_SendBlocking(LPC_USART0, &string, sizeof(string));
            setI2CExpander(( ~(leds++) ) | 0xF0);
			eventsInt0Current = events_int0;
		}
		__WFI();
	}

    return 0 ;
}
