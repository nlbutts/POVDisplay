/**
 * Copyright (c) 2013 Appareo Systems, LLC.
 * 1810 NDSU Research Park Circle North
 * Fargo ND, 58102
 * All rights reserved.
 *
 * This is the confidential and proprietary information of Appareo Systems, LLC. You shall not
 * disclose such confidential information and shall use it only in accordance with the terms
 * of the license agreement you entered into with Appareo.
 *
 * File: CommandParser.c
 * Creator: Nick Butts
 * Date: Jan 1, 2015
 *
 * Copyright Version 1.0
 */

#include <stdlib.h>
//#include "usbd_def.h"
#include "CommandParser.h"
#include "string.h"
//#include "usbd_cdc_if.h"
#include "ee_printf.h"

#define LOCAL_STR_SIZE  20

#define RX_BUF_LENGTH   256
char _rxBuf[RX_BUF_LENGTH];
char _txBuf[RX_BUF_LENGTH];
uint16_t _rxBufIndex = 0;

#define FW_VERSION "0.1"

#define HELP_STR \
        "POVBase " FW_VERSION "\r" \

static const char HelpStr[] = HELP_STR;

/**
 * This function is called from the USB CDC to push data into the local buffer
 *
 * @param buf a pointer to the CDC buffer
 * @param len the number of bytes received through the USB CDC interface
 */
void CommandParser_pushData(uint8_t * buf, uint16_t len)
{
    uint16_t spaceRemaining = RX_BUF_LENGTH - _rxBufIndex;
    memccpy(&_rxBuf[_rxBufIndex], buf, spaceRemaining, len);
    _rxBufIndex +=  MIN(spaceRemaining, len);
    CDC_Transmit_FS(buf, len);
}

/**
 * This function handles parsing of any received data from the USB CDC interface
 */
void CommandParser_execute()
{
    for (uint8_t i = 0; i < _rxBufIndex; ++i)
    {
        if (_rxBuf[i] == '\r')
        {
            switch (_rxBuf[0])
            {
                case 'h':
                case 'H':
                    CDC_Transmit_FS((uint8_t*)HelpStr, strlen(HelpStr));
                    break;
                default:
                    break;
            }
            _rxBufIndex = 0;
        }
    }
}

