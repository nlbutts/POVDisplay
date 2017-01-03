/**
 * Copyright (c) 2016 Blackbird Engineering, LLC.
 * West Fargo ND, 58078
 * All rights reserved.
 *
 * File: LED.h
 * Creator: Nick Butts
 * Date: Dec 28, 2016
 *
 * Copyright Version 1.0
 */

#ifndef LED_H
#define LED_H


#include <project.h>
#include <stdint.h>
#include "types.h"

typedef struct
{
    uint8_t numberOfLeds;
} LED_S;


typedef enum
{
    OFF,
    RED,
    GREEN,
    BLUE,
    WHITE
} COLOR_E;


#define LED_SET_PIXEL(x, pos)    (x |= (1 << (pos)))
#define LED_CLR_PIXEL(x, pos)    (x &= ~(1 << (pos)))

/**
* Initialies the led functions
*
* @param cfg a pointer to a configuration structure
*/
void led_init(LED_S * cfg);

/**
* Set all of the LEDs to a certain color
*
* @param color a typdef that defines the color
*/
void led_setAllColor(COLOR_E color);

/**
* Push new LED values to the chip
*
* @param leds - push new LED values to chip
*/
void led_pushLEDs(uint8_t * leds);

/**
* Turn each LED on one at a time
*
*/
void led_cycle();

/**
* Push the current LED values to the LED driver chip
*/
void led_update(void);

#endif /* LED_H */
