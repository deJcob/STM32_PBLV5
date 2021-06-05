/*
 * CurrentMeasurement.h
 *
 *  Created on: 30 maj 2021
 *      Author: Jakub
 */

#ifndef INC_CURRENTMEASUREMENT_H_
#define INC_CURRENTMEASUREMENT_H_

#include <stdio.h>
#include "main.h"
#include "DataBuffer.h"

#define ADC_CHANNELS 2
#define MEASUREMENT_BYTES 2
#define ADC_MEASUREMENTS_FOR_ONE_CHANNEL 138
#define ADC_BUF_LEN (uint16_t)4*ADC_MEASUREMENTS_FOR_ONE_CHANNEL*ADC_CHANNELS
#define ADC_BUF_LEN_IN_BYTES (uint16_t)(ADC_BUF_LEN>>2)


class CurrentMeasurement {

public:

	ADC_HandleTypeDef *adcHandler;
	DMA_HandleTypeDef *dmaHandler;

	CurrentMeasurement(ADC_HandleTypeDef *hadc, DMA_HandleTypeDef *hdma);
	virtual ~CurrentMeasurement();

	void Init();
	uint16_t getCurrentData(uint8_t *dataBuffer);

	uint32_t lastNDTR = 0;
	uint16_t dataBuff[ADC_BUF_LEN] = {0};

};

#endif /* INC_CURRENTMEASUREMENT_H_ */
