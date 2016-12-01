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

void spiLedFlish()
{
    volatile uint8_t bytesInBuf = SPI_LED_SpiUartGetTxBufferSize();
    while (SPI_LED_SpiUartGetTxBufferSize() > 0) {};   
}


void ledControl(uint8_t numLED, uint8_t global, uint32_t rgb)
{
    uint8_t start[4] = {0, 0, 0, 0};
    uint8_t stop[4]  = {0xFF, 0xFF, 0xFF, 0xFF};
    uint8_t led;

    SPI_LED_SpiUartPutArray(start, 4);

    for (led = 0; led < numLED; led++)
    {
        uint8_t data[4];
        data[0] = 0xE0 | global;
        data[1] = (rgb      ) & 0xFF;
        data[2] = (rgb >>  8) & 0xFF;
        data[3] = (rgb >> 16) & 0xFF;
        SPI_LED_SpiUartPutArray(data, 4);
    }

    SPI_LED_SpiUartPutArray(stop, 4);
    spiLedFlish();
}

int main()
{
    uint8_t ledState = 0;
    uint32_t color = 0xFF;
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    SPI_LED_Start();

    for(;;)
    {
        /* Place your application code here. */
        STATUS_LED_Write(ledState);
        ledState = !ledState;
        CyDelay(1000);
        ledControl(8, 5, color);
        color <<= 8;
        if (color > 0xFF0000)
        {
            color = 0xFF;
        }
    }
}

/* [] END OF FILE */
