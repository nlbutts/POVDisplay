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

#include <string.h>
#include "uartBuf.h"

#define BUFFER_SIZE     100
uint16_t _bytesInBuffer = 0;
uint8_t _buffer[BUFFER_SIZE];

uint16_t UartBuffer_putString(char * str)
{
    uint16_t bytesInStr = strlen(str);
    uint16_t bytesToTransfer = bytesInStr > BUFFER_SIZE - _bytesInBuffer ? BUFFER_SIZE - _bytesInBuffer : bytesInStr;
    memcpy(&_buffer[_bytesInBuffer], str, bytesToTransfer);
    _bytesInBuffer += bytesToTransfer;
    return bytesToTransfer;
}

uint16_t UartBuffer_getNumberOfBytesInBuffer()
{
    return _bytesInBuffer;
}

uint8_t UartBuffer_getByte()
{
    uint8_t temp = _buffer[0];
    if (_bytesInBuffer > 0)
    {       
        memcpy(&_buffer[0], &_buffer[1], _bytesInBuffer - 1);
        _bytesInBuffer--;
    }
    return temp;
}


/* [] END OF FILE */
