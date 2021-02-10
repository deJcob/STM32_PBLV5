#include "RulerSensor.h"
#define POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST 0x0029

RulerSensor::RulerSensor(uint8_t buffersSize):pololuBuffer(buffersSize){

#ifdef POLOLU
	SENSORS_COUNT = 4;

	for(uint8_t i = 0; i < SENSORS_COUNT; i++)
	{
//		writeAddresses[i] = convertSevenBitAddressToWriteAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST + i);
//		readAddresses[i] = convertSevenBitAddressToReadAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST + i);
		errorCounter[i] = 0;
		sensorConfigured[i] = false;
		writeAddresses[i] = convertSevenBitAddressToWriteAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST);
		readAddresses[i] = convertSevenBitAddressToReadAddress(POLOLU_SENSOR_ADDRESS_SEVEN_BIT_FIRST);
	}
	//0x070 bit ktory chce czytac

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
	for (uint8_t i = 0; i < SENSORS_COUNT; i++)
	{
		if (!sensorConfigured[i] && writeExpanderToReadSensor(hi2c, i))
		{
			if (getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
			{
				configurePololu(hi2c, i);
				sensorConfigured[i] = true;
			}
		}
	}

}

void RulerSensor::pullPololuData(I2C_HandleTypeDef *hi2c, uint8_t i)
{
//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
//	{
	if (!sensorConfigured[i])
	{
		if (writeExpanderToReadSensor(hi2c, i)) // If wasnt configured yet we are trying to do it
		{
			if (getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
			{
				configurePololu(hi2c, i);
				sensorConfigured[i] = true;
			}
		}
		else
		{
			rawData[i] = 235;
			return;
		}
	}

	if(readBytePololu(hi2c, POLOLU_RESULT_RANGE_STATUS_ADDRESS, readData, readAddresses[i]))
	{
		errorCode[i] = readData[0] & 0xF0;
		if (errorCode[i] == 0b00010000 || // VCSEL Coninuity TEST
			errorCode[i] == 0b00100000 || // VCSEL Watchdog TEST
			errorCode[i] == 0b00110000 || // VCSEL Watchdog
			errorCode[i] == 0b01000000 || // PLL1 Lock
			errorCode[i] == 0b01010000)   // PLL2 Lock
		{
			errorCounter[i]++;
			if (errorCounter[i] > 5)
			{
				writeData[i] = 0x00;
				writeBytePololu(hi2c, 0x016, writeData, writeAddresses[i]); // System fresh out reset
				writeBytePololu(hi2c, 0x010, writeData, writeAddresses[i]); // Reseting GPIO0
				writeData[i] = 0x60;
				writeBytePololu(hi2c, 0x010, writeData, writeAddresses[i]);
				errorCounter[i] = 0;
			}
			rawData[i] = 225;

			return;
		}
	}

	if(readBytePololu(hi2c, RESULT__INTERRUPT_STATUS_GPIO, readData, readAddresses[i]))
	{
		temporaryByte = readData[0];
		temporaryByte &= 0b00000111;
		if (temporaryByte == POLOLU_NEW_SAMPLE_READY_VALUE) // It means -> New Sample Ready threshold event
		{
			// czytanie wartosci dopiero jak jest 4 na powyzszym
			if (readBytePololu(hi2c, RESULT__RANGE_VAL, readData, readAddresses[i]))
			{
//					if(readBytePololu(hi2c, POLOLU_I2C_SLAVE__DEVICE_ADDRESS, readData, readAddresses[i])){
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
				writeBytePololu(hi2c, SYSTEM__INTERRUPT_CLEAR, writeData, writeAddresses[i]);

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
			if(writeExpanderToReadSensor(hi2c, i))
			{
				pullPololuData(hi2c, i);
			}
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

void RulerSensor::configurePololu(I2C_HandleTypeDef *hi2c, uint8_t i)
{
	//	if(getDeviceStatus(hi2c, POLOLU_READ_ADDRESS) == DEVICE_READY)
	//	{
		//APP NOTE - private registers initialization
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x0207, writeData, writeAddresses[i]);
		writeBytePololu(hi2c, 0x0208, writeData, writeAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x0096, writeData, writeAddresses[i]);
		writeData[0] = 0xfd;
		writeBytePololu(hi2c, 0x0097, writeData, writeAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x00e3, writeData, writeAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00e4, writeData, writeAddresses[i]);
		writeData[0] = 0x02;
		writeBytePololu(hi2c, 0x00e5, writeData, writeAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x00e6, writeData, writeAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00e7, writeData, writeAddresses[i]);
		writeData[0] = 0x02;
		writeBytePololu(hi2c, 0x00f5, writeData, writeAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x00d9, writeData, writeAddresses[i]);
		writeData[0] = 0xce;
		writeBytePololu(hi2c, 0x00db, writeData, writeAddresses[i]);
		writeData[0] = 0x03;
		writeBytePololu(hi2c, 0x00dc, writeData, writeAddresses[i]);
		writeData[0] = 0xf8;
		writeBytePololu(hi2c, 0x00dd, writeData, writeAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x009f, writeData, writeAddresses[i]);
		writeData[0] = 0x3c;
		writeBytePololu(hi2c, 0x00a3, writeData, writeAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x00b7, writeData, writeAddresses[i]);
		writeData[0] = 0x03c;
		writeBytePololu(hi2c, 0x00bb, writeData, writeAddresses[i]);
		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x00b2, writeData, writeAddresses[i]);
		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x00ca, writeData, writeAddresses[i]);
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x0198, writeData, writeAddresses[i]);
		writeData[0] = 0x017;
		writeBytePololu(hi2c, 0x01b0, writeData, writeAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x01ad, writeData, writeAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x00ff, writeData, writeAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x0100, writeData, writeAddresses[i]);
		writeData[0] = 0x05;
		writeBytePololu(hi2c, 0x0199, writeData, writeAddresses[i]);
		writeData[0] = 0x1b;
		writeBytePololu(hi2c, 0x01a6, writeData, writeAddresses[i]);
		writeData[0] = 0x3e;
		writeBytePololu(hi2c, 0x01ac, writeData, writeAddresses[i]);
		writeData[0] = 0x1f;
		writeBytePololu(hi2c, 0x01a7, writeData, writeAddresses[i]);
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x0030, writeData, writeAddresses[i]);

		//public registers
		writeData[0] = SYSTEM__MODE_GPIO0_VALUE;
		//1000: GPIO Interrupt output
		writeBytePololu(hi2c, SYSTEM__MODE_GPIO0_ADDRESS, writeData, writeAddresses[i]);

		// Set the averaging sample period
		// (compromise between lower noise and
		// increased execution time)
		writeData[0] = READOUT__AVERAGING_SAMPLE_PERIOD_VALUE;
		writeBytePololu(hi2c, READOUT__AVERAGING_SAMPLE_PERIOD, writeData, writeAddresses[i]);

		// Sets the light and dark gain (upper
		// nibble). Dark gain should not be
		// changed.
		writeData[0] = 0x46;
		writeBytePololu(hi2c, 0x03f, writeData, writeAddresses[i]);

		// sets the # of range measurements after
		// which auto calibration of system is
		// performed
		writeData[0] = 0xff;
		writeBytePololu(hi2c, 0x031, writeData, writeAddresses[i]);

		// Set ALS integration time to 100ms
		writeData[0] = 0x63;
		writeBytePololu(hi2c, 0x041, writeData, writeAddresses[i]);

		// of the ranging sensor
		//Optional: Public registers - See data sheet for more detail
		writeData[0] = 0x01;
		writeBytePololu(hi2c, 0x02e, writeData, writeAddresses[i]);

		writeData[0] = 0x09;
		writeBytePololu(hi2c, 0x01b, writeData, writeAddresses[i]);

		// period to 100ms
		writeData[0] = 0x31;
		writeBytePololu(hi2c, 0x03e, writeData, writeAddresses[i]);
		writeData[0] = 0x24;
		writeBytePololu(hi2c, 0x014, writeData, writeAddresses[i]);

		if (readBytePololu(hi2c, POLOLU_SYSRANGE_START_ADDRESS, readData, readAddresses[i]))
		{
			temporaryByte = readData[0] | POLOLU_SYSRANGE_START_CONTINOUS_MODE_START_VALUE;
			writeData[0] = temporaryByte;
			writeBytePololu(hi2c, POLOLU_SYSRANGE_START_ADDRESS, writeData, writeAddresses[i]);
		}

		//get Maximum time to run measurement in Ranging modes
		if (readBytePololu(hi2c, SYSRANGE_MAX_CONVERGENCE_TIME, readData, readAddresses[i]))
		{
			temporaryByte = readData[0] & 0b00111111;
			writeData[0] = temporaryByte | 0x31;
			writeBytePololu(hi2c, SYSRANGE_MAX_CONVERGENCE_TIME, writeData, writeAddresses[i]);
		}

		//The internal readout averaging sample period can be adjusted from 0 to 255.
		writeData[0] = 0x30;
		writeBytePololu(hi2c, READOUT__AVERAGING_SAMPLE_PERIOD, writeData, writeAddresses[i]);

		//system fresh out reset
		writeData[0] = 0x00;
		writeBytePololu(hi2c, 0x016, writeData, writeAddresses[i]);
		//	}

			//address current sensor
//			if(readBytePololu(hi2c, POLOLU_I2C_SLAVE__DEVICE_ADDRESS, readData, readAddresses[i]))
//			{
//				temporaryByte = readData[0] & 0b10000000;
//				writeData[0] = temporaryByte | 0x2A;
//				writeData[0] = temporaryByte | 0x2B;
//				writeData[0] = temporaryByte | 0x2C;
//				writeBytePololu(hi2c, POLOLU_I2C_SLAVE__DEVICE_ADDRESS, writeData, writeAddresses[i]);
//			}

}
void RulerSensor::writeBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorWriteAddress)
{
	if(HAL_I2C_Mem_Write(hi2c, sensorWriteAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, 1, 1) == HAL_OK){
		writeCounter++;
	}
}

 void RulerSensor::writePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint8_t size, uint16_t sensorWriteAddress)
{
	if(HAL_I2C_Mem_Write(hi2c, sensorWriteAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, size, 1) == HAL_OK){

	}
}

bool RulerSensor::writeExpanderToReadSensor(I2C_HandleTypeDef *hi2c, uint8_t sensorIndex)
{
	writeData[0] = 0b00000001 << sensorIndex;
	uint8_t ekspanderAddr = EXPANDER_ADDRESS << 1;
	if(HAL_I2C_Mem_Write(hi2c, ekspanderAddr, 0x00, 1, writeData, 1, 1) == HAL_OK)
	{
		return true;
	}
	else
	{
		return false;
	}
}

bool RulerSensor::readBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorReadAddress)
 {
		if(HAL_I2C_Mem_Read(hi2c, sensorReadAddress, registerAddress, POLOLU_REGISTER_ADDRESS_SIZE, value, 1, 1) == HAL_OK)
		{
			readCounter++;
			return true;
		}
		else
		{
			return false;
		}
 }

uint16_t RulerSensor::getPololuData(uint8_t *dataBuffer)
{
	uint8_t dataToReturn[RULER_SENSOR_OBJECTDATAVOLUME];

	dataToReturn[0] = rawData[0];
	dataToReturn[1] = rawData[1];
	dataToReturn[2] = rawData[2];
	dataToReturn[3] = rawData[3];

	std::copy_n(dataToReturn, RULER_SENSOR_OBJECTDATAVOLUME, dataBuffer);

	return RULER_SENSOR_OBJECTDATAVOLUME;
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
