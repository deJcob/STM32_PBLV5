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
//		pullPololuData(hi2c, POLOLU_READ_ADDRESS, POLOLU_HISTORICAL_DATA_ADDRESS, 16);//tutaj adres odpowiedniego rejestru do pobierania danych
//		pullPololuData(hi2c, POLOLU_READ_ADDRESS, POLOLU_RESULT_ALS_ADDRESS, 2);
//		pullPololuData(hi2c, POLOLU_READ_ADDRESS, POLOLU_SYSTEM_HISTORY_CONTROL_ADDRESS, 1);

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

		//history buffer init
		rawData[0] = 0x01;
			if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, POLOLU_SYSTEM_HISTORY_CONTROL_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				rawData[12] = rawData[0];
				rawData[0] = rawData[0]& 0b11111000;
//				rawData[0] = rawData[0] | 0x05; //added clear buffer command to write
				rawData[0] = rawData[0] | 0x00; //disable buffering

				if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, POLOLU_SYSTEM_HISTORY_CONTROL_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
				{
					rawData[0] = 0x12;
				}
			}

			//default value on: delay between measurements in Ranging continuous mode.
		rawData[0] = 0xFF;
		if(HAL_I2C_Mem_Write(hi2c, POLOLU_WRITE_ADDRESS, POLOLU_SYSRANGE__INTERMEASUREMENT_PERIOD_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
		{
			rawData[14] = 0xFA;
		}

		//get Maximum time to run measurement in Ranging modes
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, SYSRANGE_MAX_CONVERGENCE_TIME, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
		{
			rawData[0] = rawData[0] & 0b11111111;
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

void RulerSensor::getHistoryDataBuffer(){
		uint8_t mesTemp = 0x0;
		rawData[0] = 0x08;
		//read historical data
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, POLOLU_HISTORICAL_DATA_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, size, 1) == HAL_OK)
			{
				dataTimeStamp = HAL_GetTick();
				mesTemp = rawData[0];
			}
		//error status
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, POLOLU_RESULT_RANGE_STATUS_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				dataTimeStamp = HAL_GetTick();

			}
		//if another error than 1100: Raw Ranging Algo Underflow
		if (rawData[0] & 0b11110000 != 0x11000000)
			{
				rawData[0] = mesTemp;
			}

		//raw_range_value
		if(HAL_I2C_Mem_Read(hi2c, POLOLU_READ_ADDRESS, 0x064, POLOLU_REGISTER_ADDRESS_SIZE, rawData, 1, 1) == HAL_OK)
			{
				dataTimeStamp = HAL_GetTick();
			}

}

uint16_t RulerSensor::convertSevenBitAddressToWriteAddress(uint16_t sevenBitAddress){
	return (sevenBitAddress<<1);
}

uint16_t RulerSensor::convertSevenBitAddressToReadAddress(uint16_t sevenBitAddress){
	return (convertSevenBitAddressToWriteAddress(sevenBitAddress) | 0x1);
}







