/*
 * Encoder.h
 *
 *  Created on: May 14, 2019
 *      Author: piotrek
 */

#ifndef ENCODER_H_
#define ENCODER_H_

#include "stdint.h"
#include "main.h"
#include <algorithm>
#include "DataBuffer.h"
#include "unions.h"
#include <math.h>

#define LEFT_ENCODER 0
#define RIGHT_ENCODER 1

#define TIMER_ARR 1024
#define PULSE_QUANTITY 256
#define ANGLE_PER_PULSE_RAD (float)0.024543692606170
#define MAX_BUFFER_SIZE 15 // Musi byc nieparzysty

#define SPEED_IN_RADIANS // Zdefiniowane nie uzywa EXTERN_WHEEL_RATIO, INNER_WHEEL_RATIO, HALF_OF_TIM_ARR

#define DEFAULT_NUM_OF_CHECKS 20// jak pojazd sie zatrzyma to jeszcze przez tyle sprawdzamy czy sie zatrzymals

#define INNER_WHEEL_RATIO 4.77
#define EXTERN_WHEEL_RATIO 4.02 // obwód koła podzielony przez ilość impulsów


#define HALF_OF_TIM_ARR 512

#define ENCODER_OBJECTDATAVOLUME 9

class Encoder
{

	enum status
	{
		idle_stat,
		forwardRun,
		backRun
	};

	enum filterType
	{
		none,
		movingMean,
		savitzkyGolay,
	};

	TIM_HandleTypeDef *htim;

	uint16_t presentTimRegisterValue = 0;
	uint16_t lastTimRegisterValue = 0;
	int16_t diff = 0;
	uint32_t presentTimeStamp = 0;
	uint32_t lastTimeStamp = 0;
	uint32_t elapsedTime = 0;
	uint16_t interruptZpin = 0;
	uint16_t controlSumOfZSensor = 0;

	const uint8_t timArrMultiplicity = TIMER_ARR/PULSE_QUANTITY;

	const float sgolayArr[MAX_BUFFER_SIZE] =
	/* buff 15, order 4 */ {0.0464396284829724, -0.0619195046439631,
			-0.0635865682305308, -0.00357227911407498, 0.0812964125657623,
			0.162376323367035, 0.219208036545498, 0.239515902054602,
			0.219208036545498, 0.162376323367036, 0.0812964125657624,
			-0.00357227911407481, -0.0635865682305312, -0.0619195046439628,
			0.0464396284829722
	};
//    /* buff 15, order 2 */ {-0.0705882352941176, -0.0117647058823529, 0.0380090497737557,
//    		0.0787330316742082, 0.110407239819005, 0.133031674208145,
//			0.146606334841629, 0.151131221719457, 0.146606334841629,
//			0.133031674208145, 0.110407239819005, 0.0787330316742082,
//			0.0380090497737557, -0.0117647058823529, -0.0705882352941176
//	};

//	/* buff 11, order 6 */ {-0.0115178938708348, 0.0662278897573007,
//			-0.126696832579184, 0.0115178938708339, 0.322501028383381,
//			0.475935828877006, 0.322501028383382, 0.0115178938708344,
//			-0.126696832579186, 0.0662278897573020, -0.0115178938708351
//	};

//	/* buff 11, order 2 */ { -0.0839160839160839, 0.0209790209790211,
//				0.102564102564103, 0.160839160839161, 0.195804195804196,
//				0.207459207459207, 0.195804195804196, 0.160839160839161,
//				0.102564102564103, 0.0209790209790210, -0.0839160839160838};

	DataBuffer<floatUnion> speedBuffer;
	floatUnion tempSpeed;

	floatUnion speed;
#ifdef SPEED_IN_RADIANS
	int32Union distance;
#else
	floatUnion distance;
#endif
	uint8_t numberOfGoOnChecks = DEFAULT_NUM_OF_CHECKS;
	status encoderState = idle_stat;
	filterType filter = movingMean;

	bool signalZinitialized = false;

	bool checkIfMoveMade();
	bool checkIfOverflow();
	void calcSpeed();
	uint16_t getAbsoluteZsensorValue();

public:
	Encoder();
	virtual ~Encoder();

	void initialize(TIM_HandleTypeDef *htim);
	void initialize(TIM_HandleTypeDef *htim, uint16_t InterruptZSignal);
	void encoderIteration();
	bool zInterruptHandler(uint16_t *GPIO_Pin);
	int16_t checkEncoderErrorSize();


	uint8_t getDataInArray(uint8_t *dataBuffer);
};

#endif /* ENCODER_H_ */
