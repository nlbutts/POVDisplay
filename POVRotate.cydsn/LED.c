/**
 * Copyright (c) 2016 Blackbird Engineering, LLC.
 * West Fargo ND, 58078
 * All rights reserved.
 *
 * This is the confidential and proprietary information of Appareo Systems, LLC. You shall not
 * disclose such confidential information and shall use it only in accordance with the terms

 * of the license agreement you entered into with Appareo.
 *
 * File: LED.c
 * Creator: Nick Butts
 * Date: DEc 28, 2016
 *
 * Copyright Version 1.0
 */

#include <string.h>
#include "LED.h"

static bool _initialized = false;
static LED_S _cfg;

void led_init(LED_S * cfg)
{
    memcpy((void*)&_cfg, cfg, sizeof(LED_S));
    _initialized = true;
    OE_Write(0);
    LE_Write(0);
    DG_Write(1);
}

void led_setColor(COLOR_E color)
{
    uint8_t ledPattern[3];
    switch (color)
    {
        case OFF:
            ledPattern[0] = 0;
            ledPattern[1] = 0;
            ledPattern[2] = 0;
            break;
        case RED:
            ledPattern[0] = 0xFF;
            ledPattern[1] = 0;
            ledPattern[2] = 0;
            break;
        case GREEN:
            ledPattern[0] = 0;
            ledPattern[1] = 0xFF;
            ledPattern[2] = 0;
            break;
        case BLUE:
            ledPattern[0] = 0;
            ledPattern[1] = 0;
            ledPattern[2] = 0xFF;
            break;
        case WHITE:
            ledPattern[0] = 0xFF;
            ledPattern[1] = 0xFF;
            ledPattern[2] = 0xFF;
            break;
    }

    OE_Write(1);
    LE_Write(0);
    CyDelay(1);
    SPI_LED_SpiUartWriteTxData(ledPattern[0]);
    SPI_LED_SpiUartWriteTxData(ledPattern[1]);
    SPI_LED_SpiUartWriteTxData(ledPattern[2]);
    while (SPI_LED_SpiUartGetTxBufferSize() > 0) {};   
    while (SPI_LED_SpiIsBusBusy() > 0) {};
    CyDelay(10);
    LE_Write(1);
    OE_Write(0);
}

