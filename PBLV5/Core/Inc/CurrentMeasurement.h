/*
 * CurrentMeasurement.h
 *
 *  Created on: 30 maj 2021
 *      Author: Jakub
 */

#ifndef INC_CURRENTMEASUREMENT_H_
#define INC_CURRENTMEASUREMENT_H_

#include <stdio.h>

#define ADC_BUF_LEN (uint16_t)4096

class CurrentMeasurement {
public:
	CurrentMeasurement();
	virtual ~CurrentMeasurement();

	volatile uint16_t dataBuffer[ADC_BUF_LEN] = {0};
};

#endif /* INC_CURRENTMEASUREMENT_H_ */
