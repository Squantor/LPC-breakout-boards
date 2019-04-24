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
#ifndef PRINT_HPP
#define PRINT_HPP

#include <datastream.h>
#include <stdint.h>

void print_hex_u8(const datastreamChar_t *__restrict__ stream, const uint8_t data);
void print_hex_u16(const datastreamChar_t *__restrict__ stream, const uint16_t data);
void print_hex_u32(const datastreamChar_t *__restrict__ stream, const uint32_t data);
void print_dec_u16(const datastreamChar_t *__restrict__ stream, uint16_t data);
void print_dec_u32(const datastreamChar_t *__restrict__ stream, uint32_t data);
void print_bin_u32(const datastreamChar_t *__restrict__ stream, const uint32_t data);

#endif
