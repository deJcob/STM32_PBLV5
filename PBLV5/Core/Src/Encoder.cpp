/*
 * Encoder.cpp
 *
 *  Created on: May 14, 2019
 *      Author: piotrek
 */

#include <Encoder.h>

Encoder::Encoder() : speedBuffer(MAX_BUFFER_SIZE)
{
}


Encoder::~Encoder()
{
	// TODO Auto-generated destructor stub
}

void Encoder::initialize(TIM_HandleTypeDef *htim)
{
	this->htim = htim;
	htim->Instance->CNT = PULSE_QUANTITY * 2; // Ustawiam wartość na środku licznika timera, ten ma wielkość 4*PULSE_QUANTITY
}

void Encoder::initialize(TIM_HandleTypeDef *htim, uint16_t InterruptZSignal)
{
	initialize(htim);
	interruptZpin = InterruptZSignal;

}


bool Encoder::checkIfMoveMade()
{
	presentTimRegisterValue = htim->Instance->CNT;

	diff = (int16_t)presentTimRegisterValue - (int16_t)lastTimRegisterValue;

	if (presentTimRegisterValue > 3 * PULSE_QUANTITY) // Przepełnienie w górę
	{
		htim->Instance->CNT = htim->Instance->CNT - PULSE_QUANTITY;
		presentTimRegisterValue = presentTimRegisterValue - PULSE_QUANTITY;
	}
	else if (presentTimRegisterValue < 1 * PULSE_QUANTITY) // Przepełnienie w dół
	{
		htim->Instance->CNT = htim->Instance->CNT + PULSE_QUANTITY;
		presentTimRegisterValue = presentTimRegisterValue + PULSE_QUANTITY;
	}

	lastTimRegisterValue = presentTimRegisterValue;

	presentTimeStamp = HAL_GetTick();
	elapsedTime = presentTimeStamp - lastTimeStamp;
	lastTimeStamp = presentTimeStamp;


	if (diff != 0)
	{
		return true;
	}
	else
	{
		return false;
	}
}

bool Encoder::checkIfOverflow()
{
	if (abs(diff) > HALF_OF_TIM_ARR)
	{
		return true;
	}
	else
	{
		return false;
	}
}

void Encoder::calcSpeed()
{
#ifdef SPEED_IN_RADIANS

	tempSpeed.floatVal = ((diff * ANGLE_PER_PULSE_RAD) / ((elapsedTime) / 1000.0)); // RAD/s

	speedBuffer.put(tempSpeed);

	if (filter == movingMean)
	{
		tempSpeed.floatVal = 0.0;

		for (uint8_t i = 0; i < speedBuffer.size(); i++)
		{
			tempSpeed.floatVal +=  speedBuffer.getOfIndex(i).floatVal;
		}
		speed.floatVal = tempSpeed.floatVal / speedBuffer.size();
	}
	else if (filter == savitzkyGolay)
	{
		tempSpeed.floatVal = 0.0;

		for (uint8_t i = 0; i < speedBuffer.size(); i++)
		{
			tempSpeed.floatVal += sgolayArr[i] * speedBuffer.getOfIndex(i).floatVal;
		}

		speed.floatVal = tempSpeed.floatVal;
	}
	else
	{
		speed.floatVal = tempSpeed.floatVal;
	}

	distance.int32Val = distance.int32Val + diff;

#else
	tempSpeed.floatVal = ((abs(diff) * EXTERN_WHEEL_RATIO) / 10.0) / ((elapsedTime) / 1000.0);

	speedBuffer.put(tempSpeed);

	for (uint8_t i = 0; i < speedBuffer.size(); i++)
	{
		tempSpeed.floatVal += speedBuffer.getOfIndex(i).floatVal;
	}

	speed.floatVal = tempSpeed.floatVal / speedBuffer.size();
	distance.floatVal = (abs(diff) * EXTERN_WHEEL_RATIO) / 10.0;
#endif
}

void Encoder::encoderIteration()
{
	if (checkIfMoveMade())
	{
		if (diff > 0)
		{
			if (presentTimRegisterValue < lastTimRegisterValue)
			{
				encoderState = backRun;
			}
			else
			{
				encoderState = forwardRun;
			}
		}
		else
		{
			if (presentTimRegisterValue > lastTimRegisterValue)
			{
				encoderState = forwardRun;
			}
			else
			{
				encoderState = backRun;
			}
		}

		numberOfGoOnChecks = DEFAULT_NUM_OF_CHECKS;
	}
	else
	{
		numberOfGoOnChecks--;

		tempSpeed.floatVal = 0;
		speedBuffer.put(tempSpeed);

#ifndef SPEED_IN_RADIANS
		distance.floatVal = 0;
#endif

		if (!numberOfGoOnChecks)
		{
			speed.floatVal = 0.0;
			encoderState = idle_stat;
			numberOfGoOnChecks = DEFAULT_NUM_OF_CHECKS;
			//lastTimeStamp = HAL_GetTick();
			//speedBuffer.reset();
			//speedBuffer.put(tempSpeed);
		}
	}

	calcSpeed();
}

uint16_t Encoder::getAbsoluteZsensorValue()
{								// floorf korzysta z FPU w przeciwienstwie do floor() - to jest na double
	return controlSumOfZSensor + floorf(htim->Instance->CNT/timArrMultiplicity)*PULSE_QUANTITY;
}

bool Encoder::zInterruptHandler(uint16_t *GPIO_Pin)
{
	if (*GPIO_Pin == interruptZpin)
	{
		if (abs(checkEncoderErrorSize() > 1))
		{
			htim->Instance->CNT = getAbsoluteZsensorValue();
		}
		return true;
	}
	return false;
}

int16_t Encoder::checkEncoderErrorSize()
{
	if (!signalZinitialized)
	{
		signalZinitialized = true;
		controlSumOfZSensor = (uint16_t)htim->Instance->CNT % timArrMultiplicity;
	}
	return ((int16_t)getAbsoluteZsensorValue() - (int16_t)htim->Instance->CNT);
}

uint8_t Encoder::getDataInArray(uint8_t *dataBuffer)
{
	uint8_t dataToReturn[ENCODER_OBJECTDATAVOLUME];

	dataToReturn[0] = encoderState;
	dataToReturn[1] = speed.arrVal[3];
	dataToReturn[2] = speed.arrVal[2];
	dataToReturn[3] = speed.arrVal[1];
	dataToReturn[4] = speed.arrVal[0];

	dataToReturn[5] = distance.arrVal[3];
	dataToReturn[6] = distance.arrVal[2];
	dataToReturn[7] = distance.arrVal[1];
	dataToReturn[8] = distance.arrVal[0];

	std::copy_n(dataToReturn, ENCODER_OBJECTDATAVOLUME, dataBuffer);

	return ENCODER_OBJECTDATAVOLUME;
}
