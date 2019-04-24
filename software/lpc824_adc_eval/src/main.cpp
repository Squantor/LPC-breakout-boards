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
#include <board.hpp>
#include <stream_uart.hpp>
#include <strings.hpp>
#include <print.hpp>

#define TICKRATE_HZ (10)    /* 10 ticks per second */

#define BOARD_ADC_CH 3

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
volatile uint32_t events_adc = 0;
volatile bool sequenceComplete, thresholdCrossed;

extern "C"
{
    void SysTick_Handler(void)
    {
        ticks++;
        /* Manual start for ADC conversion sequence A */
        Chip_ADC_StartSequencer(LPC_ADC, ADC_SEQA_IDX);
    }

    void PIN_INT0_IRQHandler(void)
    {
        events_int0++;
        Chip_PININT_ClearIntStatus(LPC_PININT, PININTCH0);
    }
    
    void ADC_SEQA_IRQHandler(void)
    {
        uint32_t pending;

        /* Get pending interrupts */
        pending = Chip_ADC_GetFlags(LPC_ADC);

        /* Sequence A completion interrupt */
        if (pending & ADC_FLAGS_SEQA_INT_MASK) {
            sequenceComplete = true;
        }

        /* Clear any pending interrupts */
        Chip_ADC_ClearFlags(LPC_ADC, pending);
    }
}

int main(void)
{
    char string[] = "int0\r";
    uint8_t leds = 0;
    uint32_t eventsInt0Current = 0;

    boardInit();
    
    Chip_ADC_Init(LPC_ADC, 0);
    Chip_ADC_StartCalibration(LPC_ADC);
    while (!(Chip_ADC_IsCalibrationDone(LPC_ADC))) {}
    Chip_ADC_SetClockRate(LPC_ADC, ADC_MAX_SAMPLE_RATE);
    
    Chip_ADC_SetupSequencer(LPC_ADC, ADC_SEQA_IDX, 
        (ADC_SEQ_CTRL_CHANSEL(BOARD_ADC_CH) | 
        ADC_SEQ_CTRL_MODE_EOS )
        );
    // enable fixed pins after the sequencer
    // TODO investigate this as it is not according to the datasheet
    Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);
    Chip_SWM_EnableFixedPin(SWM_FIXED_ADC3);
    Chip_Clock_DisablePeriphClock(SYSCTL_CLOCK_SWM);
    
    Chip_ADC_ClearFlags(LPC_ADC, Chip_ADC_GetFlags(LPC_ADC));
    Chip_ADC_EnableInt(LPC_ADC, (ADC_INTEN_SEQA_ENABLE));
    
    NVIC_EnableIRQ(ADC_SEQA_IRQn);
    
    Chip_ADC_EnableSequencer(LPC_ADC, ADC_SEQA_IDX);
    
    SysTick_Config(SystemCoreClock / TICKRATE_HZ);
    
    dsPuts(&streamUart, strHello);

    while (1)
    {
        __WFI();
        // handle I2c port expander pins
        if(eventsInt0Current != events_int0)
        {
            uint8_t pins;
            getI2CExpander(&pins);
            dsPuts(&streamUart, string);
            setI2CExpander(( ~(leds++) ) | 0xF0);
            eventsInt0Current = events_int0;
        }
        
        /* Is a conversion sequence complete? */
        if(sequenceComplete) 
        {
            sequenceComplete = false;

            /* Get raw sample data for channels 0-11 */
            for (int i = 0; i < 12; i++) {
                uint32_t rawSample = Chip_ADC_GetDataReg(LPC_ADC, i);

                /* Show some ADC data */
                if (rawSample & (ADC_DR_OVERRUN | ADC_SEQ_GDAT_DATAVALID)) 
                {
                    dsPuts(&streamUart, strAdcChan);
                    print_dec_u16(&streamUart, i);
                    dsPuts(&streamUart, strAdcValue);
                    print_dec_u16(&streamUart, ADC_DR_RESULT(rawSample));
                    dsPuts(&streamUart, strCrLf);
                }
            }
        }
    }

    return 0 ;
}
