/**
 * Copyright (c) 2015 Appareo Systems, LLC.
 * 1810 NDSU Research Park Circle North
 * Fargo ND, 58102
 * All rights reserved.
 *
 * This is the confidential and proprietary information of Appareo Systems, LLC. You shall not
 * disclose such confidential information and shall use it only in accordance with the terms
 * of the license agreement you entered into with Appareo.
 *
 * File: ramFunctionInit.c
 * Creator: bschleusner
 * Date: Jun 9, 2015
 *
 * Copyright Version 1.0
 */


/**
 * @brief This function is called by the startup code to copy
 *        RAM based functions out of flash and into RAM.
 */
void ramFunctionInit(void)
{
    // These variables are defined in the linker script
    extern char _ram_function_lma;
    extern char _s_ram_function_vma;
    extern char _e_ram_function_vma;

    char *src = &_ram_function_lma;
    char *dst = &_s_ram_function_vma;

    while(dst < &(_e_ram_function_vma))
    {
        *dst++ = *src++;
    }
}

