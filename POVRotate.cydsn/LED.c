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
static uint8_t _ledPattern[3];
static uint32_t _ledCycleState = 1;

void led_init(LED_S * cfg)
{
    memcpy((void*)&_cfg, cfg, sizeof(LED_S));
    _initialized = true;
    OE_Write(0);
    LE_Write(0);
    DG_Write(1);
    _ledPattern[0] = 0;
    _ledPattern[1] = 0;
    _ledPattern[2] = 0;
    led_update();
}

void led_setAllColor(COLOR_E color)
{
    switch (color)
    {
        case OFF:
            _ledPattern[0] = 0;
            _ledPattern[1] = 0;
            _ledPattern[2] = 0;
            break;
        case RED:
            _ledPattern[0] = 0xFF;
            _ledPattern[1] = 0;
            _ledPattern[2] = 0;
            break;
        case GREEN:
            _ledPattern[0] = 0;
            _ledPattern[1] = 0xFF;
            _ledPattern[2] = 0;
            break;
        case BLUE:
            _ledPattern[0] = 0;
            _ledPattern[1] = 0;
            _ledPattern[2] = 0xFF;
            break;
        case WHITE:
            _ledPattern[0] = 0xFF;
            _ledPattern[1] = 0xFF;
            _ledPattern[2] = 0xFF;
            break;
    }

    led_update();
}


void led_pushLEDs(uint8_t * leds)
{
    _ledPattern[0] = leds[0];
    _ledPattern[1] = leds[1];
    _ledPattern[2] = leds[2];
    led_update();
}

void led_cycle()
{
    if (_ledCycleState & 0xFF)
    {
        _ledPattern[0] = _ledCycleState;
        _ledPattern[1] = 0;
        _ledPattern[2] = 0;
    }
    else if(_ledCycleState & 0xFF00)
    {
        _ledPattern[0] = 0;
        _ledPattern[1] = _ledCycleState >> 8;
        _ledPattern[2] = 0;
    }
    else
    {
        _ledPattern[0] = 0;
        _ledPattern[1] = 0;
        _ledPattern[2] = _ledCycleState >> 16;
    }
    _ledCycleState <<= 1;
    if (_ledCycleState & 0x1000000)
    {
        _ledCycleState = 1;
    }
    led_update();
}


void led_update()
{
    OE_Write(1);
    LE_Write(0);
    CyDelayUs(10);
    //CyDelay(1);
    SPI_LED_SpiUartWriteTxData(_ledPattern[0]);
    SPI_LED_SpiUartWriteTxData(_ledPattern[1]);
    SPI_LED_SpiUartWriteTxData(_ledPattern[2]);
    while (SPI_LED_SpiUartGetTxBufferSize() > 0) {};
    while (SPI_LED_SpiIsBusBusy() > 0) {};
    //CyDelay(10);
    LE_Write(1);
    OE_Write(0);
}

