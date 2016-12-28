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
#include <project.h>
#include "LED.h"

int main()
{
    uint8_t ledState = 0;
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    SPI_LED_Start();
    I2C_EEPROM_Start();

    LED_S cfg;
    cfg.numberOfLeds = 8;
    led_init(&cfg);    

    for(;;)
    {
        /* Place your application code here. */
        STATUS_LED_Write(ledState);
        ledState = !ledState;
        CyDelay(1000);
        led_setColor(OFF);
        CyDelay(100);
        led_setColor(RED);
        CyDelay(100);
        led_setColor(GREEN);
        CyDelay(100);
        led_setColor(BLUE);
        CyDelay(100);
        led_setColor(WHITE);
    }
}

/* [] END OF FILE */
