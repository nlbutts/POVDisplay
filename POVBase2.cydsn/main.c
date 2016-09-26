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

#define ELEMENTS(x)     (sizeof(x)/sizeof(x[0])

int main()
{
    uint32_t currentCoilIndex = 0;
    const uint32_t pwmFreq = 48000000;
    const uint32_t coilFreq[] =
    {
        360000,
        1000,
        10000,
        50000,
        100000,
        150000,
        200000,
        250000,
        300000,
        350000,
        400000,
        450000,
        500000
    };
    
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    PWM_Start();
    uint32_t period = pwmFreq / coilFreq[currentCoilIndex];
    PWM_WritePeriod(period);
    PWM_WriteCompare(period/2);

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */

    for(;;)
    {
        /* Place your application code here. */
        LED_Write(!LED_Read());
        CyDelay(100);
    }
}

/* [] END OF FILE */
