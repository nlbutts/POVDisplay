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

#define PWM_CLOCK 12000000
//#define STARTING_FREQ 267000
//#define STARTING_FREQ 100000
#define STARTING_FREQ 86000
#define ELEMENTS(x)    (sizeof(x) / sizeof(x[0]))

uint8_t buttonPressed = 0;
uint32_t currentFrequency = STARTING_FREQ;

uint32_t freqTableIndex = 0;
uint32_t freqTable[] = 
{
    50000,
    55000,
    70000,
    89000,
    100000,
    150000,
    200000,
    300000,
    500000
};

void setFrequency(uint32_t freq)
{
    uint16_t period = PWM_CLOCK / freq;

    PWM_Coil_WritePeriod(period);
    PWM_Coil_WriteCompare(period/2);

}

uint32_t stepFrequencyTable()
{
    uint32_t currentFrequency = freqTable[freqTableIndex++];
    if (freqTableIndex > sizeof(freqTable)/sizeof(freqTable[0]))
    {
        freqTableIndex = 0;
    }
    return currentFrequency;
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
    PWM_Coil_Start();
    
    currentFrequency = STARTING_FREQ;
    
    //setFrequency(currentFrequency);
    buttonPressed = 0;
    
    setFrequency(currentFrequency);
    
    for(;;)
    {
        Pin_LED_Write(!Pin_LED_Read());
        CyDelay(1000);
        /* Place your application code here. */
//        if (autoSweep || buttonPressed)
//        {            
//            buttonPressed = 0;
//            Pin_LED_Write(!Pin_LED_Read());
//            setFrequency(stepFrequency());
//        }
//
//        if (autoSweep)
//        {
//            CyDelay(100);
//        }
        
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
