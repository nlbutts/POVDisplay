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
 * File: EarlyInit.cpp
 * Creator: Nick Butts
 * Date: Feb 4, 2013
 *
 * Copyright Version 1.0
 */

#include <stdint.h>
#include "stm32f4xx_conf.h"

void earlyInit(void)
{
    // Enable the main oscillator Port E pin 3
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);
    GPIO_InitTypeDef cfg;
    cfg.GPIO_Pin   = GPIO_Pin_3;
    cfg.GPIO_Mode  = GPIO_Mode_OUT;
    cfg.GPIO_OType = GPIO_OType_PP;
    cfg.GPIO_Speed = GPIO_Speed_2MHz;
    cfg.GPIO_PuPd  = GPIO_PuPd_NOPULL;
    GPIO_Init(GPIOE, &cfg);

    GPIO_SetBits(GPIOE, GPIO_Pin_3);
}
