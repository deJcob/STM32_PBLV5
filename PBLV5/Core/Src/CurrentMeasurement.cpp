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
	lastRead = dmaHandler->Instance->NDTR;
	makeADCEven(lastRead);
}

uint16_t CurrentMeasurement::getCurrentData(uint8_t *dataBuffer)
{
	currentRead = dmaHandler->Instance->NDTR;

	makeADCEven(currentRead);

	// Circular descending DMA buffer handling
	if (currentRead <= lastRead)
	{
		tmpLen = lastRead - currentRead;
		std::copy((uint8_t*)(dataBuff + (currentRead*MEAS_BYTES)), (uint8_t*)(dataBuff+(lastRead*MEAS_BYTES)), dataBuffer);
	}
	else
	{
		tmpLen = lastRead;
		std::copy((uint8_t*)(dataBuff), (uint8_t*)(dataBuff+(lastRead*MEAS_BYTES)), dataBuffer);
		tmpLen += ADC_BUF_LEN - currentRead;
		std::copy((uint8_t*)(dataBuff + (currentRead*MEAS_BYTES)),
				(uint8_t*)(dataBuff + ADC_BUF_LEN_IN_BYTES),
				dataBuffer + (lastRead*MEAS_BYTES));
	}

	lastRead = currentRead;

	return tmpLen*MEAS_BYTES;
}

inline void CurrentMeasurement::makeADCEven(uint32_t &n)
{
	// I want to have got data pairs and also do not go outside the memory
	if (n % 2 != 1)
	{
		if (n < ADC_BUF_LEN) n++;
		else n--;
	}
}

CurrentMeasurement::~CurrentMeasurement() {
	// TODO Auto-generated destructor stub
}


