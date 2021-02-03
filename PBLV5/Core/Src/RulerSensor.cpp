#include "RulerSensor.h"
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST 0x0029
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_SECOND 0x002A
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_THIRD 0x002B
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FOURTH 0x002C

RulerSensor::RulerSensor(uint8_t buffersSize):pololuBuffer(buffersSize){
	pololuSevenBitAddresses[0] = POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST;
	pololuSevenBitAddresses[1] = POLOLU_SENSOR_ADDRESS_SEVEN_BIT_SECOND;
	pololuSevenBitAddresses[2] = POLOLU_SENSOR_ADDRESS_SEVEN_BIT_THIRD;
	pololuSevenBitAddresses[3] = POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FOURTH;

	#ifdef POLOLU
	SENSORS_COUNT = 1;

/*	for(uint8_t i = 1; i < SENSORS_COUNT; i++){
		rulerSensorsWriteAddresses[i] = convertSevenBitAddressToWriteAddress(pololuSevenBitAddresses[i]);
		rulerSensorsReadAddresses[i] = convertSevenBitAddressToReadAddress(pololuSevenBitAddresses[i]);
	}*/

#else
	SENSORS_COUNT = 4;
#endif
	// TODO Auto-generated constructor stub

}

RulerSensor::~RulerSensor() {
	// TODO Auto-generated destructor stub
}

void RulerSensor::initializeI2C_Sensors(I2C_HandleTypeDef *hi2c)
{
	i2cHandle = hi2c;
	//initialize internal addresses values
	configurePololu(hi2c, 0x0000, 0x00);

}

void RulerSensor::initializeSPI_Sensors(SPI_HandleTypeDef *hspi)
{

}

void RulerSensor::addToBuffer(DataBuffer<IMUData> &buffer, uint32_t timeStamp, uint8_t size)
{
	IMUData measurement(rawData, timeStamp, size);
	buffer.put(measurement);
}

void RulerSensor::pullPololuData(I2C_HandleTypeDef *hi2c, uint8_t accDeviceAddr, uint16_t registerAddr, uint8_t size)
{
//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
//	{
	//2.     Check bit 0 of RESULT__RANGE_STATUS {0x4d} is set.
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, POLOLU_RESULT_RANGE_STATUS_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				dataTimeStamp = HAL_GetTick();
			}

		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, 0x064, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				dataTimeStamp = HAL_GetTick();
			}

	if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, RESULT__INTERRUPT_STATUS_GPIO, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
	{
		uint8_t temp = rawData[0] & 0b00000111;
			if (temp == 4){//It means -> New Sample Ready threshold event
			//czytanie wartosci dopiero jak jest 4 na powyzszym
			if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, RESULT__RANGE_VAL, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK){
				//jak dostane to czyszcenie
				rawData[0] = 0x07;
				/*
				 * int_clear_sig: Interrupt clear bits. Writing a 1 to each bit will clear the intended interrupt.
				 * Bit [0] - Clear Range Int
				 * Bit [1] - Clear ALS Int
				 * Bit [2] - Clear Error Int.
				 */
				if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, SYSTEM__INTERRUPT_CLEAR, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK){
					rawData[11]=0x22;
				}

			}
		}
	}
	//	}

}

void RulerSensor::pullDataFromSensorsI2C(I2C_HandleTypeDef *hi2c)
{
	if(!readingInProgress)
	{
	#ifdef POLOLU

		pullPololuData(hi2c, POLOLU_READ_ADDRESS, POLOLU_HISTORICAL_DATA_ADDRESS, 2);//tutaj adres odpowiedniego rejestru do pobierania danych

	#else
		pullSparkfunData(hi2c, ACC_SENS_ADDR, ACC_DATA | ACC_MULTIBYTE_READ,	ACC_DATA_SIZE);
	#endif
	}
}

void RulerSensor::writeI2C(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr , uint16_t *sensorRegAddr, uint8_t *regValue)
{
#ifdef POLOLU
	HAL_I2C_Mem_Write(hi2c, sensorAddr, *sensorRegAddr, POLOLU_REGISTER_ADDRESS_SIZE, regValue, 1, 1);
#else
	//todo: sparkfun
	//writeI2C(hi2c, ACC_SENS_ADDR, &accRegAddr, &regValue);
#endif
}

void RulerSensor::configurePololu(I2C_HandleTypeDef *hi2c, uint16_t accRegAddr, uint8_t regValue)
{
#ifdef POLOLU
//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
//	{
	//APP NOTE
	rawData[0] = 0x01;
	writePololu(hi2c, 0x0207, rawData);
	writePololu(hi2c, 0x0208, rawData);
	rawData[0] = 0x00;
	writePololu(hi2c, 0x0096, rawData);
	rawData[0] = 0xfd;
	writePololu(hi2c, 0x0097, rawData);
	rawData[0] = 0x01;
	writePololu(hi2c, 0x00e3, rawData);
	rawData[0] = 0x03;
	writePololu(hi2c, 0x00e4, rawData);
	rawData[0] = 0x02;
	writePololu(hi2c, 0x00e5, rawData);
	rawData[0] = 0x01;
	writePololu(hi2c, 0x00e6, rawData);
	rawData[0] = 0x03;
	writePololu(hi2c, 0x00e7, rawData);
	rawData[0] = 0x02;
	writePololu(hi2c, 0x00f5, rawData);
	rawData[0] = 0x05;
	writePololu(hi2c, 0x00d9, rawData);
	rawData[0] = 0xce;
	writePololu(hi2c, 0x00db, rawData);
	rawData[0] = 0x03;
	writePololu(hi2c, 0x00dc, rawData);
	rawData[0] = 0xf8;
	writePololu(hi2c, 0x00dd, rawData);
	rawData[0] = 0x00;
	writePololu(hi2c, 0x009f, rawData);
	rawData[0] = 0x3c;
	writePololu(hi2c, 0x00a3, rawData);
	rawData[0] = 0x00;
	writePololu(hi2c, 0x00b7, rawData);
	rawData[0] = 0x03c;
	writePololu(hi2c, 0x00bb, rawData);
	rawData[0] = 0x09;
	writePololu(hi2c, 0x00b2, rawData);
	rawData[0] = 0x09;
	writePololu(hi2c, 0x00ca, rawData);
	rawData[0] = 0x01;
	writePololu(hi2c, 0x0198, rawData);
	rawData[0] = 0x017;
	writePololu(hi2c, 0x01b0, rawData);
	rawData[0] = 0x00;
	writePololu(hi2c, 0x01ad, rawData);
	rawData[0] = 0x05;
	writePololu(hi2c, 0x00ff, rawData);
	rawData[0] = 0x05;
	writePololu(hi2c, 0x0100, rawData);
	rawData[0] = 0x05;
	writePololu(hi2c, 0x0199, rawData);
	rawData[0] = 0x1b;
	writePololu(hi2c, 0x01a6, rawData);
	rawData[0] = 0x3e;
	writePololu(hi2c, 0x01ac, rawData);
	rawData[0] = 0x1f;
	writePololu(hi2c, 0x01a7, rawData);
	rawData[0] = 0x00;
	writePololu(hi2c, 0x0030, rawData);
	//private registers

	//
	rawData[0] = SYSTEM__MODE_GPIO0_VALUE;
	writePololu(hi2c, SYSTEM__MODE_GPIO0_ADDRESS, rawData, 1);
		//1000: GPIO Interrupt output

	rawData[0] = READOUT__AVERAGING_SAMPLE_PERIOD_VALUE;
	writePololu(hi2c, READOUT__AVERAGING_SAMPLE_PERIOD, rawData, 1);
		// Set the averaging sample period
		// (compromise between lower noise and
		// increased execution time)

	rawData[0] = 0x46;
	writePololu(hi2c, 0x03f, rawData, 1);
	// Sets the light and dark gain (upper
	// nibble). Dark gain should not be
	// changed.

	rawData[0] = 0xff;
	writePololu(hi2c, 0x031, rawData, 1);
	// sets the # of range measurements after
	// which auto calibration of system is
	// performed
	rawData[0] = 0x63;
	writePololu(hi2c, 0x041, rawData);
	// Set ALS integration time to 100ms
	rawData[0] = 0x01;
	writePololu(hi2c, 0x02e, rawData);
	// of the ranging sensor
	//Optional: Public registers - See data sheet for more detail
	rawData[0] = 0x09;
	writePololu(hi2c, 0x01b, rawData);
	// period to 100ms
	rawData[0] = 0x31;
	writePololu(hi2c, 0x03e, rawData);
	rawData[0] = 0x24;
	writePololu(hi2c, 0x014, rawData);
	//system fresh out reset
	rawData[0] = 0x00;
	writePololu(hi2c, 0x016, rawData);




		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, POLOLU_SYSRANGE_START_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
	//		rawData[0] = rawData[0] | POLOLU_SYSRANGE_START_RESET_VALUE;
			rawData[0] = rawData[0] | POLOLU_SYSRANGE_START_CONTINOUS_MODE_START_VALUE;
			//przedostatni i ostatni bit na 1 bo
			//1: Ranging Mode Continuous
			//1: Start measurement
				if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, POLOLU_SYSRANGE_START_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
				{
					rawData[15] = rawData[0];
				}
			}

		rawData[0] = 0xFF;

		//get Maximum time to run measurement in Ranging modes
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, SYSRANGE_MAX_CONVERGENCE_TIME, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
		{
			rawData[0] = rawData[0] & 0b00111111;
			rawData[0] = rawData[0] | 0x31;
			if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, SYSRANGE_MAX_CONVERGENCE_TIME, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				rawData[14] = 0xf8;
			}
		}

		//The internal readout averaging sample period can be adjusted from 0 to 255.
		rawData[0] = 0x30;
		if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, READOUT__AVERAGING_SAMPLE_PERIOD, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
		{
			rawData[14] = 0xF1;
		}
//	}

	//na 0x212 wpisac 7bitowy adres dla kazdego z osobna
#else
	writeI2C(hi2c, ACC_SENS_ADDR, &accRegAddr, &regValue);
#endif
}
void RulerSensor::writePololu(I2C_HandleTypeDef *hi2c, uint16_t address, uint8_t *value)
{
	if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, address, POLOLU_REGISTER_ADDRESS_SIZE, value, 1, 1) == HAL_OK){

	}
}

 void RulerSensor::writePololu(I2C_HandleTypeDef *hi2c, uint16_t address, uint8_t *value, uint8_t size)
{
	if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, address, POLOLU_REGISTER_ADDRESS_SIZE, value, size, 1) == HAL_OK){

	}
}


uint16_t RulerSensor::getBufferDataInArray(DataBuffer<IMUData> &buffer, uint8_t *dataBuffer)
{
	readingInProgress = 1;
	uint8_t numberOfElements = buffer.size();
	if(!numberOfElements)
	{
		readingInProgress = 0;
		return 0;
	}
	IMUData tempData = buffer.get();
	uint8_t ptrToArrayData[10];
	uint8_t numberOfBytesToCopy = tempData.getDataInArray(ptrToArrayData);
	std::unique_ptr<uint8_t[]> tempBuffer = std::make_unique<uint8_t[]>(numberOfElements * numberOfBytesToCopy);

	std::copy_n(ptrToArrayData, numberOfBytesToCopy, tempBuffer.get());

	for (uint16_t i = 1; i < numberOfElements; i++)
	{
		tempData = buffer.get();
		numberOfBytesToCopy = tempData.getDataInArray(ptrToArrayData);
		std::copy_n(ptrToArrayData, numberOfBytesToCopy, tempBuffer.get() + i * numberOfBytesToCopy);
	}

	std::move(tempBuffer.get(), tempBuffer.get() + numberOfElements * numberOfBytesToCopy, dataBuffer);

	readingInProgress = 0;
	return numberOfElements * numberOfBytesToCopy;
}

uint16_t RulerSensor::getPololuData(uint8_t *dataBuffer)
{
	return getBufferDataInArray(pololuBuffer, dataBuffer);
}

POLOLU_DEVICE_STATUS RulerSensor::getDeviceStatus(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr)
{
	if(HAL_I2C_Mem_Read(hi2c, sensorAddr, POLOLU_RESULT_RANGE_STATUS_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
	{
		if((rawData[0] & 0x01) == 0x01)
		{
			return DEVICE_READY;
		}
		return DEVICE_NOT_READY;
	}
	return DEVICE_READ_ERROR;
}

void RulerSensor::startMeasurement(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr, uint8_t *regValue){
	if(HAL_I2C_Mem_Read(hi2c, sensorAddr, POLOLU_RESULT_RANGE_STATUS_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
	{

	}
}

uint16_t RulerSensor::convertSevenBitAddressToWriteAddress(uint16_t sevenBitAddress){
	return (sevenBitAddress<<1);
}

uint16_t RulerSensor::convertSevenBitAddressToReadAddress(uint16_t sevenBitAddress){
	return (convertSevenBitAddressToWriteAddress(sevenBitAddress) | 0x1);
}







