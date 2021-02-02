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

	uint8_t SENSORS_COUNT = 1;
 	uint8_t rulerSensorsData[8];
 	uint16_t pololuSevenBitAddresses[8];
 	uint16_t rulerSensorsWriteAddresses[8];
 	uint16_t rulerSensorsReadAddresses[8];

	uint8_t rawData[16];
	bool readingInProgress = 0;
	uint32_t dataTimeStamp = 0;

	void pullPololuData(I2C_HandleTypeDef *hi2c, uint8_t accDeviceAddr, uint16_t registerAddr, uint8_t size);

	void addToBuffer(DataBuffer<IMUData> &buffer, uint32_t timeStamp, uint8_t size);

	void writeSPI(SPI_HandleTypeDef *hspi, uint8_t *sensorRegAddr, uint8_t *regValue);
	void writeI2C(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr , uint16_t *sensorRegAddr, uint8_t *regValue);

	void configurePololu(I2C_HandleTypeDef *hi2c, uint16_t accRegAddr, uint8_t regValue);

	uint16_t getBufferDataInArray(DataBuffer<IMUData> &buffer, uint8_t *dataBuffer);
	POLOLU_DEVICE_STATUS getDeviceStatus(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr);
	void startMeasurement(I2C_HandleTypeDef *hi2c, uint8_t sensorAddr, uint8_t *regValue);
	void getHistoryDataBuffer();
	uint16_t convertSevenBitAddressToWriteAddress(uint16_t sevenBitAddress);
	uint16_t convertSevenBitAddressToReadAddress(uint16_t sevenBitAddress);

public:
	RulerSensor(uint8_t buffersSize);
	virtual ~RulerSensor();

	void initializeI2C_Sensors(I2C_HandleTypeDef *hi2c);
	void initializeSPI_Sensors(SPI_HandleTypeDef *hspi);

	void pullDataFromSensorsI2C(I2C_HandleTypeDef *hi2c);
	void pullDataFromSensorsSPI(SPI_HandleTypeDef *hspi);

	uint16_t getPololuData(uint8_t *dataBuffer);
};

#endif /* IMUSENSOR_H_ */
