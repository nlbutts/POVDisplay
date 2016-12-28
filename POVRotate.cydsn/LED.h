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
void led_setColor(COLOR_E color);


#endif /* LED_H */
