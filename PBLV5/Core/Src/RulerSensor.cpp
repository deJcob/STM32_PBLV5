#include "RulerSensor.h"
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST 0x0029
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_SECOND 0x002A
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_THIRD 0x002B
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FOURTH 0x002C

RulerSensor::RulerSensor(uint8_t buffersSize):pololuBuffer(buffersSize){

	#ifdef POLOLU
	SENSORS_COUNT = 1;

	for(uint8_t i = 0; i < SENSORS_COUNT; i++){
		rulerSensorsWriteAddresses[i] = convertSevenBitAddressToWriteAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST + i);
		rulerSensorsReadAddresses[i] = convertSevenBitAddressToReadAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST + i);
	}

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
	for(uint8_t i = 0; i < SENSORS_COUNT; i++){
		configurePololu(hi2c, i);
	}

}

void RulerSensor::addToBuffer(DataBuffer<IMUData> &buffer, uint32_t timeStamp, uint8_t size)
{
//	IMUData measurement(rawData, timeStamp, size);
//	buffer.put(measurement);
}

void RulerSensor::pullPololuData(I2C_HandleTypeDef *hi2c, uint8_t i)
{
//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
//	{

		if(readBytePololu(hi2c, POLOLU_RESULT_RANGE_STATUS_ADDRESS, readData, rulerSensorsReadAddresses[i]))
		{
			errorCode[i] = readData[i];
		}

	if(readBytePololu(hi2c, RESULT__INTERRUPT_STATUS_GPIO, readData, rulerSensorsReadAddresses[i]))
	{
		temporaryByte = readData[0];
		temporaryByte = temporaryByte & 0b00000111;
			if (temporaryByte == 4){//It means -> New Sample Ready threshold event
			//czytanie wartosci dopiero jak jest 4 na powyzszym
			if(readBytePololu(hi2c, RESULT__RANGE_VAL, readData, rulerSensorsReadAddresses[i])){
				//jak dostane to czyszcenie
				rawData[i] = readData[0];
				writeData[0] = 0x07;
				/*
				 * int_clear_sig: Interrupt clear bits. Writing a 1 to each bit will clear the intended interrupt.
				 * Bit [0] - Clear Range Int
				 * Bit [1] - Clear ALS Int
				 * Bit [2] - Clear Error Int.
				 */

				//clear interrupt status
				writeBytePololu(hi2c, SYSTEM__INTERRUPT_CLEAR, writeData, rulerSensorsWriteAddresses[i]);

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
		for(uint8_t i = 0; i < SENSORS_COUNT; i++){
			pullPololuData(hi2c, i);
		}
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

void RulerSensor::configureSensors(I2C_HandleTypeDef *hi2c)
{
#ifdef POLOLU
	for(uint8_t i = 0; i < SENSORS_COUNT; i++){
		configurePololu(hi2c, i);
	}
	//na 0x212 wpisac 7bitowy adres dla kazdego z osobna
#else
	writeI2C(hi2c, ACC_SENS_ADDR, &accRegAddr, &regValue);
#endif
}

void RulerSensor::configurePololu(I2C_HandleTypeDef *hi2c, uint8_t i)
{
	//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
	//	{
		//APP NOTE
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x0207, writeData, rulerSensorsWriteAddresses[i]);
		writeBytePololu(hi2c, 0x0208, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x0096, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0xfd;
		writeBytePololu(hi2c, 0x0097, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x00e3, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00e4, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x02;
		writeBytePololu(hi2c, 0x00e5, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x00e6, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00e7, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x02;
		writeBytePololu(hi2c, 0x00f5, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x00d9, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0xce;
		writeBytePololu(hi2c, 0x00db, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00dc, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0xf8;
		writeBytePololu(hi2c, 0x00dd, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x009f, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x3c;
		writeBytePololu(hi2c, 0x00a3, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x00b7, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x03c;
		writeBytePololu(hi2c, 0x00bb, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x00b2, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x00ca, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x0198, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x017;
		writeBytePololu(hi2c, 0x01b0, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x01ad, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x00ff, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x0100, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x0199, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x1b;
		writeBytePololu(hi2c, 0x01a6, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x3e;
		writeBytePololu(hi2c, 0x01ac, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x1f;
		writeBytePololu(hi2c, 0x01a7, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x0030, writeData, rulerSensorsWriteAddresses[i]);
		//private registers

		//public registers
		writeData[0] = SYSTEM__MODE_GPIO0_VALUE;
		writeBytePololu(hi2c, SYSTEM__MODE_GPIO0_ADDRESS, writeData, rulerSensorsWriteAddresses[i]);
			//1000: GPIO Interrupt output

		writeData[0] = READOUT__AVERAGING_SAMPLE_PERIOD_VALUE;
		writeBytePololu(hi2c, READOUT__AVERAGING_SAMPLE_PERIOD, writeData, rulerSensorsWriteAddresses[i]);
			// Set the averaging sample period
			// (compromise between lower noise and
			// increased execution time)

		writeData[0] = 0x46;
		writeBytePololu(hi2c, 0x03f, writeData, rulerSensorsWriteAddresses[i]);
		// Sets the light and dark gain (upper
		// nibble). Dark gain should not be
		// changed.

		writeData[0] = 0xff;
		writeBytePololu(hi2c, 0x031, writeData, rulerSensorsWriteAddresses[i]);
		// sets the # of range measurements after
		// which auto calibration of system is
		// performed
		writeData[0] = 0x63;
		writeBytePololu(hi2c, 0x041, writeData, rulerSensorsWriteAddresses[i]);
		// Set ALS integration time to 100ms
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x02e, writeData, rulerSensorsWriteAddresses[i]);
		// of the ranging sensor
		//Optional: Public registers - See data sheet for more detail
		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x01b, writeData, rulerSensorsWriteAddresses[i]);
		// period to 100ms
		writeData[0] = 0x31;
		writeBytePololu(hi2c, 0x03e, writeData, rulerSensorsWriteAddresses[i]);
		writeData[0] = 0x24;
		writeBytePololu(hi2c, 0x014, writeData, rulerSensorsWriteAddresses[i]);

			if(readBytePololu(hi2c, POLOLU_SYSRANGE_START_ADDRESS, readData, rulerSensorsReadAddresses[i]))
				{
				temporaryByte = readData[0] | POLOLU_SYSRANGE_START_CONTINOUS_MODE_START_VALUE;
				writeData[0] = temporaryByte;
				writeBytePololu(hi2c, POLOLU_SYSRANGE_START_ADDRESS, writeData, rulerSensorsWriteAddresses[i]);
				}

			//get Maximum time to run measurement in Ranging modes
			if(readBytePololu(hi2c, SYSRANGE_MAX_CONVERGENCE_TIME, readData, rulerSensorsReadAddresses[i]))
			{
				temporaryByte = readData[0] & 0b00111111;
				writeData[0] = temporaryByte | 0x31;
				writeBytePololu(hi2c, SYSRANGE_MAX_CONVERGENCE_TIME, writeData, rulerSensorsWriteAddresses[i]);
			}

			//The internal readout averaging sample period can be adjusted from 0 to 255.
			writeData[0] = 0x30;
			writeBytePololu(hi2c, READOUT__AVERAGING_SAMPLE_PERIOD, writeData, rulerSensorsWriteAddresses[i]);

			//system fresh out reset
			writeData[0] = 0x00;
			writeBytePololu(hi2c, 0x016, writeData, rulerSensorsWriteAddresses[i]);
			//	}

}
void RulerSensor::writeBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorWriteAddress)
{
	if(HAL_I2C_Mem_Write(hi2c, sensorWriteAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, 1, 1) == HAL_OK){

	}
}

 void RulerSensor::writePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint8_t size, uint16_t sensorWriteAddress)
{
	if(HAL_I2C_Mem_Write(hi2c, sensorWriteAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, size, 1) == HAL_OK){

	}
}

bool RulerSensor::readBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorReadAddress)
 {
		if(HAL_I2C_Mem_Read(hi2c, sensorReadAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, 1, 1) == HAL_OK)
		{
			return true;
		}
		else
		{
			return false;
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
	if(HAL_I2C_Mem_Read(hi2c, sensorAddr, POLOLU_RESULT_RANGE_STATUS_ADDRESS, POLOLU_REGISTER_ADDRESS_SIZE, regValue, 1, 1) == HAL_OK)
	{

	}
}

uint16_t RulerSensor::convertSevenBitAddressToWriteAddress(uint16_t sevenBitAddress){
	return (sevenBitAddress<<1);
}

uint16_t RulerSensor::convertSevenBitAddressToReadAddress(uint16_t sevenBitAddress){
	return (convertSevenBitAddressToWriteAddress(sevenBitAddress) | 0x1);
}







