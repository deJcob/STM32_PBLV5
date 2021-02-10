#ifndef RULERSENSOR_H_
#define RULERSENSOR_H_

#include "main.h"
#include "DataBuffer.h"
#include "IMUData.h"
#include "PololuDefines.h"

#define POLOLU
//#define SPARKFUN


class RulerSensor {

	I2C_HandleTypeDef *i2cHandle;

	DataBuffer<IMUData> pololuBuffer;

	uint8_t SENSORS_COUNT;
 	uint8_t rulerSensorsData[8];
 	uint16_t writeAddresses[8];
 	uint16_t readAddresses[8];
 	uint16_t errorCounter[8];

	uint8_t rawData[8];
	uint8_t readData[8];
	uint8_t writeData[8];
	volatile uint8_t errorCode[8];
	uint8_t temporaryByte = 0;
	bool readingInProgress = 0;
	uint32_t dataTimeStamp = 0;
	uint32_t writeCounter = 0;
	uint32_t readCounter = 0;

	void pullPololuData(I2C_HandleTypeDef *hi2c, uint8_t i);

	void writeI2C(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr , uint16_t *sensorRegAddr, uint8_t *regValue);

	void configurePololu(I2C_HandleTypeDef *hi2c, uint8_t sensorIndex);

	POLOLU_DEVICE_STATUS getDeviceStatus(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr);
	void startMeasurement(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr, uint8_t *regValue);
	void writeBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorWriteAddress);
	void writePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint8_t size, uint16_t sensorWriteAddress);
	bool writeExpanderToReadSensor(I2C_HandleTypeDef *hi2c, uint8_t sensorIndex);
	bool readBytePololu(I2C_HandleTypeDef *hi2c, uint16_t registerAddress, uint8_t *value, uint16_t sensorReadAddress);
	uint16_t convertSevenBitAddressToWriteAddress(uint16_t sevenBitAddress);
	uint16_t convertSevenBitAddressToReadAddress(uint16_t sevenBitAddress);

public:
	RulerSensor(uint8_t buffersSize);
	virtual ~RulerSensor();

	void initializeI2C_Sensors(I2C_HandleTypeDef *hi2c);

	void pullDataFromSensorsI2C(I2C_HandleTypeDef *hi2c);

	uint16_t getPololuData(uint8_t *dataBuffer);
};

#endif /* IMUSENSOR_H_ */
