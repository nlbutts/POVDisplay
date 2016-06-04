#include "GPIO.h"
#include "stm32l0xx_hal_conf.h"

void GPIO_LEDToggle()
{
    HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_3);
}

void GPIO_LEDSet(uint8_t value)
{
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, value);
}

void GPIO_LEDPulse(uint8_t numberOfPulses)
{
    for (uint8_t i = 0; i < numberOfPulses; ++i)
    {
        HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, 1);
        HAL_Delay(100);
        HAL_GPIO_WritePin(GPIOA, GPIO_PIN_3, 1);
        HAL_Delay(100);
    }
}

void GPIO_FanOn()
{
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, 1);
}

void GPIO_FanOff()
{
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, 0);
}

void GPIO_CoilToggle(uint32_t numberOfPulses)
{
    for (uint8_t i = 0; i < numberOfPulses; ++i)
    {
        HAL_GPIO_WritePin(GPIOA, GPIO_PIN_15, 1);
        HAL_Delay(100);
        HAL_GPIO_WritePin(GPIOA, GPIO_PIN_15, 0);
        HAL_Delay(100);
    }
}
