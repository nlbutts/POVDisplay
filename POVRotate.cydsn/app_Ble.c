/*******************************************************************************
* File Name: app_Ble.c
*
* Description:
*  Common BLE application code for client devices.
*
*******************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
*******************************************************************************/

#include "app_Ble.h"
#include "types.h"
#include <stdio.h>

/***************************************
*        Global Variables
***************************************/
CYBLE_CONN_HANDLE_T     _connHandle;
uint8                   _rtcIntOccured = false;
uint8                   _buttonIsInUse = false;
uint8_t                 _localSWVersion[3];
uint8_t                 _connected;

extern uint32_t         _rotationFilterGain;
extern uint16_t         _drawOffset;


/***************************************************************
 * Function to update the SW Version string
 **************************************************************/
void DisUpdateFirmWareRevision(void)
{
    CYBLE_STACK_LIB_VERSION_T stackVersion;
    uint8 fwRev[9u] = "0.0.0.000";
    
    if(CyBle_GetStackLibraryVersion(&stackVersion) == CYBLE_ERROR_OK)
    {
        /* Transform numbers to ASCII string */
        fwRev[0u] = stackVersion.majorVersion + '0'; 
        fwRev[2u] = stackVersion.minorVersion + '0';
        fwRev[4u] = stackVersion.patch + '0';
        fwRev[6u] = (stackVersion.buildNumber / 100u) + '0';
        stackVersion.buildNumber %= 100u; 
        fwRev[7u] = (stackVersion.buildNumber / 10u) + '0';
        fwRev[8u] = (stackVersion.buildNumber % 10u) + '0';
    }
    
    CyBle_DissSetCharacteristicValue(CYBLE_DIS_FIRMWARE_REV, sizeof(fwRev), fwRev);   
}

void DisUpdateSoftWareRevision(uint32_t majorVersion, uint32_t minorVersion, uint32_t patch, uint32_t buildNumber)
{
    uint8 fwRev[9u] = "0.0.0.000";
    
    /* Transform numbers to ASCII string */
    fwRev[0u] = majorVersion + '0'; 
    fwRev[2u] = minorVersion + '0';
    fwRev[4u] = patch + '0';
    fwRev[6u] = (buildNumber / 100u) + '0';
    buildNumber %= 100u; 
    fwRev[7u] = (buildNumber / 10u) + '0';
    fwRev[8u] = (buildNumber % 10u) + '0';
    
    CyBle_DissSetCharacteristicValue(CYBLE_DIS_SOFTWARE_REV, sizeof(fwRev), fwRev);   
}

void updateRotationRate(uint32_t rotationRate)
{
    CYBLE_GATTS_HANDLE_VALUE_NTF_T  tempHandle;

    tempHandle.attrHandle = CYBLE_POVDISPLAY_ROTATIONSPEED_CHAR_HANDLE;
    tempHandle.value.val = (uint8_t*)&rotationRate;
    tempHandle.value.len = 4;
    CyBle_GattsWriteAttributeValue(&tempHandle,0,&cyBle_connHandle,CYBLE_GATT_DB_LOCALLY_INITIATED );
}

void updateDrawLoopAverage(uint32_t drawTime)
{
    CYBLE_GATTS_HANDLE_VALUE_NTF_T  tempHandle;

    tempHandle.attrHandle = CYBLE_POVDISPLAY_DRAWTIME_CHAR_HANDLE;
    tempHandle.value.val = (uint8_t*)&drawTime;
    tempHandle.value.len = 4;
    CyBle_GattsWriteAttributeValue(&tempHandle,0,&cyBle_connHandle,CYBLE_GATT_DB_LOCALLY_INITIATED );
}

void updateVoltage(uint16_t voltageInMv)
{
    CYBLE_GATTS_HANDLE_VALUE_NTF_T  tempHandle;

    tempHandle.attrHandle = CYBLE_POVDISPLAY_VOLTAGE_CHAR_HANDLE;
    tempHandle.value.val = (uint8_t*)&voltageInMv;
    tempHandle.value.len = 2;
    CyBle_GattsWriteAttributeValue(&tempHandle,0,&cyBle_connHandle,CYBLE_GATT_DB_LOCALLY_INITIATED );
}

/*******************************************************************************
* Function Name: AppCallBack
********************************************************************************
*
* Summary:
*  This is an event callback function to receive events from the CYBLE Component.
*
* Parameters:
*  uint8 event:       Event from the CYBLE component.
*  void* eventParams: A structure instance for corresponding event type. The
*                     list of event structure is described in the component
*                     datasheet.
*
* Return:
*  None
*
*******************************************************************************/
void AppCallBack(uint32 event, void* eventParam)
{
    CYBLE_API_RESULT_T apiResult;
    CYBLE_GATTS_WRITE_REQ_PARAM_T *wrReqParam;

    switch (event)
	{
        /**********************************************************
        *                       General Events
        ***********************************************************/
		case CYBLE_EVT_STACK_ON: /* This event is received when component is Started */
            /* Enter into discoverable mode so that remote can search it. */
            apiResult = CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
            if(apiResult != CYBLE_ERROR_OK)
            {   
                //ShowError();
            }
            printf("CYBLE_EVT_STACK_ON\n");
            break;
		case CYBLE_EVT_TIMEOUT:
            printf("CYBLE_EVT_TIMEOUT\n");
			break;
		case CYBLE_EVT_HARDWARE_ERROR:  /* This event indicates that some internal HW error has occurred. */
            //ShowError();
            break;
        
        /**********************************************************
        *                       GAP Events
        ***********************************************************/
        case CYBLE_EVT_GAPP_ADVERTISEMENT_START_STOP:
            printf("CYBLE_EVT_GAPP_ADVERTISEMENT_START_STOP\n");
            if(CYBLE_STATE_DISCONNECTED == CyBle_GetState())
            {   
                /* Fast and slow advertising period complete, go to low power  
                 * mode (Hibernate mode) and wait for an external
                 * user event to wake up the device again */
//                Advertising_LED_Write(LED_OFF);
//                Disconnect_LED_Write(LED_ON);
//                SW2_ClearInterrupt();
//                Wakeup_Interrupt_ClearPending();
//                Wakeup_Interrupt_Start();
                CySysPmHibernate();
            }
            break;
        case CYBLE_EVT_GAP_DEVICE_CONNECTED:
            printf("CYBLE_EVT_GAP_DEVICE_CONNECTED\n");
//            Disconnect_LED_Write(LED_OFF);
//            Advertising_LED_Write(LED_OFF);
            break;
        case CYBLE_EVT_GAP_DEVICE_DISCONNECTED:
            /* Put the device to discoverable mode so that remote can search it. */
            printf("CYBLE_EVT_GAP_DEVICE_DISCONNECTED\n");
            apiResult = CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
            if(apiResult != CYBLE_ERROR_OK)
            {
                //ShowError();
            }
            break;
        case CYBLE_EVT_GAPC_CONNECTION_UPDATE_COMPLETE:
            break;
                       
        /**********************************************************
        *                       GATT Events
        ***********************************************************/
        case CYBLE_EVT_GATT_CONNECT_IND:
            printf("CYBLE_EVT_GATT_CONNECT_IND\n");
            break;
        case CYBLE_EVT_GATT_DISCONNECT_IND:
            printf("CYBLE_EVT_GATT_DISCONNECT_IND\n");
            break;

        case CYBLE_EVT_GATTS_WRITE_REQ:
            printf("CYBLE_EVT_GATTS_WRITE_REQ\n");
            wrReqParam = (CYBLE_GATTS_WRITE_REQ_PARAM_T *) eventParam;

            /* Write request for time/date */
            if(wrReqParam->handleValPair.attrHandle == CYBLE_POVDISPLAY_TIME_CHAR_HANDLE)
            {
                /* only update the value and write the response if the requested write is allowed */
                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
                {
                    uint64_t datetime = wrReqParam->handleValPair.value.val[0];
                    datetime <<= 8;
                    datetime |= wrReqParam->handleValPair.value.val[1];
                    datetime <<= 8;
                    datetime |= wrReqParam->handleValPair.value.val[2];
                    datetime <<= 8;
                    datetime |= wrReqParam->handleValPair.value.val[3];
//                    datetime <<= 8;
//                    datetime |= wrReqParam->handleValPair.value.val[4];
//                    datetime <<= 8;
//                    datetime |= wrReqParam->handleValPair.value.val[5];
//                    datetime <<= 8;
//                    datetime |= wrReqParam->handleValPair.value.val[6];
//                    datetime <<= 8;
//                    datetime |= wrReqParam->handleValPair.value.val[7];
                    printf("Date time EPOCH: %08x\n", (unsigned int)(datetime >> 32));
                    printf("Date time EPOCH: %08x\n", (unsigned int)datetime);
                    RTC_SetUnixTime(datetime);

                    CyBle_GattsWriteRsp(cyBle_connHandle);
                }
            }
            /* Write request for time/date */
            if(wrReqParam->handleValPair.attrHandle == CYBLE_POVDISPLAY_FILTERGAIN_CHAR_HANDLE)
            {
                /* only update the value and write the response if the requested write is allowed */
                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
                {
                    _rotationFilterGain = wrReqParam->handleValPair.value.val[0];
                    _rotationFilterGain <<= 8;
                    _rotationFilterGain |= wrReqParam->handleValPair.value.val[1];
                    _rotationFilterGain <<= 8;
                    _rotationFilterGain |= wrReqParam->handleValPair.value.val[2];
                    _rotationFilterGain <<= 8;
                    _rotationFilterGain |= wrReqParam->handleValPair.value.val[3];

                    CyBle_GattsWriteRsp(cyBle_connHandle);
                }
            }
            
            if(wrReqParam->handleValPair.attrHandle == CYBLE_POVDISPLAY_DRAWOFFSET_CHAR_HANDLE)
            {
                /* only update the value and write the response if the requested write is allowed */
                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
                {
                    _drawOffset = wrReqParam->handleValPair.value.val[0];
                    _drawOffset <<= 8;
                    _rotationFilterGain |= wrReqParam->handleValPair.value.val[1];

                    CyBle_GattsWriteRsp(cyBle_connHandle);
                }
            }

        /**********************************************************
        *                       Other Events
        ***********************************************************/

        default:
            break;
	}
    
    if(eventParam != NULL)
    {
    }
}



//void AppCallBack(uint32 event, void *eventParam)
//{
//    CYBLE_GATTS_WRITE_REQ_PARAM_T *wrReqParam;
//    CYBLE_API_RESULT_T apiResult;
//    CYBLE_GAP_BD_ADDR_T localAddr;
//    CYBLE_GAP_CONN_UPDATE_PARAM_T connUpdateParam;
//    uint32  i = 0u;
//
//    switch(event)
//    {
//        /**********************************************************
//        *                       General Events
//        ***********************************************************/
//        /* if there is a disconnect or the stack just turned on from a reset then start the advertising and turn on the LED blinking */
//        case CYBLE_EVT_STACK_ON:
//            /* Enter into discoverable mode so that remote can search it. */
//            apiResult = CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
//            if(apiResult != CYBLE_ERROR_OK)
//            {
//                printf("StartAdvertisement API Error: %d \r\n", apiResult);
//            }
//            printf("Bluetooth On, StartAdvertisement with addr: ");
//            localAddr.type = 0u;
//            CyBle_GetDeviceAddress(&localAddr);
//            for(i = CYBLE_GAP_BD_ADDR_SIZE; i > 0u; i--)
//            {
//                printf("%2.2x", localAddr.bdAddr[i-1]);
//            }
//            printf("\r\n");
//            connected = 0;
//        break;
//
//        case CYBLE_EVT_HARDWARE_ERROR:    /* This event indicates that some internal HW error has occurred. */
//            printf("CYBLE_EVT_HARDWARE_ERROR\r\n");
//            break;
//
//        /**********************************************************
//        *                       GAP Events
//        ***********************************************************/
//        case CYBLE_EVT_GAP_AUTH_REQ:
//            printf("EVT_AUTH_REQ: security=%x, bonding=%x, ekeySize=%x, err=%x \r\n",
//                (*(CYBLE_GAP_AUTH_INFO_T *)eventParam).security,
//                (*(CYBLE_GAP_AUTH_INFO_T *)eventParam).bonding,
//                (*(CYBLE_GAP_AUTH_INFO_T *)eventParam).ekeySize,
//                (*(CYBLE_GAP_AUTH_INFO_T *)eventParam).authErr);
//            break;
//        case CYBLE_EVT_GAP_KEYINFO_EXCHNGE_CMPLT:
//            printf("EVT_GAP_KEYINFO_EXCHNGE_CMPLT \r\n");
//            break;
//        case CYBLE_EVT_GAP_AUTH_COMPLETE:
//            printf("AUTH_COMPLETE\r\n");
//            break;
//        case CYBLE_EVT_GAP_AUTH_FAILED:
//            printf("EVT_AUTH_zFAILED: %x \r\n", *(uint8 *)eventParam);
//            break;
//        case CYBLE_EVT_GAP_DEVICE_CONNECTED:
//            //printf("EVT_GAP_DEVICE_CONNECTED: %d \r\n", connHandle.bdHandle);
//            if (((*(CYBLE_GAP_CONN_PARAM_UPDATED_IN_CONTROLLER_T *)eventParam).connIntv > 0x0006u))
//            {
//                /* If connection settings do not match expected ones - request parameter update */
//                connUpdateParam.connIntvMin   = 0x0006u;
//                connUpdateParam.connIntvMax   = 0x0006u;
//                connUpdateParam.connLatency   = 0x0000u;
//                connUpdateParam.supervisionTO = 0x0064u;
//                apiResult = CyBle_L2capLeConnectionParamUpdateRequest(cyBle_connHandle.bdHandle, &connUpdateParam);
//                printf("CyBle_L2capLeConnectionParamUpdateRequest API: 0x%2.2x \r\n", apiResult);
//            }
//            break;
//        case CYBLE_EVT_GAP_DEVICE_DISCONNECTED:
//            connected = 0;
//            printf("EVT_GAP_DEVICE_DISCONNECTED\r\n");
//            apiResult = CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
//            if(apiResult != CYBLE_ERROR_OK)
//            {
//                printf("StartAdvertisement API Error: %d \r\n", apiResult);
//            }
//            break;
//
//        case CYBLE_EVT_GAP_ENCRYPT_CHANGE:
//            printf("EVT_GAP_ENCRYPT_CHANGE: %x \r\n", *(uint8 *)eventParam);
//            break;
//        case CYBLE_EVT_GAPC_CONNECTION_UPDATE_COMPLETE:
//            printf("EVT_CONNECTION_UPDATE_COMPLETE: %x \r\n", *(uint8 *)eventParam);
//            break;
//
//
//        /**********************************************************
//        *                       GATT Events
//        ***********************************************************/
//        /* when a connection is made, update the LED and Capsense states in the GATT database and stop blinking the LED */
//        case CYBLE_EVT_GATT_CONNECT_IND:
//            //connHandle = *(CYBLE_CONN_HANDLE_T *)eventParam;
//            printf("Connected\r");
//            connected = 1;
//            updateSWVersion();
//        break;
//
//        /* handle a write request */
//        case CYBLE_EVT_GATTS_WRITE_REQ:
//            wrReqParam = (CYBLE_GATTS_WRITE_REQ_PARAM_T *) eventParam;
//
//            /* request write the LED value */
////            if(wrReqParam->handleValPair.attrHandle == CYBLE_DEBUG_SETTINGS_CHAR_HANDLE)
////            {
////                /* only update the value and write the response if the requested write is allowed */
////                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
////                {
////                    measurmentIntervalInSeconds = wrReqParam->handleValPair.value.val[0];
////                    CyBle_GattsWriteRsp(cyBle_connHandle);
////                    //blockageDetectSetOnThreshold(measurmentIntervalInSeconds);
////                }
////                printf("Updating the measurement time to %d seconds\r\n", (int)measurmentIntervalInSeconds);
////            }
////            if(wrReqParam->handleValPair.attrHandle == CYBLE_DEBUG_SIGMA_CHAR_HANDLE)
////            {
////                /* only update the value and write the response if the requested write is allowed */
////                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
////                {
////                    sigma = wrReqParam->handleValPair.value.val[0];
////                    sigma |= wrReqParam->handleValPair.value.val[1] << 8;
////                    sigma |= wrReqParam->handleValPair.value.val[2] << 16;
////                    sigma |= wrReqParam->handleValPair.value.val[3] << 24;
////                    CyBle_GattsWriteRsp(cyBle_connHandle);
////                }
////                printf("sigma = %d\n", (int)sigma);
////            }
////            if(wrReqParam->handleValPair.attrHandle == CYBLE_DEBUG_SIGNAL_CHAR_HANDLE)
////            {
////                /* only update the value and write the response if the requested write is allowed */
////                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
////                {
////                    signal = wrReqParam->handleValPair.value.val[0];
////                    signal |= wrReqParam->handleValPair.value.val[1] << 8;
////                    signal |= wrReqParam->handleValPair.value.val[2] << 16;
////                    signal |= wrReqParam->handleValPair.value.val[3] << 24;
////                    CyBle_GattsWriteRsp(cyBle_connHandle);
////                }
////                printf("signal= %d\n", (int)signal);
////            }
////            if(wrReqParam->handleValPair.attrHandle == CYBLE_DEBUG_XTALK_CHAR_HANDLE)
////            {
////                /* only update the value and write the response if the requested write is allowed */
////                if(CYBLE_GATT_ERR_NONE == CyBle_GattsWriteAttributeValue(&wrReqParam->handleValPair, 0, &cyBle_connHandle, CYBLE_GATT_DB_PEER_INITIATED))
////                {
////                    xtalk = wrReqParam->handleValPair.value.val[0];
////                    xtalk |= wrReqParam->handleValPair.value.val[1] << 8;
////                    xtalk |= wrReqParam->handleValPair.value.val[2] << 16;
////                    xtalk |= wrReqParam->handleValPair.value.val[3] << 24;
////                    CyBle_GattsWriteRsp(cyBle_connHandle);
////                }
////                printf("xtalk= %d\n", (int)xtalk);
////            }
//            break;
//
//        case CYBLE_EVT_GATTS_WRITE_CMD_REQ:
//            printf("CYBLE_EVT_GATTS_WRITE_CMD_REQ\r\n");
//            updateSWVersion();
//            break;
//        case CYBLE_EVT_GATTS_PREP_WRITE_REQ:
//            (void)CyBle_GattsPrepWriteReqSupport(CYBLE_GATTS_PREP_WRITE_NOT_SUPPORT);
//            printf("CYBLE_EVT_GATTS_PREP_WRITE_REQ\r\n");
//            break;
//        case CYBLE_EVT_HCI_STATUS:
//            //printf("CYBLE_EVT_HCI_STATUS\r\n");
//            break;
//
//        default:
//            //printf("Unhandled event: %d\r\n", (int)event);
//            break;
//    }
//}

void bleAppInit(const uint8_t swVersion[3])
{
    memcpy(_localSWVersion, swVersion, sizeof(_localSWVersion));

    /* Start BLE stack and register the callback function */
    CyBle_Start(AppCallBack);
}


/* [] END OF FILE */
