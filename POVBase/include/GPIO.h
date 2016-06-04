#ifndef GPIO_H_
#define GPIO_H_

#include "Utilities.h"


void GPIO_LEDToggle();
void GPIO_LEDSet(uint8_t value);
void GPIO_LEDPulse(uint8_t numberOfPulses);
void GPIO_FanOn();
void GPIO_FanOff();
void GPIO_CoilToggle(uint32_t numberOfPulses);

#endif /* GPIO_H_ */
