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

void CurrentMeasurement::init()
{
	lastRead = ADC_BUF_LEN - dmaHandler->Instance->NDTR;
	makeADCEven(lastRead);
}

uint16_t CurrentMeasurement::getCurrentData(uint8_t *dataBuffer)
{
	currentRead = ADC_BUF_LEN - dmaHandler->Instance->NDTR;

	makeADCEven(currentRead);
	// Circular descending DMA buffer handling
	// NDTR register is decremented but memory is incremeneted.
	if (currentRead > lastRead)
	{
		tmpLen = currentRead - lastRead;
		std::copy_n((uint8_t*)(dataBuff + lastRead),
				  (tmpLen*MEAS_BYTES),
				  dataBuffer);

	}
	else if (currentRead < lastRead)
	{

		tmpLen = ADC_BUF_LEN - lastRead;
		dataBuffer = std::copy_n((uint8_t*)(dataBuff + lastRead),
				  tmpLen*MEAS_BYTES,
				  dataBuffer);


		std::copy_n((uint8_t*)(dataBuff),
				  currentRead*MEAS_BYTES,
				  dataBuffer);

		tmpLen += currentRead;
	}
	else
	{
		return 0;
	}

	lastRead = currentRead;

	return tmpLen*MEAS_BYTES;
}


inline void CurrentMeasurement::makeADCEven(uint32_t &n)
{
	// I want to have got data pairs and also do not go outside the memory
	if (n % 2 != 0)
	{
		if (n < ADC_BUF_LEN) n++;
		else
		{
			if (n <= 0) n = ADC_BUF_LEN;
			else n--;
		}
	}
}

CurrentMeasurement::~CurrentMeasurement() {
	// TODO Auto-generated destructor stub
}


