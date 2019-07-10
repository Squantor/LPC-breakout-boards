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
#include <command_mini.h>
#include <stddef.h>
#include <board.hpp>
#include <chip.h>

result cmdHandleSample(int *argument);
result cmdHandleRecalibrate(int *argument);
result cmdHandleContinual(int *argument);
result cmdHandleQuit(int *argument);

const char cmdSample[] = "s";
const char cmdRecalibrate[] = "r";
const char cmdContinual[] = "c";
const char cmdQuit[] = "q";

commandEntry_t adcEvalCommands[] = 
{
    {cmdSample, cmdHandleSample},
    {cmdRecalibrate, cmdHandleRecalibrate},
    {cmdContinual, cmdHandleContinual},
    {cmdQuit, cmdHandleQuit},
    {NULL, NULL},
};

result cmdHandleSample(int *argument)
{
    return noError;
}

result cmdHandleRecalibrate(int *argument)
{
    Chip_ADC_DisableSequencer(LPC_ADC, ADC_SEQA_IDX);
    boardAdcInit();
    return noError;
}

result cmdHandleContinual(int *argument)
{
    Chip_ADC_EnableSequencer(LPC_ADC, ADC_SEQA_IDX);
    return noError;
}

result cmdHandleQuit(int *argument)
{
    Chip_ADC_DisableSequencer(LPC_ADC, ADC_SEQA_IDX);
    return noError;
}