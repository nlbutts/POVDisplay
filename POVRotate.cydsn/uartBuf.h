/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/

#include <stdint.h>

void UartBuffer_putChar(char c);
uint16_t UartBuffer_putString(char * str);

uint16_t UartBuffer_getNumberOfBytesInBuffer();

uint8_t UartBuffer_getByte();

/* [] END OF FILE */
