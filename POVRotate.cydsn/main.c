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
#include "EEProm.h"

void testEEPROM()
{
    volatile uint8_t result;
    uint8_t wrdata[] = {0, 1, 2, 3, 4, 5, 6, 7};
    uint8_t rddata[8];
    struct I2CInterface i2c;
    i2c.write                   = I2C_EEPROM_I2CMasterWriteBuf;
    i2c.read                    = I2C_EEPROM_I2CMasterReadBuf;
    i2c.getStatus               = I2C_EEPROM_I2CMasterStatus;
    i2c.delayUs                 = CyDelayUs;
    i2c.clearStatus             = I2C_EEPROM_I2CMasterClearStatus;

    i2c.transferInProgressMask  = I2C_EEPROM_I2C_MSTAT_XFER_INP;
    i2c.errorMask               = I2C_EEPROM_I2C_MSTAT_ERR_XFER;
    i2c.completeTransferMask    = I2C_EEPROM_I2C_MODE_COMPLETE_XFER;
    i2c.deviceAddress           = 0x50;

    EEPROM_init_i2c(i2c);
    result = EEPROM_write(0, wrdata, 8);
    memset(rddata, 0x55, 8);
    result = EEPROM_read(0, rddata, 8);
    result++;
    CyDelay(1000);
}

void ledReset()
{
    uint8_t ones[20];
    memset(ones, 0xFF, sizeof(ones));
    SPI_LED_SpiUartPutArray(ones, sizeof(ones));
}

void spiLedFlush()
{
    volatile uint8_t bytesInBuf = SPI_LED_SpiUartGetTxBufferSize();
    while (SPI_LED_SpiUartGetTxBufferSize() > 0) {};
}


void ledControl(uint8_t numLED, uint8_t global, uint32_t rgb)
{
    uint8_t start[4] = {0, 0, 0, 0};
    uint8_t stop[4]  = {0xFF, 0xFF, 0xFF, 0xFF};
    uint8_t led;

    for (led = 0; led < numLED; led++)
    {
        SPI_LED_SpiUartPutArray(stop, 4);
    }
    spiLedFlush();

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

    for (led = 0; led < numLED; led++)
    {
        SPI_LED_SpiUartPutArray(stop, 4);
    }
    spiLedFlush();
}

int main()
{
    uint8_t ledState = 0;
    uint32_t color = 0xFF;
    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    SPI_LED_Start();
    I2C_EEPROM_Start();
    WP_Write(0);

    ledReset();
    ledReset();
    ledReset();
    ledReset();

    for(;;)
    {
        /* Place your application code here. */
        STATUS_LED_Write(ledState);
        LED_Write(ledState);

        ledState = !ledState;
        CyDelay(1000);
        ledControl(8, 31, color);
        color <<= 8;
        if (color > 0xFF0000)
        {
            color = 0xFF;
        }
    }
}

/* [] END OF FILE */
