/*
 * CurrentMeasurement.cpp
 *
 *  Created on: 30 maj 2021
 *      Author: Jakub
 */

#include <CurrentMeasurement.h>

CurrentMeasurement::CurrentMeasurement(ADC_HandleTypeDef *hadc, DMA_HandleTypeDef *hdma) {
	adcHandler = hadc;
	dmaHandler = hdma;
}

void CurrentMeasurement::Init()
{
	lastNDTR = dmaHandler->Instance->NDTR;
	if (lastNDTR % 2 != 1) lastNDTR--;
}


uint16_t CurrentMeasurement::getCurrentData(uint8_t *dataBuffer)
{
	uint32_t currentNDTR = dmaHandler->Instance->NDTR;
	uint32_t len = 0;

	if (currentNDTR % 2 != 1) currentNDTR++; // I want to have got data pairs and also do not go outside the memory
	// NDTR register is decrementing after every conversion (!)
	if (currentNDTR <= lastNDTR)
	{
		len = lastNDTR - currentNDTR;
		std::copy(dataBuff+(currentNDTR*MEASUREMENT_BYTES), dataBuff+(lastNDTR*MEASUREMENT_BYTES), dataBuffer);
	}
	else
	{
		len = lastNDTR;
		std::copy(dataBuff, dataBuff+(lastNDTR*MEASUREMENT_BYTES), dataBuffer);
		len += ADC_BUF_LEN - currentNDTR;
		std::copy(dataBuff+(currentNDTR*MEASUREMENT_BYTES), dataBuff+ADC_BUF_LEN_IN_BYTES, dataBuffer+(lastNDTR*MEASUREMENT_BYTES));
	}
	lastNDTR = currentNDTR;

	return len*MEASUREMENT_BYTES;
}

CurrentMeasurement::~CurrentMeasurement() {
	// TODO Auto-generated destructor stub
}

