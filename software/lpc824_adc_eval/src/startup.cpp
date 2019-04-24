/*
 * Unified Cortex Startup - C++ startup file
 *
 * This file is in public domain
 *
 * Put together by Paul Sokolovsky based on article by Vanya Sergeev
 * http://dev.frozeneskimo.com/notes/cortex_cmsis/ , GNU ld documentation
 * and numerous other public resources.
 *
 */

#include <stdint.h>

extern int main(void);

#if defined (__cplusplus)
extern "C" {
#endif

/* Linker symbols that are used to prepare the C/C++ environment */
extern uint32_t _data_flash;
extern uint32_t _start_data;
extern uint32_t _end_data;
extern uint32_t _start_bss;
extern uint32_t _end_bss;
extern void _end_stack(void);
extern void (*__preinit_array_start []) (void);
extern void (*__preinit_array_end []) (void);
extern void (*__init_array_start []) (void);
extern void (*__init_array_end []) (void);

// Patch the AEABI integer divide functions to use MCU's romdivide library
#ifdef __USE_ROMDIVIDE
// Location in memory that holds the address of the ROM Driver table
#define PTR_ROM_DRIVER_TABLE ((unsigned int *)(0x1FFF1FF8))
// Variables to store addresses of idiv and udiv functions within MCU ROM
unsigned int *pDivRom_idiv;
unsigned int *pDivRom_uidiv;
#endif


void Reset_Handler(void);

#if defined (__cplusplus)
} // extern "C"
#endif

void Reset_Handler(void) 
{
    uint32_t *src, *dst;

    /* Copy data section from flash to RAM */
    src = &_data_flash;
    dst = &_start_data;
    while (dst < &_end_data)
        *dst++ = *src++;

    /* Clear the bss section*/
    dst = &_start_bss;
    while (dst < &_end_bss)
        *dst++ = 0;
        
    /* execute c++ constructors */
    auto preInitFunc = __preinit_array_start;
    while(preInitFunc < __preinit_array_end)
    {
        (*preInitFunc)();
        preInitFunc++;
    }
    auto initFunc = __init_array_start;
    while(initFunc < __init_array_end)
    {
        (*initFunc)();
        initFunc++;
    }

    // Patch the AEABI integer divide functions to use MCU's romdivide library
#ifdef __USE_ROMDIVIDE
    // Get address of Integer division routines function table in ROM
    unsigned int *div_ptr = (unsigned int *)((unsigned int *)*(PTR_ROM_DRIVER_TABLE))[4];
    // Get addresses of integer divide routines in ROM
    // These address are then used by the code in aeabi_romdiv_patch.s
    pDivRom_idiv = (unsigned int *)div_ptr[0];
    pDivRom_uidiv = (unsigned int *)div_ptr[1];
#endif

    main();
    
    /* we omit executing destructors so gcc can optimize them away*/
    
    while (1);
}
