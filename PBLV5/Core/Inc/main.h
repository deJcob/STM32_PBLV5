/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define USER_Btn_Pin GPIO_PIN_13
#define USER_Btn_GPIO_Port GPIOC
#define USER_Btn_EXTI_IRQn EXTI15_10_IRQn
#define I2C_RULLER_SDA_Pin GPIO_PIN_0
#define I2C_RULLER_SDA_GPIO_Port GPIOF
#define I2C_RULLER_SCL_Pin GPIO_PIN_1
#define I2C_RULLER_SCL_GPIO_Port GPIOF
#define BRIDGE_B1_Pin GPIO_PIN_3
#define BRIDGE_B1_GPIO_Port GPIOF
#define BRIDGE_A2_Pin GPIO_PIN_5
#define BRIDGE_A2_GPIO_Port GPIOF
#define TESTOWA_Pin GPIO_PIN_9
#define TESTOWA_GPIO_Port GPIOF
#define BRIDGE_A1_Pin GPIO_PIN_10
#define BRIDGE_A1_GPIO_Port GPIOF
#define MCO_Pin GPIO_PIN_0
#define MCO_GPIO_Port GPIOH
#define BRIDGE_B2_Pin GPIO_PIN_0
#define BRIDGE_B2_GPIO_Port GPIOC
#define RMII_MDC_Pin GPIO_PIN_1
#define RMII_MDC_GPIO_Port GPIOC
#define CURRENT_MEASUREMENT1_Pin GPIO_PIN_0
#define CURRENT_MEASUREMENT1_GPIO_Port GPIOA
#define RMII_REF_CLK_Pin GPIO_PIN_1
#define RMII_REF_CLK_GPIO_Port GPIOA
#define RMII_MDIO_Pin GPIO_PIN_2
#define RMII_MDIO_GPIO_Port GPIOA
#define CURRENT_MEASUREMENT2_Pin GPIO_PIN_4
#define CURRENT_MEASUREMENT2_GPIO_Port GPIOA
#define RMII_CRS_DV_Pin GPIO_PIN_7
#define RMII_CRS_DV_GPIO_Port GPIOA
#define RMII_RXD0_Pin GPIO_PIN_4
#define RMII_RXD0_GPIO_Port GPIOC
#define RMII_RXD1_Pin GPIO_PIN_5
#define RMII_RXD1_GPIO_Port GPIOC
#define LD1_Pin GPIO_PIN_0
#define LD1_GPIO_Port GPIOB
#define ENCODER1_Z_Pin GPIO_PIN_11
#define ENCODER1_Z_GPIO_Port GPIOF
#define ENCODER1_Z_EXTI_IRQn EXTI15_10_IRQn
#define ENCODER2_Z_Pin GPIO_PIN_12
#define ENCODER2_Z_GPIO_Port GPIOE
#define ENCODER2_Z_EXTI_IRQn EXTI15_10_IRQn
#define RMII_TXD1_Pin GPIO_PIN_13
#define RMII_TXD1_GPIO_Port GPIOB
#define LD3_Pin GPIO_PIN_14
#define LD3_GPIO_Port GPIOB
#define STLK_RX_Pin GPIO_PIN_8
#define STLK_RX_GPIO_Port GPIOD
#define STLK_TX_Pin GPIO_PIN_9
#define STLK_TX_GPIO_Port GPIOD
#define USB_PowerSwitchOn_Pin GPIO_PIN_6
#define USB_PowerSwitchOn_GPIO_Port GPIOG
#define USB_OverCurrent_Pin GPIO_PIN_7
#define USB_OverCurrent_GPIO_Port GPIOG
#define USB_SOF_Pin GPIO_PIN_8
#define USB_SOF_GPIO_Port GPIOA
#define USB_VBUS_Pin GPIO_PIN_9
#define USB_VBUS_GPIO_Port GPIOA
#define USB_ID_Pin GPIO_PIN_10
#define USB_ID_GPIO_Port GPIOA
#define USB_DM_Pin GPIO_PIN_11
#define USB_DM_GPIO_Port GPIOA
#define USB_DP_Pin GPIO_PIN_12
#define USB_DP_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define UART_RFID_TX_Pin GPIO_PIN_10
#define UART_RFID_TX_GPIO_Port GPIOC
#define UART_RFID_RX_Pin GPIO_PIN_11
#define UART_RFID_RX_GPIO_Port GPIOC
#define UART_ULTRASOUND_TX_Pin GPIO_PIN_12
#define UART_ULTRASOUND_TX_GPIO_Port GPIOC
#define UART_ULTRASOUND_RX_Pin GPIO_PIN_2
#define UART_ULTRASOUND_RX_GPIO_Port GPIOD
#define USART_GPS_TX_Pin GPIO_PIN_5
#define USART_GPS_TX_GPIO_Port GPIOD
#define USART_GPS_RX_Pin GPIO_PIN_6
#define USART_GPS_RX_GPIO_Port GPIOD
#define GPIO_ELECTROMAGNET_Pin GPIO_PIN_7
#define GPIO_ELECTROMAGNET_GPIO_Port GPIOD
#define USART_MLIDAR_RX_Pin GPIO_PIN_9
#define USART_MLIDAR_RX_GPIO_Port GPIOG
#define RMII_TX_EN_Pin GPIO_PIN_11
#define RMII_TX_EN_GPIO_Port GPIOG
#define RMII_TXD0_Pin GPIO_PIN_13
#define RMII_TXD0_GPIO_Port GPIOG
#define USART_MLIDAR_TX_Pin GPIO_PIN_14
#define USART_MLIDAR_TX_GPIO_Port GPIOG
#define SWO_Pin GPIO_PIN_3
#define SWO_GPIO_Port GPIOB
#define LD2_Pin GPIO_PIN_7
#define LD2_GPIO_Port GPIOB
#define I2C_SENSOR_SCL_Pin GPIO_PIN_8
#define I2C_SENSOR_SCL_GPIO_Port GPIOB
#define I2C_SENSOR_SDA_Pin GPIO_PIN_9
#define I2C_SENSOR_SDA_GPIO_Port GPIOB
#define SPI1_SS_Pin GPIO_PIN_1
#define SPI1_SS_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
