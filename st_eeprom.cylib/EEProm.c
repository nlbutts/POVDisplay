/**
 * Copyright (c) 2015 Appareo Systems, LLC.
 * 1810 NDSU Research Park Circle North
 * Fargo ND, 58102
 * All rights reserved.
 *
 * This is the confidential and proprietary information of Appareo Systems, LLC. You shall not
 * disclose such confidential information and shall use it only in accordance with the terms

 * of the license agreement you entered into with Appareo.
 *
 * File: EEProm.c
 * Creator: Nick Butts
 * Date: August 15, 2016
 *
 * Copyright Version 1.0
 */

#include <string.h>
#include "EEProm.h"

#define EEP_CMD_WE                      0x06
#define EEP_CMD_WD                      0x04
#define EEP_CMD_READ_STATUS             0x05
#define EEP_CMD_WRITE_STATUS            0x01
#define EEP_CMD_READ_MEMORY             0x03
#define EEP_CMD_WRITE_MEMORY            0x02
#define EEP_CMD_READ_ID                 0x83
#define EEP_CMD_WRITE_ID                0x82
#define EEP_CMD_ID_PAGE_LOCK_STATUS     0x83

#define EEP_INITIALIZED_MASK            0x01
#define EEP_INITIALIZED_AS_SPI_MASK     0x02

static struct SPIInterface _spi;
static struct I2CInterface _i2c;
static uint8_t _initialized = 0;

static void waitForIdle()
{
    _spi.delayUs(5);
    while ((_spi.getTxStatus() & _spi.spiIdleMask) == 0) {};
}

static uint8_t isInitializedAndSPI()
{
    uint8_t temp = _initialized & (EEP_INITIALIZED_MASK | EEP_INITIALIZED_AS_SPI_MASK);
    return temp == (EEP_INITIALIZED_MASK | EEP_INITIALIZED_AS_SPI_MASK) ? 1 : 0;
}

static uint8_t isInitializedAndI2C()
{
    uint8_t temp = _initialized & (EEP_INITIALIZED_MASK);
    return (temp == EEP_INITIALIZED_MASK) ? 1 : 0;
}

static uint8_t spiGetStatus()
{
    uint8_t status;

    _spi.write(EEP_CMD_READ_STATUS);
    _spi.write(0);
    waitForIdle();
    (void)_spi.read();
    status = _spi.read();
    return status;
}

static uint8_t spiRead(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    uint32_t i;
    _spi.write(EEP_CMD_READ_MEMORY);
    _spi.write((address >> 16) & 0xFF);
    _spi.write((address >>  8) & 0xFF);
    _spi.write((address      ) & 0xFF);
    for (i = 0; i < dataLength; i++)
    {
        _spi.write(0);
    }

    waitForIdle();
    (void)_spi.read();
    (void)_spi.read();
    (void)_spi.read();
    (void)_spi.read();
    for (i = 0; i < dataLength; i++)
    {
        data[i] = _spi.read();
    }

    return dataLength;
}

static uint8_t spiWrite(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    // Unlock the memory
    _spi.write(EEP_CMD_WE);
    waitForIdle();
    (void)_spi.read();
    _spi.delayUs(10);

    // Write data
    _spi.write(EEP_CMD_WRITE_MEMORY);
    _spi.write((address >> 16) & 0xFF);
    _spi.write((address >>  8) & 0xFF);
    _spi.write((address      ) & 0xFF);
    for (uint32_t i = 0; i < dataLength; i++)
    {
        _spi.write(data[i]);
    }

    waitForIdle();

    for (uint32_t i = 0; i < dataLength + 4; i++)
    {
        (void)_spi.read();
    }
    return dataLength;
}

static uint8_t i2cWaitForIdle()
{
    uint32_t status;

    do
    {
        status = _i2c.getStatus();
    }
    while (status & _i2c.transferInProgressMask);
    return status & _i2c.errorMask;
}

static uint8_t i2cRead(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    uint8_t buffer[2];
    uint32_t status;
    uint8_t devAddress = _i2c.deviceAddress;

    if (address > 0xFFFF)
    {
        devAddress++;
    }
    buffer[0] = address >> 8;
    buffer[1] = address;

    _i2c.clearStatus();
    status = _i2c.write(devAddress, buffer, 2, _i2c.completeTransferMask);
    if (status != 0)
    {
        return 0;
    }

    if (i2cWaitForIdle())
    {
        return 0;
    }

    _i2c.clearStatus();
    status = _i2c.read(devAddress, data, dataLength, _i2c.completeTransferMask);
    if (status != 0)
    {
        return 0;
    }
    if (i2cWaitForIdle())
    {
        return 0;
    }
    return dataLength;
}

static uint8_t i2cWrite(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    uint8_t buffer[130];
    uint32_t status;
    uint8_t devAddress = _i2c.deviceAddress;

    if (dataLength > sizeof(buffer))
    {
        return 0;
    }

    if (address > 0xFFFF)
    {
        devAddress++;
    }
    buffer[0] = address >> 8;
    buffer[1] = address;
    memcpy(&buffer[2], data, dataLength);
    _i2c.clearStatus();
    status = _i2c.write(devAddress, buffer, dataLength + 2, _i2c.completeTransferMask);
    if (status != 0)
    {
        return 0;
    }

    do
    {
        status = _i2c.getStatus();
    }
    while (status & _i2c.transferInProgressMask);
    if (status & _i2c.errorMask)
    {
        return 0;
    }

    return dataLength;
}

static uint8_t i2cGetStatus()
{
    uint8_t data;
    return i2cRead(0, &data, 1);
}


void EEPROM_init_spi(struct SPIInterface spiInterface)
{
    _spi = spiInterface;
    _initialized = EEP_INITIALIZED_MASK | EEP_INITIALIZED_AS_SPI_MASK;
}

void EEPROM_init_i2c(struct I2CInterface i2cInterface)
{
    _i2c = i2cInterface;
    _initialized = EEP_INITIALIZED_MASK;
}

void EEPROM_clearBuffers()
{

}

uint8_t EEPROM_getStatus()
{
    if (isInitializedAndSPI())
        return spiGetStatus();
    else if (isInitializedAndI2C())
        return i2cGetStatus();

    return 0;
}

uint8_t EEPROM_read(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    if (isInitializedAndSPI())
        return spiRead(address, data, dataLength);
    else if (isInitializedAndI2C())
        return i2cRead(address, data, dataLength);

    return 0;

}

uint8_t EEPROM_write(uint32_t address, uint8_t * data, uint32_t dataLength)
{
    if (isInitializedAndSPI())
        return spiWrite(address, data, dataLength);
    else if (isInitializedAndI2C())
        return i2cWrite(address, data, dataLength);

    return 0;
}
