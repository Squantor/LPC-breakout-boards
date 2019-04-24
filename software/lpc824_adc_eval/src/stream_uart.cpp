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
/*
Datastream that points to the user facing UART interface
*/

#include <results.h>
#include <stream_uart.hpp>
#include <chip.h>

const static char streamUartName[] = "uartStream";
result writeUart(const char *c);
result readUart(char *c);
const datastreamChar_t streamUart = {writeUart, readUart, streamUartName};

result writeUart(const char *c)
{
    Chip_UART_SendBlocking(LPC_USART0, c, 1);
    return noError;
}

result readUart(char *c)
{
    int readChars = Chip_UART_Read(LPC_USART0, c, 1);
    if(readChars != 1)
        return streamEmtpy;
    else
        return noError;
}

