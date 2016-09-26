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

#define PWM_CLOCK 24000000
//#define STARTING_FREQ 267000
#define STARTING_FREQ 100000
//#define STARTING_FREQ 55000
#define ELEMENTS(x)    (sizeof(x) / sizeof(x[0]))

uint8_t buttonPressed = 0;
uint32_t currentFrequency = 1000;

void setFrequency(uint32_t freq)
{
    uint16_t period = PWM_CLOCK / freq;

    PWM_WritePeriod(period);
    PWM_WriteCompare1(period/2);

}

uint32_t stepFrequency()
{
    if (currentFrequency < 100)
    {
        currentFrequency += 5;
    }
    else if (currentFrequency < 1000)
    {
        currentFrequency += 10;
    }
    else if (currentFrequency < 10000)
    {
        currentFrequency += 100;
    }
    else if (currentFrequency < 100000)
    {
        currentFrequency += 100;
    }
    else if (currentFrequency < 1000000)
    {
        currentFrequency += 1000;
    }
    else if (currentFrequency < 10000000)
    {
        currentFrequency += 10000;
    }
    return currentFrequency;
}

CY_ISR(buttonISR)
{
    buttonPressed = 1;
}

int main()
{    
    uint8_t autoSweep = 0;
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    PWM_Start();
    isr_button_StartEx(buttonISR);
    
    if (BUTTON_Read() == 0)
    {
        // The button was depressed on power up, perform an automatic sweep
        autoSweep = 1;
        currentFrequency = STARTING_FREQ;
    }
    else
    {
        currentFrequency = STARTING_FREQ;
    }
    
    setFrequency(currentFrequency);
    
    for(;;)
    {
        /* Place your application code here. */
        if (autoSweep || buttonPressed)
        {            
            buttonPressed = 0;
            Pin_LED_Write(!Pin_LED_Read());
            setFrequency(stepFrequency());
        }

        if (autoSweep)
        {
            CyDelay(100);
        }
        
#if 0
        setFrequency(stepFreq[currentFreqIndex++]);   
        if (currentFreqIndex >= ELEMENTS(stepFreq))
        {
            currentFreqIndex = 0;
        }
#endif
    }
}

/* [] END OF FILE */
