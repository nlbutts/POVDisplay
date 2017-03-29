/*******************************************************************************
* File Name: app_Ble.h
*
* Description:
*  Contains the function prototypes and constants available to the example
*  project.
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(APP_BLE_H)

    #define APP_BLE_H

    #include <project.h>

    void bleAppInit(const uint8_t swVersion[3]);
    void updateRotationRate(uint32_t rotationRate);
    void updateDrawLoopAverage(uint32_t drawTime);
    void updateVoltage(uint16_t voltageInMv);
    void DisUpdateFirmWareRevision(void);
    void DisUpdateSoftWareRevision(uint32_t majorVersion, uint32_t minorVersion, uint32_t patch, uint32_t buildNumber);

#endif

/* [] END OF FILE */
