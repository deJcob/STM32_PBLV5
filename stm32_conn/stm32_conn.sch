EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 5
Title "STM32F7 based AGV-ROS module"
Date "2021-01-02"
Rev "7.1"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
$Comp
L MCU_ModuleV2:X-NUCLEO-IHM04A1 U3
U 1 1 5F91825A
P 13800 3150
F 0 "U3" H 13825 5265 50  0000 C CNN
F 1 "X-NUCLEO-IHM04A1" H 13825 5174 50  0000 C CNN
F 2 "" H 13900 3150 50  0001 C CNN
F 3 "" H 13900 3150 50  0001 C CNN
	1    13800 3150
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:X-NUCLEO-IKS01A1 U2
U 1 1 5F918337
P 7700 10050
F 0 "U2" H 7725 12165 50  0000 C CNN
F 1 "X-NUCLEO-IKS01A1" H 7725 12074 50  0000 C CNN
F 2 "" H 7800 10050 50  0001 C CNN
F 3 "" H 7800 10050 50  0001 C CNN
	1    7700 10050
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M3
U 1 1 5F91895D
P 14800 8150
F 0 "M3" H 14947 8146 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 14947 8055 50  0000 L CNN
F 2 "" H 14800 8060 50  0001 C CNN
F 3 "~" H 14800 8060 50  0001 C CNN
F 4 "XD-37GB520" H 14800 8150 50  0001 C CNN "Symbol"
	1    14800 8150
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M1
U 1 1 5F918D4A
P 14350 8150
F 0 "M1" H 14100 8150 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 13350 8050 50  0000 L CNN
F 2 "" H 14350 8060 50  0001 C CNN
F 3 "~" H 14350 8060 50  0001 C CNN
F 4 "XD-37GB520" H 14350 8150 50  0001 C CNN "Symbol"
	1    14350 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 8650 14800 8450
Text Label 13550 3500 3    50   ~ 0
A+
Text Label 13650 3500 3    50   ~ 0
A-
Text Label 13750 3500 3    50   ~ 0
B-
Text Label 13850 3500 3    50   ~ 0
B+
$Comp
L power:+12V #PWR017
U 1 1 5F91918F
P 14150 3650
F 0 "#PWR017" H 14150 3500 50  0001 C CNN
F 1 "+12V" H 14165 3823 50  0000 C CNN
F 2 "" H 14150 3650 50  0001 C CNN
F 3 "" H 14150 3650 50  0001 C CNN
	1    14150 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F91926E
P 13950 3650
F 0 "#PWR016" H 13950 3400 50  0001 C CNN
F 1 "GND" H 13955 3477 50  0000 C CNN
F 2 "" H 13950 3650 50  0001 C CNN
F 3 "" H 13950 3650 50  0001 C CNN
	1    13950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 3450 13950 3650
Wire Wire Line
	14050 3450 14050 3550
Wire Wire Line
	14050 3550 14150 3550
Wire Wire Line
	14150 3550 14150 3650
Wire Wire Line
	13550 3450 13550 4050
Wire Wire Line
	13650 3450 13650 4050
Entry Wire Line
	13750 3950 13850 4050
Entry Wire Line
	13850 3950 13950 4050
Entry Wire Line
	13650 4050 13750 4150
Entry Wire Line
	13550 4050 13650 4150
Entry Wire Line
	13850 3950 13950 4050
Wire Wire Line
	13850 3450 13850 3950
Wire Wire Line
	13750 3950 13750 3450
Text Label 14000 4150 0    50   ~ 0
RIGHT_MOTORS
Text Label 14000 4050 0    50   ~ 0
LEFT_MOTORS
Text Label 13000 7550 0    50   ~ 0
LEFT_MOTORS
Wire Wire Line
	14800 7700 14800 7950
Entry Wire Line
	13900 7550 14000 7650
Wire Wire Line
	14350 8450 14350 8650
Connection ~ 14350 8650
Wire Wire Line
	14350 8650 14800 8650
Wire Wire Line
	14350 7700 14350 7950
Text Label 13150 6350 0    50   ~ 0
A+
Text Label 14150 6400 0    50   ~ 0
A-
Text Label 13000 6250 0    50   ~ 0
RIGHT_MOTORS
Text Label 14050 7700 0    50   ~ 0
B+
Text Label 13150 7700 0    50   ~ 0
B-
Connection ~ 3150 9650
$Comp
L power:GND #PWR04
U 1 1 5F940544
P 3150 9750
F 0 "#PWR04" H 3150 9500 50  0001 C CNN
F 1 "GND" H 3155 9577 50  0000 C CNN
F 2 "" H 3150 9750 50  0001 C CNN
F 3 "" H 3150 9750 50  0001 C CNN
	1    3150 9750
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR02
U 1 1 5F940773
P 2550 1000
F 0 "#PWR02" H 2550 850 50  0001 C CNN
F 1 "+5VD" H 2565 1173 50  0000 C CNN
F 2 "" H 2550 1000 50  0001 C CNN
F 3 "" H 2550 1000 50  0001 C CNN
	1    2550 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5F944A86
P 2750 1000
F 0 "#PWR03" H 2750 850 50  0001 C CNN
F 1 "+3.3V" H 2765 1173 50  0000 C CNN
F 2 "" H 2750 1000 50  0001 C CNN
F 3 "" H 2750 1000 50  0001 C CNN
	1    2750 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5F944B12
P 6750 8450
F 0 "#PWR08" H 6750 8300 50  0001 C CNN
F 1 "+3.3V" H 6765 8623 50  0000 C CNN
F 2 "" H 6750 8450 50  0001 C CNN
F 3 "" H 6750 8450 50  0001 C CNN
	1    6750 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 8700 6900 8700
Wire Wire Line
	6900 8500 6750 8500
Wire Wire Line
	6900 9000 6750 9000
Wire Wire Line
	6750 8900 6900 8900
$Comp
L power:GND #PWR09
U 1 1 5F94DD70
P 6750 9000
F 0 "#PWR09" H 6750 8750 50  0001 C CNN
F 1 "GND" H 6755 8827 50  0000 C CNN
F 2 "" H 6750 9000 50  0001 C CNN
F 3 "" H 6750 9000 50  0001 C CNN
	1    6750 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F9529FE
P 8750 8650
F 0 "#PWR010" H 8750 8400 50  0001 C CNN
F 1 "GND" H 8755 8477 50  0000 C CNN
F 2 "" H 8750 8650 50  0001 C CNN
F 3 "" H 8750 8650 50  0001 C CNN
	1    8750 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 8550 8750 8550
Wire Wire Line
	8750 8550 8750 8650
Wire Wire Line
	14650 1650 14850 1650
Wire Wire Line
	13000 2100 12850 2100
$Comp
L power:GND #PWR015
U 1 1 5F957DD6
P 13400 5200
F 0 "#PWR015" H 13400 4950 50  0001 C CNN
F 1 "GND" H 13405 5027 50  0000 C CNN
F 2 "" H 13400 5200 50  0001 C CNN
F 3 "" H 13400 5200 50  0001 C CNN
	1    13400 5200
	-1   0    0    1   
$EndComp
NoConn ~ 6900 9500
NoConn ~ 6900 9600
Wire Wire Line
	8550 8250 8650 8250
Wire Wire Line
	8550 8350 8650 8350
Wire Wire Line
	8550 9450 8650 9450
Wire Wire Line
	8550 9550 8650 9550
Wire Wire Line
	8550 9650 8650 9650
Wire Wire Line
	8550 9850 8650 9850
Wire Wire Line
	6900 9800 6800 9800
Wire Wire Line
	6800 9700 6900 9700
NoConn ~ 13000 2650
NoConn ~ 14650 1850
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5F92B9A4
P 7950 4500
F 0 "J2" H 7800 5050 50  0000 L CNN
F 1 "Ardu Conn 01x08" H 7550 4950 50  0000 L CNN
F 2 "" H 7950 4500 50  0001 C CNN
F 3 "~" H 7950 4500 50  0001 C CNN
	1    7950 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5F92BB2C
P 7950 5400
F 0 "J3" H 7850 5800 50  0000 L CNN
F 1 "Ardu Conn 01x06" H 7550 5700 50  0000 L CNN
F 2 "" H 7950 5400 50  0001 C CNN
F 3 "~" H 7950 5400 50  0001 C CNN
	1    7950 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J4
U 1 1 5F92BBE8
P 8450 4500
F 0 "J4" H 8250 3750 50  0000 C CNN
F 1 "Ardu Conn 01x10" H 8250 3850 50  0000 C CNN
F 2 "" H 8450 4500 50  0001 C CNN
F 3 "~" H 8450 4500 50  0001 C CNN
	1    8450 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Female J5
U 1 1 5F92BCDA
P 8450 5600
F 0 "J5" H 8300 4950 50  0000 C CNN
F 1 "Ardu Conn 01x08" H 8250 5050 50  0000 C CNN
F 2 "" H 8450 5600 50  0001 C CNN
F 3 "~" H 8450 5600 50  0001 C CNN
	1    8450 5600
	-1   0    0    1   
$EndComp
NoConn ~ 7750 4200
Text GLabel 7150 4300 0    50   Input ~ 0
IOREF
Text GLabel 7150 4600 0    50   Input ~ 0
+5V
Text GLabel 7150 4400 0    50   Input ~ 0
NRST
Text GLabel 7150 5200 0    50   Input ~ 0
PA3
Text GLabel 7150 5300 0    50   Input ~ 0
PC0
Text GLabel 7150 5400 0    50   Input ~ 0
PC3
Text GLabel 7150 5500 0    50   Input ~ 0
PF3
Text GLabel 7150 5600 0    50   Input ~ 0
PF5
Text GLabel 7150 5700 0    50   Input ~ 0
PF10
Text GLabel 9350 4000 2    50   Input ~ 0
PB8
Text GLabel 9350 4100 2    50   Input ~ 0
PB9
Text GLabel 9350 4200 2    50   Input ~ 0
AVDD
Text GLabel 9350 4400 2    50   Input ~ 0
PA5
Text GLabel 9350 4500 2    50   Input ~ 0
PA6
Text GLabel 9350 4600 2    50   Input ~ 0
PA7
Text GLabel 9350 4700 2    50   Input ~ 0
PD14
Text GLabel 9350 4800 2    50   Input ~ 0
PD15
Text GLabel 9350 4900 2    50   Input ~ 0
PF12
Text GLabel 9350 5200 2    50   Input ~ 0
PF13
Text GLabel 9350 5300 2    50   Input ~ 0
PE9
Text GLabel 9350 5400 2    50   Input ~ 0
PE11
Text GLabel 9350 5500 2    50   Input ~ 0
PF14
Text GLabel 9350 5600 2    50   Input ~ 0
PE13
Text GLabel 9350 5700 2    50   Input ~ 0
PF15
Text GLabel 9350 5800 2    50   Input ~ 0
PG14
Text GLabel 9350 5900 2    50   Input ~ 0
PG9
Text GLabel 9350 4000 2    50   Input ~ 0
PB8
Text GLabel 2650 1950 1    50   Input ~ 0
IOREF
Text GLabel 1950 2550 0    50   Input ~ 0
NRST
$Comp
L power:+5VD #PWR07
U 1 1 5F920C0B
P 7050 4900
F 0 "#PWR07" H 7050 4750 50  0001 C CNN
F 1 "+5VD" V 7050 5050 50  0000 L CNN
F 2 "" H 7050 4900 50  0001 C CNN
F 3 "" H 7050 4900 50  0001 C CNN
	1    7050 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F920CC1
P 7050 4750
F 0 "#PWR06" H 7050 4500 50  0001 C CNN
F 1 "GND" V 7050 4550 50  0000 C CNN
F 2 "" H 7050 4750 50  0001 C CNN
F 3 "" H 7050 4750 50  0001 C CNN
	1    7050 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4700 7700 4700
Wire Wire Line
	7700 4800 7750 4800
$Comp
L power:GND #PWR014
U 1 1 5F927BC5
P 9600 4300
F 0 "#PWR014" H 9600 4050 50  0001 C CNN
F 1 "GND" V 9600 4100 50  0000 C CNN
F 2 "" H 9600 4300 50  0001 C CNN
F 3 "" H 9600 4300 50  0001 C CNN
	1    9600 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5F92F312
P 7050 4500
F 0 "#PWR05" H 7050 4350 50  0001 C CNN
F 1 "+3.3V" V 7065 4628 50  0000 L CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	0    -1   -1   0   
$EndComp
Text GLabel 5300 4550 2    50   Input ~ 0
PB4
Text GLabel 5300 4650 2    50   Input ~ 0
PB5
Text GLabel 5300 4950 2    50   Input ~ 0
PB8
Text GLabel 5300 5050 2    50   Input ~ 0
PB9
Text GLabel 5300 5850 2    50   Input ~ 0
PC0
Text GLabel 5300 6550 2    50   Input ~ 0
PC7
Text GLabel 4050 1950 1    50   Input ~ 0
AVDD
Wire Wire Line
	7700 4700 7700 4750
Wire Wire Line
	7150 5600 7450 5600
Wire Wire Line
	7150 5500 7750 5500
Wire Wire Line
	7750 5400 7150 5400
Wire Wire Line
	7150 5300 7750 5300
Wire Wire Line
	7750 5200 7150 5200
Wire Wire Line
	7050 4900 7750 4900
Wire Wire Line
	7050 4750 7700 4750
Connection ~ 7700 4750
Wire Wire Line
	7700 4750 7700 4800
Wire Wire Line
	7150 4600 7750 4600
Wire Wire Line
	7050 4500 7750 4500
Wire Wire Line
	7150 4400 7750 4400
Wire Wire Line
	7750 4300 7150 4300
Wire Wire Line
	8650 4000 9050 4000
Wire Wire Line
	9350 4100 9150 4100
Wire Wire Line
	8650 4200 9350 4200
Wire Wire Line
	8650 4300 9600 4300
Wire Wire Line
	9350 4400 8650 4400
Wire Wire Line
	8650 4500 9350 4500
Wire Wire Line
	9350 4600 8650 4600
Wire Wire Line
	8650 4700 9350 4700
Wire Wire Line
	9350 4800 8650 4800
Wire Wire Line
	8650 4900 9350 4900
Wire Wire Line
	8650 5200 9350 5200
Wire Wire Line
	8650 5800 9350 5800
Text GLabel 6800 9700 0    50   Input ~ 0
MAGNET_INT
Text GLabel 6800 9800 0    50   Input ~ 0
MAGNET_DATA_READY
Text GLabel 8650 9450 2    50   Input ~ 0
HUMIDITY_DATA_READY
Text GLabel 8650 9550 2    50   Input ~ 0
PRESSURE_INT
Text GLabel 8650 9650 2    50   Input ~ 0
IMU_INT
Text GLabel 8650 9850 2    50   Input ~ 0
USER_INT
Text GLabel 8650 8350 2    50   Input ~ 0
SENSORS_I2C_SDA
Text GLabel 8650 8250 2    50   Input ~ 0
SENSORS_I2C_SCL
Text GLabel 7000 6000 0    50   Input ~ 0
MAGNET_INT
Text GLabel 7000 6350 0    50   Input ~ 0
MAGNET_DATA_READY
Wire Wire Line
	7000 6000 7100 6000
Wire Wire Line
	7450 6000 7450 5600
Connection ~ 7450 5600
Wire Wire Line
	7450 5600 7750 5600
Wire Wire Line
	7550 6350 7400 6350
Text GLabel 9500 6300 2    50   Input ~ 0
HUMIDITY_DATA_READY
Text GLabel 9500 6650 2    50   Input ~ 0
PRESSURE_INT
Text GLabel 9500 7000 2    50   Input ~ 0
IMU_INT
Text GLabel 9500 7350 2    50   Input ~ 0
USER_INT
Wire Wire Line
	9500 6300 9400 6300
Wire Wire Line
	8900 6650 9100 6650
Wire Wire Line
	9500 7000 9400 7000
Wire Wire Line
	9500 7350 9400 7350
Text GLabel 9650 3150 2    50   Input ~ 0
SENSORS_I2C_SDA
Text GLabel 9650 3550 2    50   Input ~ 0
SENSORS_I2C_SCL
Wire Wire Line
	9150 3550 9250 3550
Wire Wire Line
	9650 3150 9550 3150
Wire Wire Line
	9050 3150 9050 4000
Connection ~ 9050 4000
Wire Wire Line
	9050 4000 9350 4000
Wire Wire Line
	9150 3550 9150 4100
Connection ~ 9150 4100
Wire Wire Line
	9150 4100 8650 4100
Wire Wire Line
	9250 3150 9050 3150
Wire Wire Line
	9550 3550 9650 3550
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5FB432E8
P 9250 6300
F 0 "JP3" H 9250 6505 50  0000 C CNN
F 1 "Bridge open" H 9250 6414 50  0000 C CNN
F 2 "" H 9250 6300 50  0001 C CNN
F 3 "~" H 9250 6300 50  0001 C CNN
	1    9250 6300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5FB54A78
P 9250 6650
F 0 "JP4" H 9250 6855 50  0000 C CNN
F 1 "Bridge open" H 9250 6764 50  0000 C CNN
F 2 "" H 9250 6650 50  0001 C CNN
F 3 "~" H 9250 6650 50  0001 C CNN
	1    9250 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 6650 9500 6650
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5FB54B23
P 9250 7000
F 0 "JP5" H 9250 7205 50  0000 C CNN
F 1 "Bridge open" H 9250 7114 50  0000 C CNN
F 2 "" H 9250 7000 50  0001 C CNN
F 3 "~" H 9250 7000 50  0001 C CNN
	1    9250 7000
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5FB54BC4
P 9250 7350
F 0 "JP6" H 9250 7555 50  0000 C CNN
F 1 "Bridge open" H 9250 7464 50  0000 C CNN
F 2 "" H 9250 7350 50  0001 C CNN
F 3 "~" H 9250 7350 50  0001 C CNN
	1    9250 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5400 8900 5400
Wire Wire Line
	8650 5300 9000 5300
Wire Wire Line
	8650 5500 8800 5500
Wire Wire Line
	8650 5600 9350 5600
Wire Wire Line
	8650 5700 8700 5700
Wire Wire Line
	8650 5900 9350 5900
Wire Wire Line
	9000 6300 9000 5300
Connection ~ 9000 5300
Wire Wire Line
	9000 5300 9350 5300
Wire Wire Line
	8900 5400 8900 6650
Connection ~ 8900 5400
Wire Wire Line
	8900 5400 9350 5400
Wire Wire Line
	8800 7000 8800 5500
Wire Wire Line
	8800 7000 9100 7000
Connection ~ 8800 5500
Wire Wire Line
	8800 5500 9350 5500
Wire Wire Line
	8700 5700 8700 7350
Wire Wire Line
	8700 7350 9100 7350
Connection ~ 8700 5700
Wire Wire Line
	8700 5700 9350 5700
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5FBAC2B0
P 7250 6350
F 0 "JP2" H 7250 6555 50  0000 C CNN
F 1 "Bridge open" H 7250 6464 50  0000 C CNN
F 2 "" H 7250 6350 50  0001 C CNN
F 3 "~" H 7250 6350 50  0001 C CNN
	1    7250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 6350 7000 6350
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FBAC302
P 7250 6000
F 0 "JP1" H 7250 6205 50  0000 C CNN
F 1 "Bridge open" H 7250 6114 50  0000 C CNN
F 2 "" H 7250 6000 50  0001 C CNN
F 3 "~" H 7250 6000 50  0001 C CNN
	1    7250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6000 7450 6000
Wire Wire Line
	7150 5700 7550 5700
Wire Wire Line
	7550 5700 7550 6350
Connection ~ 7550 5700
Wire Wire Line
	7550 5700 7750 5700
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 5FBE4930
P 9400 3550
F 0 "JP8" H 9400 3755 50  0000 C CNN
F 1 "Bridge closed" H 9400 3664 50  0000 C CNN
F 2 "" H 9400 3550 50  0001 C CNN
F 3 "~" H 9400 3550 50  0001 C CNN
	1    9400 3550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 5FBE49A6
P 9400 3150
F 0 "JP7" H 9400 3355 50  0000 C CNN
F 1 "Bridge closed" H 9400 3264 50  0000 C CNN
F 2 "" H 9400 3150 50  0001 C CNN
F 3 "~" H 9400 3150 50  0001 C CNN
	1    9400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 8450 6750 8500
Connection ~ 6750 8500
Wire Wire Line
	6750 8500 6750 8700
Wire Wire Line
	6750 8900 6750 9000
Connection ~ 6750 9000
Wire Wire Line
	9100 6300 9000 6300
Wire Notes Line
	5900 7800 9550 7800
Text Notes 9450 7600 2    100  Italic 20
Nucleo144-F767ZI Ardunio Connector usage
Text Notes 6000 7400 0    50   Italic 0
Bridge numbers may be different than on the board\n
Text Notes 14900 7250 0    50   Italic 0
DC Motors with gearbox\nXD-37G520
Text Notes 5950 10600 0    100  Italic 20
IMU Sensors Board\n
Text Notes 11250 8950 0    100  Italic 20
Motors and H-Bridge\n
NoConn ~ 2950 1950
NoConn ~ 3050 1950
NoConn ~ 3150 1950
NoConn ~ 2450 1950
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FA4AF62
P 2050 1200
F 0 "J1" V 1850 1150 50  0000 C CNN
F 1 "2PXH2.54" V 1950 1100 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "~" H 2050 1200 50  0001 C CNN
	1    2050 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA56310
P 1950 1800
F 0 "#PWR01" H 1950 1550 50  0001 C CNN
F 1 "GND" V 1955 1627 50  0000 C CNN
F 2 "" H 1950 1800 50  0001 C CNN
F 3 "" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 9650 3250 9650
Wire Wire Line
	2450 9650 2550 9650
Wire Wire Line
	2450 9550 2450 9650
Wire Wire Line
	2550 9550 2550 9650
Connection ~ 2550 9650
Wire Wire Line
	2550 9650 2650 9650
Wire Wire Line
	2650 9550 2650 9650
Connection ~ 2650 9650
Wire Wire Line
	2650 9650 2750 9650
Wire Wire Line
	2750 9550 2750 9650
Connection ~ 2750 9650
Wire Wire Line
	2750 9650 2850 9650
Wire Wire Line
	2850 9550 2850 9650
Connection ~ 2850 9650
Wire Wire Line
	2850 9650 2950 9650
Wire Wire Line
	2950 9550 2950 9650
Connection ~ 2950 9650
Wire Wire Line
	2950 9650 3050 9650
Wire Wire Line
	3050 9550 3050 9650
Connection ~ 3050 9650
Wire Wire Line
	3050 9650 3150 9650
Wire Wire Line
	3150 9550 3150 9650
Wire Wire Line
	3250 9550 3250 9650
Connection ~ 3250 9650
Wire Wire Line
	3250 9650 3350 9650
Wire Wire Line
	3350 9550 3350 9650
Connection ~ 3350 9650
Wire Wire Line
	3350 9650 3450 9650
Wire Wire Line
	3450 9550 3450 9650
Connection ~ 3450 9650
Wire Wire Line
	3450 9650 3550 9650
Wire Wire Line
	3550 9550 3550 9650
Connection ~ 3550 9650
Wire Wire Line
	3550 9650 3650 9650
Wire Wire Line
	3650 9550 3650 9650
Connection ~ 3650 9650
Wire Wire Line
	3650 9650 3750 9650
Wire Wire Line
	3750 9550 3750 9650
Connection ~ 3750 9650
Wire Wire Line
	3750 9650 3850 9650
Wire Wire Line
	3850 9550 3850 9650
Text Notes 4050 9850 0    100  Italic 20
Nucleo-144-F767ZI
Wire Wire Line
	14000 7650 14050 7700
Wire Wire Line
	14050 7700 14350 7700
Wire Wire Line
	14350 7700 14800 7700
Connection ~ 14350 7700
$Comp
L Motor:Motor_DC_ALT M4
U 1 1 5FAAE7F3
P 14750 6850
F 0 "M4" H 14897 6846 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 14897 6755 50  0000 L CNN
F 2 "" H 14750 6760 50  0001 C CNN
F 3 "~" H 14750 6760 50  0001 C CNN
F 4 "XD-37GB520" H 14750 6850 50  0001 C CNN "Symbol"
	1    14750 6850
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M2
U 1 1 5FAAE7FB
P 14300 6850
F 0 "M2" H 14050 6850 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 13300 6750 50  0000 L CNN
F 2 "" H 14300 6760 50  0001 C CNN
F 3 "~" H 14300 6760 50  0001 C CNN
F 4 "XD-37GB520" H 14300 6850 50  0001 C CNN "Symbol"
	1    14300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 7400 14750 7150
Wire Wire Line
	14750 6400 14750 6650
Entry Wire Line
	13900 6250 14000 6350
Wire Wire Line
	14300 7150 14300 7400
Connection ~ 14300 7400
Wire Wire Line
	14300 7400 14750 7400
Wire Wire Line
	14300 6400 14300 6650
Wire Wire Line
	14000 6350 14000 6400
Wire Wire Line
	14000 6400 14300 6400
Wire Wire Line
	14300 6400 14750 6400
Connection ~ 14300 6400
$Sheet
S 8600 1050 800  900 
U 5FAF8BBB
F0 "Encoders" 50
F1 "encoders.sch" 50
F2 "A1" I L 8600 1250 50 
F3 "A2" I L 8600 1550 50 
F4 "B1" I L 8600 1350 50 
F5 "B2" I L 8600 1650 50 
F6 "Z1" I L 8600 1450 50 
F7 "Z2" I L 8600 1750 50 
F8 "5V" I L 8600 1150 50 
F9 "GND" I L 8600 1850 50 
$EndSheet
$Comp
L power:+5VD #PWR018
U 1 1 5FB1DCDB
P 8450 1050
F 0 "#PWR018" H 8450 900 50  0001 C CNN
F 1 "+5VD" H 8450 1250 50  0000 C CNN
F 2 "" H 8450 1050 50  0001 C CNN
F 3 "" H 8450 1050 50  0001 C CNN
	1    8450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FB1DDE2
P 8450 2000
F 0 "#PWR019" H 8450 1750 50  0001 C CNN
F 1 "GND" H 8455 1827 50  0000 C CNN
F 2 "" H 8450 2000 50  0001 C CNN
F 3 "" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1050 8450 1150
Wire Wire Line
	8450 1150 8600 1150
Wire Wire Line
	8450 2000 8450 1850
Wire Wire Line
	8450 1850 8600 1850
Text GLabel 8450 1250 0    50   Input ~ 0
PC6
Text GLabel 8450 1350 0    50   Input ~ 0
PC7
Text GLabel 8450 1650 0    50   Input ~ 0
PB5
Text GLabel 8450 1550 0    50   Input ~ 0
PB4
Wire Wire Line
	8600 1650 8450 1650
Wire Wire Line
	8450 1550 8600 1550
Wire Wire Line
	8450 1350 8600 1350
Wire Wire Line
	8600 1250 8450 1250
Wire Wire Line
	8600 1750 8450 1750
Wire Wire Line
	8600 1450 8450 1450
Wire Notes Line
	9650 650  8050 650 
Text Notes 11400 5600 0    50   Italic 0
EN input are used to\nturn on the MOSFETs.\nCould be used for \novercurrent protection \n(R8 i R9 should be around \n10k for OCP 2.5A\nTypically there are 5.1k \nresistors here - 5A OCP)
Text Notes 11400 5850 0    50   Italic 0
ADCs are not used and\nshould be connected to GND.
Text Notes 14450 7700 0    50   Italic 0
red
Text Notes 14450 6400 0    50   Italic 0
red
Text Notes 14400 7400 0    50   Italic 0
black
Text Notes 14450 8650 0    50   Italic 0
black
Text GLabel 2850 1900 1    50   Input ~ 0
+5V
Wire Wire Line
	2050 1400 2050 1600
Wire Wire Line
	2050 1600 2550 1600
Wire Wire Line
	2550 1600 2550 1950
Wire Notes Line
	5900 7700 5900 2850
Text Notes 8150 2700 0    100  Italic 20
Encoders
Text Label 4550 4950 0    50   Italic 0
I2C_SENSORS_SDA
Wire Wire Line
	5300 4950 4550 4950
Wire Wire Line
	5300 5050 4550 5050
Text Label 4550 5050 0    50   Italic 0
I2C_SENSORS_SCL
Text Label 4550 4850 0    50   Italic 0
LD2[Blue]Indicator
Wire Wire Line
	5300 4650 4550 4650
Wire Wire Line
	4550 4550 5300 4550
Text Label 4550 4650 0    50   Italic 0
TIM3_CH2
NoConn ~ 4550 4750
Text Label 4550 4550 0    50   Italic 0
TIM3_CH1
Text Label 4550 4450 0    50   Italic 0
SWO
Wire Wire Line
	4750 4450 4550 4450
NoConn ~ 4750 4450
NoConn ~ 5000 4150
Text Label 4550 4150 0    50   Italic 0
LD1[Green]
Wire Wire Line
	5000 4150 4550 4150
NoConn ~ 4550 4350
Text Label 4550 5150 0    50   Italic 0
SPI2_SCK
Wire Wire Line
	4550 5150 4950 5150
NoConn ~ 4950 5150
NoConn ~ 4550 5250
NoConn ~ 4550 5350
Text Label 4550 5450 0    50   Italic 0
RMI_TXD1
Text Label 4550 5550 0    50   Italic 0
LD3[Red]
Wire Wire Line
	4550 5450 4950 5450
Wire Wire Line
	4950 5550 4550 5550
NoConn ~ 4950 5550
NoConn ~ 4950 5450
NoConn ~ 4550 5650
NoConn ~ 4650 4800
Wire Wire Line
	5300 4850 4550 4850
NoConn ~ 5300 4850
Text Label 4550 2550 0    50   Italic 0
RMII_REF_CLK
Text Label 4550 2650 0    50   Italic 0
RMII_MDIO
Text Label 4550 3150 0    50   Italic 0
RMII_CRS_DV
Text Label 4550 3250 0    50   Italic 0
USB_OTH_FS_SOF
Text Label 4550 3350 0    50   Italic 0
USB_OTG_FS_VUS
Text Label 4550 3450 0    50   Italic 0
USB_OTG_FS_ID
Text Label 4550 3550 0    50   Italic 0
USB_OTG_FS_DM
Text Label 4550 3650 0    50   Italic 0
USB_OTG_FS_DP
Text Label 4550 3750 0    50   Italic 0
TMS
Text Label 4550 3850 0    50   Italic 0
TCK
Wire Wire Line
	4750 3750 4550 3750
Wire Wire Line
	4750 3850 4550 3850
Wire Wire Line
	4550 3650 5200 3650
Wire Wire Line
	5200 3550 4550 3550
Wire Wire Line
	4550 3450 5200 3450
Wire Wire Line
	5250 3350 4550 3350
Wire Wire Line
	5250 3250 4550 3250
Wire Wire Line
	4550 3150 5050 3150
Wire Wire Line
	4550 2650 5000 2650
Wire Wire Line
	5100 2550 4550 2550
NoConn ~ 5100 2550
NoConn ~ 5000 2650
NoConn ~ 5050 3150
NoConn ~ 5250 3250
NoConn ~ 5250 3350
NoConn ~ 5200 3450
NoConn ~ 5200 3550
NoConn ~ 5200 3650
NoConn ~ 4750 3750
NoConn ~ 4750 3850
NoConn ~ 4550 3950
NoConn ~ 4550 3050
NoConn ~ 4550 2950
Text Label 4550 5850 0    50   Italic 0
BRIDGE_B2
Text Label 4550 5950 0    50   Italic 0
RMII_MDC
Wire Wire Line
	4550 5950 4950 5950
Wire Wire Line
	4550 5850 5300 5850
NoConn ~ 4950 5950
Text Label 4550 6050 0    50   Italic 0
SPI2_MISO
Text Label 4550 6150 0    50   Italic 0
SPI2_MOSI
Text Label 4550 6250 0    50   Italic 0
RMII_RXD0
Text Label 4550 6350 0    50   Italic 0
RMII_RXD1
Text GLabel 5300 6450 2    50   Input ~ 0
PC6
Wire Wire Line
	4550 6450 5300 6450
Wire Wire Line
	4550 6550 5300 6550
Text Label 4550 6450 0    50   Italic 0
TIM8_CH1
Text Label 4550 6550 0    50   Italic 0
TIM8_CH2
Wire Wire Line
	4550 6050 5000 6050
Wire Wire Line
	4550 6150 5000 6150
Wire Wire Line
	5000 6250 4550 6250
Wire Wire Line
	4550 6350 5000 6350
NoConn ~ 5000 6050
NoConn ~ 5000 6150
NoConn ~ 5000 6250
NoConn ~ 5000 6350
NoConn ~ 4550 6650
NoConn ~ 4550 6750
Text Label 4550 6850 0    50   Italic 0
UART_RFID_TX
Text Label 4550 6950 0    50   Italic 0
UART_RFID_RX
Text Label 4550 7050 0    50   Italic 0
UART_ULTRASOUND_TX
Wire Wire Line
	4550 7050 5450 7050
Wire Wire Line
	4550 6950 5150 6950
Wire Wire Line
	5150 6850 4550 6850
NoConn ~ 5150 6850
NoConn ~ 5150 6950
NoConn ~ 5450 7050
Text Label 4550 7150 0    50   Italic 0
USER_BTN[B1]
Wire Wire Line
	4550 7150 5150 7150
NoConn ~ 5150 7150
Text Label 4550 7250 0    50   Italic 0
RCC_OSC32_IN
Text Label 4550 7350 0    50   Italic 0
RCC_OSC32_OUT
Wire Wire Line
	4550 7350 5250 7350
Wire Wire Line
	4550 7250 5250 7250
NoConn ~ 5250 7250
NoConn ~ 5250 7350
Text Label 4550 7550 0    50   Italic 0
CAN1_RX
Text Label 4550 7650 0    50   Italic 0
CAN1_TX
Text Label 4550 7750 0    50   Italic 0
UART_ULTRASOUND_RX
Text Label 4550 8050 0    50   Italic 0
USART_GPS_TX
Text Label 4550 8150 0    50   Italic 0
USART_GPS_RX
Text Label 4550 8250 0    50   Italic 0
GPIO_ELECTOMAGNET
NoConn ~ 4550 7850
NoConn ~ 4550 7950
NoConn ~ 5450 7750
NoConn ~ 4950 7650
NoConn ~ 4950 7550
Wire Wire Line
	4950 7550 4550 7550
Wire Wire Line
	4550 7650 4950 7650
Wire Wire Line
	5450 7750 4550 7750
Wire Wire Line
	4550 8050 5150 8050
Wire Wire Line
	5150 8150 4550 8150
Wire Wire Line
	4550 8250 5350 8250
Text Label 4550 8350 0    50   Italic 0
STLK_RX
Text Label 4550 8450 0    50   Italic 0
STLK_TX
Wire Wire Line
	4550 8350 4900 8350
Wire Wire Line
	4900 8450 4550 8450
NoConn ~ 5150 8050
NoConn ~ 5150 8150
NoConn ~ 4900 8350
NoConn ~ 4900 8450
NoConn ~ 4550 8550
NoConn ~ 4550 8650
NoConn ~ 4550 8850
NoConn ~ 4550 8750
NoConn ~ 4550 8950
NoConn ~ 4550 9050
Connection ~ 2550 1600
Wire Wire Line
	2550 1000 2550 1600
Wire Wire Line
	2750 1000 2750 1950
Wire Wire Line
	2850 1900 2850 1950
Wire Wire Line
	1950 1400 1950 1800
NoConn ~ 1950 7550
NoConn ~ 1950 7750
NoConn ~ 1950 7850
NoConn ~ 1950 7950
NoConn ~ 1950 8050
NoConn ~ 1950 8150
NoConn ~ 1950 8250
NoConn ~ 1950 8350
NoConn ~ 1950 8450
NoConn ~ 1950 8550
NoConn ~ 1950 9050
Text Label 1950 7650 2    50   Italic 0
SPI1_SS
Text Label 1950 8850 2    50   Italic 0
TIM1_CH3
Text Label 1950 8950 2    50   Italic 0
TIM1_CH4
Text GLabel 1500 8850 0    50   Input ~ 0
PE13
Text GLabel 1500 8950 0    50   Input ~ 0
PE14
Wire Wire Line
	1500 8850 1950 8850
Wire Wire Line
	1950 8950 1500 8950
Wire Wire Line
	1950 7650 1600 7650
NoConn ~ 1600 7650
NoConn ~ 1950 6050
NoConn ~ 1950 6250
NoConn ~ 1950 6450
NoConn ~ 1950 6550
NoConn ~ 1950 6650
NoConn ~ 1950 7050
NoConn ~ 1950 7150
NoConn ~ 1950 7250
NoConn ~ 1950 7350
Text Label 1950 6150 2    50   Italic 0
BRIDGE_B1
Text Label 1950 6350 2    50   Italic 0
BRIDGE_A2
Text Label 1950 6750 2    50   Italic 0
TESTOWA
Text Label 1950 6850 2    50   Italic 0
BRIDGE_A1
Text GLabel 1400 6850 0    50   Input ~ 0
PF10
Text GLabel 1450 6350 0    50   Input ~ 0
PF5
Text GLabel 1450 6150 0    50   Input ~ 0
PF3
Wire Wire Line
	1450 6150 1950 6150
Wire Wire Line
	1950 6350 1450 6350
Wire Wire Line
	1400 6850 1950 6850
Wire Wire Line
	1950 6750 1550 6750
NoConn ~ 1550 6750
NoConn ~ 1950 4650
NoConn ~ 1950 4550
NoConn ~ 1950 4450
NoConn ~ 1950 4350
NoConn ~ 1950 4250
NoConn ~ 1950 4150
NoConn ~ 1950 4950
NoConn ~ 1950 5150
NoConn ~ 1950 5350
NoConn ~ 1950 5650
Text Label 1950 4750 2    50   ~ 0
USB_PowerSwitchOn
Text Label 1950 4850 2    50   ~ 0
USB_OverCurrent_Protection
Text Label 1950 5050 2    50   ~ 0
USART_MLIDAR_RX
Text Label 1950 5250 2    50   ~ 0
RMII_TX_EN
Text Label 1950 5450 2    50   ~ 0
RMII_TXD0
Text Label 1950 5550 2    50   ~ 0
USAR_MLIDAR_TX
Wire Wire Line
	1950 5550 1200 5550
Wire Wire Line
	1950 5450 1500 5450
Wire Wire Line
	1500 5250 1950 5250
Wire Wire Line
	1950 5050 1200 5050
Wire Wire Line
	1950 4850 850  4850
Wire Wire Line
	1150 4750 1950 4750
NoConn ~ 1150 4750
NoConn ~ 850  4850
NoConn ~ 1200 5050
NoConn ~ 1500 5250
NoConn ~ 1500 5450
NoConn ~ 1200 5550
$Sheet
S 6500 1000 1300 1200
U 60B85D04
F0 "Power Management" 50
F1 "Power_management.sch" 50
F2 "+12V" I L 6500 1150 50 
F3 "+5VD" I L 6500 1300 50 
F4 "GND" I L 6500 2050 50 
$EndSheet
Wire Wire Line
	13000 2850 12550 2850
Wire Wire Line
	14650 2950 15150 2950
Wire Wire Line
	14650 2650 14950 2650
Wire Wire Line
	14650 2750 15050 2750
Text Label 14550 5500 2    50   ~ 0
BRIDGE_A1
Text Label 13600 5400 2    50   ~ 0
BRIDGE_B1
Text Label 13600 5500 2    50   ~ 0
BRIDGE_B2
Text Label 14550 5400 2    50   ~ 0
BRIDGE_A2
Text Label 14550 5300 2    50   ~ 0
TIM1_CH3
Text Label 13600 5600 2    50   ~ 0
TIM1_CH4
Wire Notes Line
	5800 10000 700  10000
Wire Notes Line
	700  10000 700  650 
Wire Notes Line
	700  650  5800 650 
Wire Notes Line
	5800 650  5800 10000
Wire Wire Line
	3150 9650 3150 9750
$Comp
L power:+5VD #PWR011
U 1 1 60D01787
P 6050 950
F 0 "#PWR011" H 6050 800 50  0001 C CNN
F 1 "+5VD" H 6065 1123 50  0000 C CNN
F 2 "" H 6050 950 50  0001 C CNN
F 3 "" H 6050 950 50  0001 C CNN
	1    6050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 60D018AA
P 6300 950
F 0 "#PWR013" H 6300 800 50  0001 C CNN
F 1 "+12V" H 6315 1123 50  0000 C CNN
F 2 "" H 6300 950 50  0001 C CNN
F 3 "" H 6300 950 50  0001 C CNN
	1    6300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1300 6050 1300
Wire Wire Line
	6050 1300 6050 950 
Wire Wire Line
	6300 950  6300 1150
Wire Wire Line
	6300 1150 6500 1150
$Comp
L power:GND #PWR012
U 1 1 60D278D2
P 6050 2200
F 0 "#PWR012" H 6050 1950 50  0001 C CNN
F 1 "GND" H 6055 2027 50  0000 C CNN
F 2 "" H 6050 2200 50  0001 C CNN
F 3 "" H 6050 2200 50  0001 C CNN
	1    6050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2200 6050 2050
Wire Wire Line
	6050 2050 6500 2050
Wire Notes Line
	7950 650  5900 650 
Text Notes 5950 2700 0    100  Italic 20
Power management
Text GLabel 14700 5400 2    50   Input ~ 0
PF5
Text GLabel 14700 5500 2    50   Input ~ 0
PF10
Text GLabel 14700 5300 2    50   Input ~ 0
PE13
NoConn ~ 5350 8250
Wire Wire Line
	4550 2850 5500 2850
Text GLabel 5500 2850 2    50   Input ~ 0
PA4
Text Label 4550 2850 0    50   Italic 0
CURRENT_SENSOR_LEFT
Text Notes 13550 4050 1    50   Italic 0
blue
Text Notes 13650 4050 1    50   Italic 0
yellow\n
Text Notes 13750 3950 1    50   Italic 0
orange
Text Notes 13850 3950 1    50   Italic 0
purple
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J11
U 1 1 5FC1C737
P 13800 4650
F 0 "J11" H 13850 4967 50  0000 C CNN
F 1 "Conn_02x04_F_BRIDGE" H 13850 4876 50  0000 C CNN
F 2 "" H 13800 4650 50  0001 C CNN
F 3 "~" H 13800 4650 50  0001 C CNN
	1    13800 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J12
U 1 1 5FC61BF8
P 13800 5400
F 0 "J12" H 13850 5717 50  0000 C CNN
F 1 "Conn_02x04_M_STM" H 13850 5626 50  0000 C CNN
F 2 "" H 13800 5400 50  0001 C CNN
F 3 "~" H 13800 5400 50  0001 C CNN
	1    13800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 4550 13600 4550
Wire Wire Line
	12750 4650 13600 4650
Wire Wire Line
	12750 2450 13000 2450
Wire Wire Line
	12650 4750 13600 4750
Wire Wire Line
	12650 2550 13000 2550
Wire Wire Line
	12550 4850 13600 4850
Wire Wire Line
	13400 5200 13400 5300
Wire Wire Line
	13400 5300 13600 5300
$Comp
L power:GND #PWR0105
U 1 1 5FE148B4
P 14350 5750
F 0 "#PWR0105" H 14350 5500 50  0001 C CNN
F 1 "GND" H 14355 5577 50  0000 C CNN
F 2 "" H 14350 5750 50  0001 C CNN
F 3 "" H 14350 5750 50  0001 C CNN
	1    14350 5750
	1    0    0    -1  
$EndComp
Text GLabel 13100 5400 0    50   Input ~ 0
PF3
Text GLabel 13100 5500 0    50   Input ~ 0
PC0
Text GLabel 13100 5600 0    50   Input ~ 0
PE14
Wire Wire Line
	13100 5400 13600 5400
Wire Wire Line
	13600 5500 13100 5500
Wire Wire Line
	13100 5600 13600 5600
Text Notes 13600 4550 2    50   Italic 0
blue
Text Notes 13600 4650 2    50   Italic 0
green
Text Notes 13600 4750 2    50   Italic 0
yellow\n
Text Notes 13600 4850 2    50   Italic 0
white
Wire Wire Line
	14100 5600 14350 5600
Wire Wire Line
	14350 5600 14350 5750
Wire Wire Line
	14850 4850 14100 4850
Wire Wire Line
	14950 4750 14100 4750
Wire Wire Line
	14100 4650 15050 4650
Wire Wire Line
	15050 4650 15050 2750
Wire Wire Line
	15150 4550 14100 4550
Wire Wire Line
	14100 5400 14700 5400
Wire Wire Line
	14700 5300 14100 5300
Wire Wire Line
	14100 5500 14700 5500
Wire Wire Line
	12550 2850 12550 4850
Wire Wire Line
	12650 2550 12650 4750
Wire Wire Line
	12750 2450 12750 4650
Wire Wire Line
	14850 1650 14850 4850
Wire Wire Line
	14950 2650 14950 4750
Wire Wire Line
	15150 2950 15150 4550
Wire Wire Line
	12850 2100 12850 4550
Text Notes 12950 2000 2    50   Italic 0
Internal connected GND's
Text Notes 14400 4550 2    50   Italic 0
white
Text Notes 14400 4650 2    50   Italic 0
yellow\n
Text Notes 14400 4750 2    50   Italic 0
green
Text Notes 14400 4850 2    50   Italic 0
blue
Text GLabel 8450 1450 0    50   Input ~ 0
PF11
Text GLabel 8450 1750 0    50   Input ~ 0
PE12
Wire Wire Line
	1950 8750 1400 8750
Text GLabel 1400 8750 0    50   Input ~ 0
PE12
Text GLabel 1400 6950 0    50   Input ~ 0
PF11
Text Label 1950 6950 2    50   Italic 0
ENCODER1_Z
Text Label 1950 8750 2    50   Italic 0
ENCODER2_Z
NoConn ~ 1950 8650
Wire Wire Line
	1400 6950 1950 6950
$Sheet
S 11750 7150 700  850 
U 5FF5A0F0
F0 "motors_adcs" 50
F1 "motors_adcs.sch" 50
F2 "ADC_B" I L 11750 7700 50 
F3 "GND" I L 11750 7600 50 
F4 "+5V" I L 11750 7500 50 
F5 "ADC_A" I L 11750 7400 50 
F6 "A_IN" I R 12450 7300 50 
F7 "A_OUT" I R 12450 7400 50 
F8 "B_IN" I R 12450 7700 50 
F9 "B_OUT" I R 12450 7800 50 
$EndSheet
Wire Wire Line
	11750 7700 11600 7700
Text GLabel 11600 7700 0    50   Input ~ 0
PA4
Wire Wire Line
	11750 7400 11600 7400
Text GLabel 11600 7400 0    50   Input ~ 0
PA0
Wire Wire Line
	12450 7300 13150 7300
Entry Wire Line
	13050 6250 13150 6350
Wire Wire Line
	13150 6350 13150 7300
Wire Wire Line
	12450 7400 14300 7400
Text Notes 12700 7300 2    50   Italic 0
blue
Text Notes 12700 7400 2    50   Italic 0
blue
Text Notes 12800 7700 2    50   Italic 0
orange
Entry Wire Line
	13050 7550 13150 7650
Wire Wire Line
	12450 7700 13150 7700
Wire Wire Line
	13150 7650 13150 7700
Wire Wire Line
	12450 7800 13150 7800
Wire Wire Line
	13150 7800 13150 8650
Wire Wire Line
	13150 8650 14350 8650
Text Notes 12800 7800 2    50   Italic 0
orange
$Comp
L power:GND #PWR0101
U 1 1 601C2758
P 11300 7850
F 0 "#PWR0101" H 11300 7600 50  0001 C CNN
F 1 "GND" H 11305 7677 50  0000 C CNN
F 2 "" H 11300 7850 50  0001 C CNN
F 3 "" H 11300 7850 50  0001 C CNN
	1    11300 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 7850 11300 7600
Wire Wire Line
	11300 7600 11750 7600
$Comp
L power:+5VD #PWR0102
U 1 1 601DAD9B
P 11300 7200
F 0 "#PWR0102" H 11300 7050 50  0001 C CNN
F 1 "+5VD" H 11315 7373 50  0000 C CNN
F 2 "" H 11300 7200 50  0001 C CNN
F 3 "" H 11300 7200 50  0001 C CNN
	1    11300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 7200 11300 7500
Wire Wire Line
	11300 7500 11750 7500
Text Notes 11750 7050 0    50   Italic 0
Pinout of the sheet motors_adcs\nis the same as on the protoboard\n
$Comp
L MCU_ModuleV2:NUCLEO144-F767ZI U1
U 1 1 5F90AA61
P 3250 5750
F 0 "U1" H 3600 9500 50  0000 C CNN
F 1 "NUCLEO144-F767ZI" H 3600 9400 50  0000 C CNN
F 2 "Module:ST_Morpho_Connector_144_STLink" H 4100 2100 50  0001 L CNN
F 3 "" H 2350 6050 50  0001 C CNN
	1    3250 5750
	1    0    0    -1  
$EndComp
Text Label 1950 5850 2    50   Italic 0
I2C_RULLER_SDA
Text Label 1950 5950 2    50   Italic 0
I2C_RULLER_SCL
Text GLabel 1250 5850 0    50   Input ~ 0
PF0
Text GLabel 1250 5950 0    50   Input ~ 0
PF1
Wire Wire Line
	1250 5950 1950 5950
Wire Wire Line
	1950 5850 1250 5850
Wire Notes Line
	5900 2750 7950 2750
Wire Notes Line
	8050 650  8050 2750
Wire Notes Line
	8050 2750 9650 2750
Wire Notes Line
	9650 2750 9650 650 
Wire Notes Line
	5900 650  5900 2750
Wire Notes Line
	7950 2750 7950 650 
Text Notes 8150 2500 0    50   Italic 0
TIM3 - Right wheel: A2, B2, Z2\nTIM8 - Left wheel: A1, B1, Z1\n
Wire Notes Line
	11150 650  15900 650 
Wire Notes Line
	11150 9050 15900 9050
Text Notes 5950 10400 0    50   Italic 0
Placed on arduino connector\n
Wire Notes Line
	5900 10650 9550 10650
Wire Notes Line
	9550 7800 9550 10650
Wire Notes Line
	5900 7800 5900 10650
Text Notes 11250 900  0    50   ~ 10
Do not place on arduino connector\nwhen IMU board placed - pins are in conflict\n
Wire Notes Line
	11150 9050 11150 650 
Wire Notes Line
	15900 650  15900 9050
Text Notes 4200 950  0    50   Italic 0
Not connected nets are here due to\nthe backward comaptibility issue
NoConn ~ 4100 850 
Wire Notes Line
	11050 2750 11050 650 
Wire Notes Line
	9750 2750 9750 650 
Wire Notes Line
	9750 2750 11050 2750
Wire Notes Line
	9750 650  11050 650 
Text Notes 9800 2700 0    100  Italic 20
Ruller\n
Wire Notes Line
	11050 2850 11050 7700
Wire Notes Line
	5900 2850 11050 2850
Wire Notes Line
	5900 7700 11050 7700
$Sheet
S 10350 1050 600  900 
U 603CC0C8
F0 "ruller" 50
F1 "ruller.sch" 50
F2 "3V3" I L 10350 1350 50 
F3 "SDA" I L 10350 1450 50 
F4 "SCL" I L 10350 1550 50 
F5 "GND" I L 10350 1650 50 
$EndSheet
Text Notes 10550 1400 0    50   ~ 0
/VIN
$Comp
L power:+3.3V #PWR0112
U 1 1 603CD184
P 10150 1050
F 0 "#PWR0112" H 10150 900 50  0001 C CNN
F 1 "+3.3V" H 10165 1223 50  0000 C CNN
F 2 "" H 10150 1050 50  0001 C CNN
F 3 "" H 10150 1050 50  0001 C CNN
	1    10150 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 603CD26B
P 10150 1900
F 0 "#PWR0113" H 10150 1650 50  0001 C CNN
F 1 "GND" H 10155 1727 50  0000 C CNN
F 2 "" H 10150 1900 50  0001 C CNN
F 3 "" H 10150 1900 50  0001 C CNN
	1    10150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1900 10150 1650
Wire Wire Line
	10150 1650 10350 1650
Wire Wire Line
	10150 1050 10150 1350
Wire Wire Line
	10150 1350 10350 1350
Text GLabel 10050 1450 0    50   Input ~ 0
PF0
Text GLabel 10050 1550 0    50   Input ~ 0
PF1
Wire Wire Line
	10050 1450 10350 1450
Wire Wire Line
	10350 1550 10050 1550
Text Notes 11900 9800 0    100  ~ 20
WARNING: Schematics do not include\nthe proto board under the nucleo-144\nand connectors placed on it\n
NoConn ~ 1950 3950
NoConn ~ 1950 3850
Wire Wire Line
	4550 2450 5500 2450
Text GLabel 5500 2450 2    50   Input ~ 0
PA0
Text Label 4550 2450 0    50   Italic 0
CURRENT_SENSOR_RIGHT
NoConn ~ 4550 2750
NoConn ~ 4550 4250
Wire Bus Line
	12950 7550 13900 7550
Wire Bus Line
	12950 6250 13900 6250
Wire Bus Line
	13850 4050 14550 4050
Wire Bus Line
	13650 4150 14550 4150
$EndSCHEMATC
