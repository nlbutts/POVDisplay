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
#include <stdio.h>
#include <project.h>
#include "LED.h"
#include "EEPROM.h"
#include "app_Ble.h"
#include "app_LED.h"
#include "uartBuf.h"
#include "stdbool.h"
#include "options.h"

#define UPDATES_PER_ROTATION    120
#define SECONDS_TO_UPDATES(x)   ((x * UPDATES_PER_ROTATION) / 60)


/* Holds the input power in millivolts */
static uint32_t _pwrMVolts;

/* The previous rising edge of photodiode output */
static uint16_t _previousCapture = 0;

/* The output of the filtered rotation value */
#define ROTATION_FILTER_GAIN    (0.2 * 256)
static int32_t _rotationRate = 0;

/* LED State of the 4 quad display */
static uint8_t  _ledState = 0;

/* The local LED states */
static uint8_t  _leds[3] = {0};

/* Holds a 60 second free running counter */
uint32_t _timeInSeconds = 0;

/* Debug variables for counting interrupts */
static uint32_t _alignmentIntCount = 0;
static uint32_t _ledUpdateIntCount = 0;

/* Holds the filter for the task time */
static int32_t _drawLoopAvg = 0;
#define UPDATE_FILTER_GAIN      (0.2 * 256)

// void testEEPROM(uint8_t xor)
// {
//     const uint8_t testLen = 32;
//     volatile uint8_t rdData[testLen];
//     volatile uint8_t wrData[testLen];
//     volatile uint8_t status;

//     status = EEPROM_read(0, rdData, testLen);
//     for (uint8_t i = 0; i < testLen; i++)
//     {
//         wrData[i] = i & xor;
//     }
//     status = EEPROM_write(0, wrData, testLen);
//     CyDelay(100);
//     status = EEPROM_read(0, rdData, testLen);
//     rdData[0]++;
// }

void generateQuadPattern()
{
    if (_ledState < 15)
    {
        _leds[0] = 0xFF;
        _leds[1] = 0;
        _leds[2] = 0;
        led_pushLEDs(_leds);
    }
    else if (_ledState < 30)
    {
        _leds[0] = 0;
        _leds[1] = 0xFF;
        _leds[2] = 0;
        led_pushLEDs(_leds);
    }
    else if (_ledState < 45)
    {
        _leds[0] = 0;
        _leds[1] = 0;
        _leds[2] = 0xFF;
        led_pushLEDs(_leds);
    }
    else if (_ledState < 60)
    {
        _leds[0] = 0xFF;
        _leds[1] = 0xFF;
        _leds[2] = 0xFF;
        led_pushLEDs(_leds);
    }
    else
    {
        _leds[0] = 0;
        _leds[1] = 0;
        _leds[2] = 0;
        led_pushLEDs(_leds);
    }
    _ledUpdateIntCount++;
    _ledState++;
}

void generateClock()
{
    int temp = _timeInSeconds - _ledState;
    if ((temp > 0) && (temp <= 2))
    {
        // If within 5 seconds, draw red
        _leds[0] = 0xFF;
        _leds[1] = 0;
        _leds[2] = 0;
    }
    else if ((temp > 0) && (temp <= 4))
    {
        // Draw green
        _leds[0] = 0;
        _leds[1] = 0xFF;
        _leds[2] = 0;
    }
    else if ((temp > 0) && (temp <= 6))
    {
        // Draw green
        _leds[0] = 0;
        _leds[1] = 0;
        _leds[2] = 0xFF;
    }
    else
    {
        // Make dark
        _leds[0] = 0;
        _leds[1] = 0;
        _leds[2] = 0;
    }

    if ((_ledState == SECONDS_TO_UPDATES(15)) ||
        (_ledState == SECONDS_TO_UPDATES(30)) ||
        (_ledState == SECONDS_TO_UPDATES(45)) ||
        (_ledState == SECONDS_TO_UPDATES(0)))
    {
        _leds[0] |= 0x01;
        _leds[1] |= 0x01;
        _leds[2] |= 0x01;
    }

    // // Draw the quad pattern
    // if (_ledState < 15)
    // {
    //     _leds[0] |= 0xC0;
    //     _leds[1] |= 0x30;
    //     _leds[2] |= 0x0C;
    // }
    // else if (_ledState < 30)
    // {
    //     _leds[0] |= 0x30;
    //     _leds[1] |= 0x0C;
    //     _leds[2] |= 0xC0;
    // }
    // else if (_ledState < 45)
    // {
    //     _leds[0] |= 0x0C;
    //     _leds[1] |= 0xC0;
    //     _leds[2] |= 0x30;
    // }
    // else if (_ledState < 60)
    // {
    //     _leds[0] |= 0xFC;
    //     _leds[1] |= 0xFC;
    //     _leds[2] |= 0xFC;
    // }

    led_pushLEDs(_leds);

    _ledState++;
}

int32_t filter(int32_t x, int32_t y, int32_t k)
{
    y = y + (((x - y) * k) >> 8);
    return y;
}

CY_ISR(adcISR)
{
    uint16_t result = ADC_SAR_Seq_GetResult16(1);
    _pwrMVolts = ADC_SAR_Seq_CountsTo_mVolts(1, result);
    _pwrMVolts *= 11;
}

CY_ISR(alignmentISR)
{
    TimerAlignment_ClearInterrupt(0xFF);
    uint16_t capture = TimerAlignment_ReadCapture();
    uint16_t diffTime = capture - _previousCapture;
    _previousCapture = capture;
    _rotationRate = filter(diffTime, _rotationRate, ROTATION_FILTER_GAIN);

    _ledState = 0;
    TimerLED_Start();
    TimerLED_WritePeriod(_rotationRate/UPDATES_PER_ROTATION);
    TimerLED_WriteCounter(0);

    _alignmentIntCount++;
}

CY_ISR(ledUpdateISR)
{
    uint16_t start = TimeSpan_ReadCounter();
    TimerLED_ClearInterrupt(TimerLED_INTR_MASK_CC_MATCH | TimerLED_INTR_MASK_TC);
    //generateQuadPattern();
    generateClock();
    uint16_t stop = TimeSpan_ReadCounter();
    _drawLoopAvg = filter(stop - start, _drawLoopAvg, UPDATE_FILTER_GAIN);
}

static uint32_t _oneSecondCounter = 0;
void sysTickCallback(void)
{
    _oneSecondCounter++;
    if (_oneSecondCounter >= 1000)
    {
        _oneSecondCounter = 0;
        _timeInSeconds++;
        if (_timeInSeconds >= 60)
        {
            _timeInSeconds = 0;
        }
    }
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

    isrADC_StartEx(adcISR);

    ADC_SAR_Seq_Start();
    ADC_SAR_Seq_StartConvert();

    TimerAlignment_Start();
    alignment_isr_StartEx(alignmentISR);

    isrLEDUpdate_StartEx(ledUpdateISR);

    CySysTickStart();
    CySysTickSetCallback(0, sysTickCallback);

    TimeSpan_Start();

    WP_Write(0);

    for(;;)
    {
        HandleLeds();
        HandleBleProcessing();
        CyBle_ProcessEvents();

        loopCounter++;
        if (loopCounter > 20000)
        {
            loopCounter = 0;
            if (_pwrMVolts > 0)
            {
                printf("Main power %d mV\n", (int)_pwrMVolts);
                _pwrMVolts = 0;
                printf("Rotation rate %d in us\n", (int)_rotationRate * 10);
                printf("Loop average %d in us\n", (int)_drawLoopAvg);
                //printf("Alignment int count %d\n", (int)_alignmentIntCount);
                //printf("LED Update int count %d\n", (int)_ledUpdateIntCount);
            }
        }
        if (_rotationRate < MINIMUM_ROTATION_RATE)
        {
            TimerLED_Stop();
        }


    }
}

/* [] END OF FILE */
