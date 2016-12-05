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
 * File: EEProm.h
 * Creator: Nick Butts
 * Date: August 15, 2016
 *
 * Copyright Version 1.0
 */

#ifndef EE_PROM_H
#define EE_PROM_H

#include <stdint.h>



/**
* This is the SPI interface structure. It is used to pass in the SPI functions
* into the EEPROM object.
*/
struct SPIInterface
{
    void    (*write)(uint8_t data);
    uint8_t (*read)(void);
    uint8_t (*getTxStatus)(void);
    void    (*delayUs)(uint16_t microseconds);
    uint8_t spiIdleMask;
};

/**
* This is the I2C interface structure. It is used to pass in the I2C functions
* and masks into the EEPROM object.
*/
struct I2CInterface
{
    uint32_t (*write)(uint32_t slaveAddress, uint8_t * wrData, uint32_t cnt, uint32_t mode);
    uint32_t (*read)(uint32_t slaveAddress, uint8_t * wrData, uint32_t cnt, uint32_t mode);
    uint32_t (*getStatus)(void);
    void    (*delayUs)(uint16_t microseconds);
    uint32_t (*clearStatus)(void);

    uint32_t transferInProgressMask;
    uint32_t errorMask;
    uint32_t completeTransferMask;
    uint8_t  deviceAddress;
};

/**
* This function should be called if the EEPROM is a SPI based ST EEPROM device
*
* @param spiInterface the SPI interface structure
*/
void EEPROM_init_spi(struct SPIInterface spiInterface);
/**
* This function should be called if the EEPROM is a I2C based ST EEPROM device
*
* @param i2cInterface the I2C interface structure
*/
void EEPROM_init_i2c(struct I2CInterface i2cInterface);
/**
* This function currently does nothing. The thought is it would clear any
* buffers or FIFOS.
*/
void EEPROM_clearBuffers();
/**
* Returns the status of the EEPROM device. In the case of SPI based EEPROMS it
* returns the Status register inside the EEPROM. In the case of I2C EEPROMS it
* tries to read a single byte from the EEPROM. If it can read a byte, then it
* returns 1, otherwise it returns 0. This is how I2C EEPROMS indicate they
* are busy.
*
* @return uint8_t status reg or 0 if busy, 1 if not busy
*/
uint8_t EEPROM_getStatus();
/**
* This function is called to read data from the EEPROM. It will read
* as many bytes as passed in.
*
* @param address the address to read from
* @param data a pointer to a buffer that will hold the read data
* @parma dataLength the number of bytes to read
* @return uint8_t the number of bytes read
*/
uint8_t EEPROM_read(uint32_t address, uint8_t * data, uint32_t dataLength);
/**
* This function is called to write data to the EEPROM. In the case of
* SPI EEPROM you can write as as much data as you want up to a page. In the
* case of I2C EEPROM, you are limited to 128 bytes.
*
* @param
* @param
* @return
*/
uint8_t EEPROM_write(uint32_t address, uint8_t * data, uint32_t dataLength);

#endif /* EE_PROM_H */