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
#include "EEPROM.h"
#include "app_Ble.h"
#include "app_LED.h"
#include "uartBuf.h"
#include "stdbool.h"

void testEEPROM(uint8_t xor)
{
    const uint8_t testLen = 32;
    volatile uint8_t rdData[testLen];
    volatile uint8_t wrData[testLen];
    volatile uint8_t status;

    status = EEPROM_read(0, rdData, testLen);
    for (uint8_t i = 0; i < testLen; i++)
    {
        wrData[i] = i & xor;
    }
    status = EEPROM_write(0, wrData, testLen);
    CyDelay(100);
    status = EEPROM_read(0, rdData, testLen);
    rdData[0]++;
}

int main()
{
    uint32_t loopCounter = 0;
    CYBLE_API_RESULT_T      bleApiResult;

    CyGlobalIntEnable; /* Enable global interrupts. */

    /* Start UART and BLE component and display project information */
    bleApiResult = CyBle_Start(AppCallBack);

    if(bleApiResult != CYBLE_ERROR_OK)
    {
        StatusLEDError();
    }

    CyBle_ProcessEvents();


    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    SPI_LED_Start();
    I2C_EEPROM_Start();

    // Configure the LED code.
    LED_S cfg;
    cfg.numberOfLeds = 8;
    led_init(&cfg);

    // Configure the EEPROM
    struct I2CInterface i2cCfg;
    i2cCfg.write        = I2C_EEPROM_I2CMasterWriteBuf;
    i2cCfg.read         = I2C_EEPROM_I2CMasterReadBuf;
    i2cCfg.getStatus    = I2C_EEPROM_I2CMasterStatus;
    i2cCfg.delayUs      = CyDelayUs;
    i2cCfg.clearStatus  = I2C_EEPROM_I2CMasterClearStatus;

    i2cCfg.transferInProgressMask   = I2C_EEPROM_I2C_MSTAT_XFER_INP;
    i2cCfg.errorMask                = I2C_EEPROM_I2C_MSTAT_ERR_XFER;
    i2cCfg.completeTransferMask     = I2C_EEPROM_I2C_MODE_COMPLETE_XFER;
    i2cCfg.deviceAddress            = 0x50;
    EEPROM_init_i2c(i2cCfg);

    WP_Write(0);

    for(;;)
    {
        HandleLeds();
        HandleBleProcessing();
        CyBle_ProcessEvents();

        loopCounter++;
        if (loopCounter > 65000)
        {
            loopCounter = 0;
            UartBuffer_putString("Hello POV\n");
        }
    }
}

/* [] END OF FILE */
