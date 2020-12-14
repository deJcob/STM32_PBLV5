EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
Title "STM32F4 based AGV-ROS module"
Date "2020-12-03"
Rev "6.4"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ModuleV2:X-NUCLEO-IHM04A1 U3
U 1 1 5F91825A
P 13650 3250
F 0 "U3" H 13675 5365 50  0000 C CNN
F 1 "X-NUCLEO-IHM04A1" H 13675 5274 50  0000 C CNN
F 2 "" H 13750 3250 50  0001 C CNN
F 3 "" H 13750 3250 50  0001 C CNN
	1    13650 3250
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:X-NUCLEO-IKS01A1 U2
U 1 1 5F918337
P 9000 5350
F 0 "U2" H 9025 7465 50  0000 C CNN
F 1 "X-NUCLEO-IKS01A1" H 9025 7374 50  0000 C CNN
F 2 "" H 9100 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
	1    9000 5350
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M3
U 1 1 5F91895D
P 14700 7000
F 0 "M3" H 14847 6996 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 14847 6905 50  0000 L CNN
F 2 "" H 14700 6910 50  0001 C CNN
F 3 "~" H 14700 6910 50  0001 C CNN
F 4 "XD-37GB520" H 14700 7000 50  0001 C CNN "Symbol"
	1    14700 7000
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M1
U 1 1 5F918D4A
P 14250 7000
F 0 "M1" H 14000 7000 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 13250 6900 50  0000 L CNN
F 2 "" H 14250 6910 50  0001 C CNN
F 3 "~" H 14250 6910 50  0001 C CNN
F 4 "XD-37GB520" H 14250 7000 50  0001 C CNN "Symbol"
	1    14250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 7500 14700 7300
Text Label 13400 3600 3    50   ~ 0
A+
Text Label 13500 3600 3    50   ~ 0
A-
Text Label 13600 3600 3    50   ~ 0
B-
Text Label 13700 3600 3    50   ~ 0
B+
$Comp
L power:+12V #PWR017
U 1 1 5F91918F
P 14000 3750
F 0 "#PWR017" H 14000 3600 50  0001 C CNN
F 1 "+12V" H 14015 3923 50  0000 C CNN
F 2 "" H 14000 3750 50  0001 C CNN
F 3 "" H 14000 3750 50  0001 C CNN
	1    14000 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F91926E
P 13800 3750
F 0 "#PWR016" H 13800 3500 50  0001 C CNN
F 1 "GND" H 13805 3577 50  0000 C CNN
F 2 "" H 13800 3750 50  0001 C CNN
F 3 "" H 13800 3750 50  0001 C CNN
	1    13800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 3550 13800 3750
Wire Wire Line
	13900 3550 13900 3650
Wire Wire Line
	13900 3650 14000 3650
Wire Wire Line
	14000 3650 14000 3750
Wire Wire Line
	13400 3550 13400 4150
Wire Wire Line
	13500 3550 13500 4150
Entry Wire Line
	13600 4050 13700 4150
Entry Wire Line
	13700 4050 13800 4150
Entry Wire Line
	13500 4150 13600 4250
Entry Wire Line
	13400 4150 13500 4250
Entry Wire Line
	13700 4050 13800 4150
Wire Wire Line
	13700 3550 13700 4050
Wire Wire Line
	13600 4050 13600 3550
Text Label 13850 4250 0    50   ~ 0
RIGHT_MOTORS
Text Label 13850 4150 0    50   ~ 0
LEFT_MOTORS
Text Label 12950 6400 0    50   ~ 0
LEFT_MOTORS
Wire Wire Line
	14700 6550 14700 6800
Entry Wire Line
	13000 6400 13100 6500
Entry Wire Line
	13850 6400 13950 6500
Wire Wire Line
	14250 7300 14250 7500
Connection ~ 14250 7500
Wire Wire Line
	14250 7500 14700 7500
Wire Wire Line
	14250 6550 14250 6800
Text Label 13950 8250 0    50   ~ 0
A+
Text Label 13100 8250 0    50   ~ 0
A-
Text Label 12950 8100 0    50   ~ 0
RIGHT_MOTORS
Text Label 13950 6550 0    50   ~ 0
B+
Text Label 13100 6550 0    50   ~ 0
B-
Connection ~ 3350 10100
$Comp
L power:GND #PWR04
U 1 1 5F940544
P 3350 10200
F 0 "#PWR04" H 3350 9950 50  0001 C CNN
F 1 "GND" H 3355 10027 50  0000 C CNN
F 2 "" H 3350 10200 50  0001 C CNN
F 3 "" H 3350 10200 50  0001 C CNN
	1    3350 10200
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR02
U 1 1 5F940773
P 2750 1450
F 0 "#PWR02" H 2750 1300 50  0001 C CNN
F 1 "+5VD" H 2765 1623 50  0000 C CNN
F 2 "" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5F944A86
P 2950 1450
F 0 "#PWR03" H 2950 1300 50  0001 C CNN
F 1 "+3.3V" H 2965 1623 50  0000 C CNN
F 2 "" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5F944B12
P 8050 3750
F 0 "#PWR08" H 8050 3600 50  0001 C CNN
F 1 "+3.3V" H 8065 3923 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4000 8200 4000
Wire Wire Line
	8200 3800 8050 3800
Wire Wire Line
	8200 4300 8050 4300
Wire Wire Line
	8050 4200 8200 4200
$Comp
L power:GND #PWR09
U 1 1 5F94DD70
P 8050 4300
F 0 "#PWR09" H 8050 4050 50  0001 C CNN
F 1 "GND" H 8055 4127 50  0000 C CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "" H 8050 4300 50  0001 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F9529FE
P 10050 3950
F 0 "#PWR010" H 10050 3700 50  0001 C CNN
F 1 "GND" H 10055 3777 50  0000 C CNN
F 2 "" H 10050 3950 50  0001 C CNN
F 3 "" H 10050 3950 50  0001 C CNN
	1    10050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3850 10050 3850
Wire Wire Line
	10050 3850 10050 3950
Wire Wire Line
	14500 1750 14700 1750
Wire Wire Line
	12850 2200 12700 2200
$Comp
L power:GND #PWR015
U 1 1 5F957DD6
P 13250 5300
F 0 "#PWR015" H 13250 5050 50  0001 C CNN
F 1 "GND" H 13255 5127 50  0000 C CNN
F 2 "" H 13250 5300 50  0001 C CNN
F 3 "" H 13250 5300 50  0001 C CNN
	1    13250 5300
	-1   0    0    1   
$EndComp
NoConn ~ 8200 4800
NoConn ~ 8200 4900
Wire Wire Line
	9850 3550 9950 3550
Wire Wire Line
	9850 3650 9950 3650
Wire Wire Line
	9850 4750 9950 4750
Wire Wire Line
	9850 4850 9950 4850
Wire Wire Line
	9850 4950 9950 4950
Wire Wire Line
	9850 5150 9950 5150
Wire Wire Line
	8200 5100 8100 5100
Wire Wire Line
	8100 5000 8200 5000
NoConn ~ 12850 2750
NoConn ~ 14500 1950
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5F92B9A4
P 8700 7650
F 0 "J2" H 8550 8200 50  0000 L CNN
F 1 "Ardu Conn 01x08" H 8300 8100 50  0000 L CNN
F 2 "" H 8700 7650 50  0001 C CNN
F 3 "~" H 8700 7650 50  0001 C CNN
	1    8700 7650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5F92BB2C
P 8700 8550
F 0 "J3" H 8600 8950 50  0000 L CNN
F 1 "Ardu Conn 01x06" H 8300 8850 50  0000 L CNN
F 2 "" H 8700 8550 50  0001 C CNN
F 3 "~" H 8700 8550 50  0001 C CNN
	1    8700 8550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J4
U 1 1 5F92BBE8
P 9200 7650
F 0 "J4" H 9000 6900 50  0000 C CNN
F 1 "Ardu Conn 01x10" H 9000 7000 50  0000 C CNN
F 2 "" H 9200 7650 50  0001 C CNN
F 3 "~" H 9200 7650 50  0001 C CNN
	1    9200 7650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Female J5
U 1 1 5F92BCDA
P 9200 8750
F 0 "J5" H 9050 8100 50  0000 C CNN
F 1 "Ardu Conn 01x08" H 9000 8200 50  0000 C CNN
F 2 "" H 9200 8750 50  0001 C CNN
F 3 "~" H 9200 8750 50  0001 C CNN
	1    9200 8750
	-1   0    0    1   
$EndComp
NoConn ~ 8500 7350
Text GLabel 7900 7450 0    50   Input ~ 0
IOREF
Text GLabel 7900 7750 0    50   Input ~ 0
+5V
Text GLabel 7900 7550 0    50   Input ~ 0
NRST
Text GLabel 7900 8350 0    50   Input ~ 0
PA3
Text GLabel 7900 8450 0    50   Input ~ 0
PC0
Text GLabel 7900 8550 0    50   Input ~ 0
PC3
Text GLabel 7900 8650 0    50   Input ~ 0
PF3
Text GLabel 7900 8750 0    50   Input ~ 0
PF5
Text GLabel 7900 8850 0    50   Input ~ 0
PF10
Text GLabel 10100 7150 2    50   Input ~ 0
PB8
Text GLabel 10100 7250 2    50   Input ~ 0
PB9
Text GLabel 10100 7350 2    50   Input ~ 0
AVDD
Text GLabel 10100 7550 2    50   Input ~ 0
PA5
Text GLabel 10100 7650 2    50   Input ~ 0
PA6
Text GLabel 10100 7750 2    50   Input ~ 0
PA7
Text GLabel 10100 7850 2    50   Input ~ 0
PD14
Text GLabel 10100 7950 2    50   Input ~ 0
PD15
Text GLabel 10100 8050 2    50   Input ~ 0
PF12
Text GLabel 10100 8350 2    50   Input ~ 0
PF13
Text GLabel 10100 8450 2    50   Input ~ 0
PE9
Text GLabel 10100 8550 2    50   Input ~ 0
PE11
Text GLabel 10100 8650 2    50   Input ~ 0
PF14
Text GLabel 10100 8750 2    50   Input ~ 0
PE13
Text GLabel 10100 8850 2    50   Input ~ 0
PF15
Text GLabel 10100 8950 2    50   Input ~ 0
PG14
Text GLabel 10100 9050 2    50   Input ~ 0
PG9
Text GLabel 10100 7150 2    50   Input ~ 0
PB8
Text GLabel 2850 2400 1    50   Input ~ 0
IOREF
Text GLabel 2150 3000 0    50   Input ~ 0
NRST
$Comp
L power:+5VD #PWR07
U 1 1 5F920C0B
P 7800 8050
F 0 "#PWR07" H 7800 7900 50  0001 C CNN
F 1 "+5VD" V 7800 8200 50  0000 L CNN
F 2 "" H 7800 8050 50  0001 C CNN
F 3 "" H 7800 8050 50  0001 C CNN
	1    7800 8050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F920CC1
P 7800 7900
F 0 "#PWR06" H 7800 7650 50  0001 C CNN
F 1 "GND" V 7800 7700 50  0000 C CNN
F 2 "" H 7800 7900 50  0001 C CNN
F 3 "" H 7800 7900 50  0001 C CNN
	1    7800 7900
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 7850 8450 7850
Wire Wire Line
	8450 7950 8500 7950
$Comp
L power:GND #PWR014
U 1 1 5F927BC5
P 10350 7450
F 0 "#PWR014" H 10350 7200 50  0001 C CNN
F 1 "GND" V 10350 7250 50  0000 C CNN
F 2 "" H 10350 7450 50  0001 C CNN
F 3 "" H 10350 7450 50  0001 C CNN
	1    10350 7450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5F92F312
P 7800 7650
F 0 "#PWR05" H 7800 7500 50  0001 C CNN
F 1 "+3.3V" V 7815 7778 50  0000 L CNN
F 2 "" H 7800 7650 50  0001 C CNN
F 3 "" H 7800 7650 50  0001 C CNN
	1    7800 7650
	0    -1   -1   0   
$EndComp
Text GLabel 5500 5000 2    50   Input ~ 0
PB4
Text GLabel 5500 5100 2    50   Input ~ 0
PB5
Text GLabel 5500 5400 2    50   Input ~ 0
PB8
Text GLabel 5500 5500 2    50   Input ~ 0
PB9
Text GLabel 5500 6300 2    50   Input ~ 0
PC0
Text GLabel 5500 7000 2    50   Input ~ 0
PC7
Text GLabel 4250 2400 1    50   Input ~ 0
AVDD
Wire Wire Line
	8450 7850 8450 7900
Wire Wire Line
	7900 8750 8200 8750
Wire Wire Line
	7900 8650 8500 8650
Wire Wire Line
	8500 8550 7900 8550
Wire Wire Line
	7900 8450 8500 8450
Wire Wire Line
	8500 8350 7900 8350
Wire Wire Line
	7800 8050 8500 8050
Wire Wire Line
	7800 7900 8450 7900
Connection ~ 8450 7900
Wire Wire Line
	8450 7900 8450 7950
Wire Wire Line
	7900 7750 8500 7750
Wire Wire Line
	7800 7650 8500 7650
Wire Wire Line
	7900 7550 8500 7550
Wire Wire Line
	8500 7450 7900 7450
Wire Wire Line
	9400 7150 9800 7150
Wire Wire Line
	10100 7250 9900 7250
Wire Wire Line
	9400 7350 10100 7350
Wire Wire Line
	9400 7450 10350 7450
Wire Wire Line
	10100 7550 9400 7550
Wire Wire Line
	9400 7650 10100 7650
Wire Wire Line
	10100 7750 9400 7750
Wire Wire Line
	9400 7850 10100 7850
Wire Wire Line
	10100 7950 9400 7950
Wire Wire Line
	9400 8050 10100 8050
Wire Wire Line
	9400 8350 10100 8350
Wire Wire Line
	9400 8950 10100 8950
Text GLabel 8100 5000 0    50   Input ~ 0
MAGNET_INT
Text GLabel 8100 5100 0    50   Input ~ 0
MAGNET_DATA_READY
Text GLabel 9950 4750 2    50   Input ~ 0
HUMIDITY_DATA_READY
Text GLabel 9950 4850 2    50   Input ~ 0
PRESSURE_INT
Text GLabel 9950 4950 2    50   Input ~ 0
IMU_INT
Text GLabel 9950 5150 2    50   Input ~ 0
USER_INT
Text GLabel 9950 3650 2    50   Input ~ 0
SENSORS_I2C_SDA
Text GLabel 9950 3550 2    50   Input ~ 0
SENSORS_I2C_SCL
Text GLabel 7750 9150 0    50   Input ~ 0
MAGNET_INT
Text GLabel 7750 9500 0    50   Input ~ 0
MAGNET_DATA_READY
Wire Wire Line
	7750 9150 7850 9150
Wire Wire Line
	8200 9150 8200 8750
Connection ~ 8200 8750
Wire Wire Line
	8200 8750 8500 8750
Wire Wire Line
	8300 9500 8150 9500
Text GLabel 10250 9450 2    50   Input ~ 0
HUMIDITY_DATA_READY
Text GLabel 10250 9800 2    50   Input ~ 0
PRESSURE_INT
Text GLabel 10250 10150 2    50   Input ~ 0
IMU_INT
Text GLabel 10250 10500 2    50   Input ~ 0
USER_INT
Wire Wire Line
	10250 9450 10150 9450
Wire Wire Line
	9650 9800 9850 9800
Wire Wire Line
	10250 10150 10150 10150
Wire Wire Line
	10250 10500 10150 10500
Text GLabel 10400 6300 2    50   Input ~ 0
SENSORS_I2C_SDA
Text GLabel 10400 6700 2    50   Input ~ 0
SENSORS_I2C_SCL
Wire Wire Line
	9900 6700 10000 6700
Wire Wire Line
	10400 6300 10300 6300
Wire Wire Line
	9800 6300 9800 7150
Connection ~ 9800 7150
Wire Wire Line
	9800 7150 10100 7150
Wire Wire Line
	9900 6700 9900 7250
Connection ~ 9900 7250
Wire Wire Line
	9900 7250 9400 7250
Wire Wire Line
	10000 6300 9800 6300
Wire Wire Line
	10300 6700 10400 6700
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5FB432E8
P 10000 9450
F 0 "JP3" H 10000 9655 50  0000 C CNN
F 1 "Bridge open" H 10000 9564 50  0000 C CNN
F 2 "" H 10000 9450 50  0001 C CNN
F 3 "~" H 10000 9450 50  0001 C CNN
	1    10000 9450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5FB54A78
P 10000 9800
F 0 "JP4" H 10000 10005 50  0000 C CNN
F 1 "Bridge open" H 10000 9914 50  0000 C CNN
F 2 "" H 10000 9800 50  0001 C CNN
F 3 "~" H 10000 9800 50  0001 C CNN
	1    10000 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 9800 10250 9800
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5FB54B23
P 10000 10150
F 0 "JP5" H 10000 10355 50  0000 C CNN
F 1 "Bridge open" H 10000 10264 50  0000 C CNN
F 2 "" H 10000 10150 50  0001 C CNN
F 3 "~" H 10000 10150 50  0001 C CNN
	1    10000 10150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5FB54BC4
P 10000 10500
F 0 "JP6" H 10000 10705 50  0000 C CNN
F 1 "Bridge open" H 10000 10614 50  0000 C CNN
F 2 "" H 10000 10500 50  0001 C CNN
F 3 "~" H 10000 10500 50  0001 C CNN
	1    10000 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 8550 9650 8550
Wire Wire Line
	9400 8450 9750 8450
Wire Wire Line
	9400 8650 9550 8650
Wire Wire Line
	9400 8750 10100 8750
Wire Wire Line
	9400 8850 9450 8850
Wire Wire Line
	9400 9050 10100 9050
Wire Wire Line
	9750 9450 9750 8450
Connection ~ 9750 8450
Wire Wire Line
	9750 8450 10100 8450
Wire Wire Line
	9650 8550 9650 9800
Connection ~ 9650 8550
Wire Wire Line
	9650 8550 10100 8550
Wire Wire Line
	9550 10150 9550 8650
Wire Wire Line
	9550 10150 9850 10150
Connection ~ 9550 8650
Wire Wire Line
	9550 8650 10100 8650
Wire Wire Line
	9450 8850 9450 10500
Wire Wire Line
	9450 10500 9850 10500
Connection ~ 9450 8850
Wire Wire Line
	9450 8850 10100 8850
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5FBAC2B0
P 8000 9500
F 0 "JP2" H 8000 9705 50  0000 C CNN
F 1 "Bridge open" H 8000 9614 50  0000 C CNN
F 2 "" H 8000 9500 50  0001 C CNN
F 3 "~" H 8000 9500 50  0001 C CNN
	1    8000 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 9500 7750 9500
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FBAC302
P 8000 9150
F 0 "JP1" H 8000 9355 50  0000 C CNN
F 1 "Bridge open" H 8000 9264 50  0000 C CNN
F 2 "" H 8000 9150 50  0001 C CNN
F 3 "~" H 8000 9150 50  0001 C CNN
	1    8000 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 9150 8200 9150
Wire Wire Line
	7900 8850 8300 8850
Wire Wire Line
	8300 8850 8300 9500
Connection ~ 8300 8850
Wire Wire Line
	8300 8850 8500 8850
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 5FBE4930
P 10150 6700
F 0 "JP8" H 10150 6905 50  0000 C CNN
F 1 "Bridge closed" H 10150 6814 50  0000 C CNN
F 2 "" H 10150 6700 50  0001 C CNN
F 3 "~" H 10150 6700 50  0001 C CNN
	1    10150 6700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 5FBE49A6
P 10150 6300
F 0 "JP7" H 10150 6505 50  0000 C CNN
F 1 "Bridge closed" H 10150 6414 50  0000 C CNN
F 2 "" H 10150 6300 50  0001 C CNN
F 3 "~" H 10150 6300 50  0001 C CNN
	1    10150 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3750 8050 3800
Connection ~ 8050 3800
Wire Wire Line
	8050 3800 8050 4000
Wire Wire Line
	8050 4200 8050 4300
Connection ~ 8050 4300
Wire Wire Line
	9850 9450 9750 9450
Wire Notes Line
	7200 3100 10850 3100
Text Notes 10400 10750 2    100  Italic 20
Nucleo144-F767ZI Ardunio Connector usage
Text Notes 8250 10500 2    50   Italic 0
Bridge numbers may be different
Text Notes 13650 9700 0    50   Italic 0
DC Motors with gearbox\nXD-37G520
Text Notes 7250 5800 0    100  Italic 20
Sensors Board\n
Text Notes 11650 9700 0    100  Italic 20
Motors and H-Bridge\n
NoConn ~ 3150 2400
NoConn ~ 3250 2400
NoConn ~ 3350 2400
NoConn ~ 2650 2400
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FA4AF62
P 2250 1650
F 0 "J1" V 2050 1600 50  0000 C CNN
F 1 "2PXH2.54" V 2150 1550 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "~" H 2250 1650 50  0001 C CNN
	1    2250 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FA56310
P 2150 2250
F 0 "#PWR01" H 2150 2000 50  0001 C CNN
F 1 "GND" V 2155 2077 50  0000 C CNN
F 2 "" H 2150 2250 50  0001 C CNN
F 3 "" H 2150 2250 50  0001 C CNN
	1    2150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 10100 3450 10100
Wire Wire Line
	2650 10100 2750 10100
Wire Wire Line
	2650 10000 2650 10100
Wire Wire Line
	2750 10000 2750 10100
Connection ~ 2750 10100
Wire Wire Line
	2750 10100 2850 10100
Wire Wire Line
	2850 10000 2850 10100
Connection ~ 2850 10100
Wire Wire Line
	2850 10100 2950 10100
Wire Wire Line
	2950 10000 2950 10100
Connection ~ 2950 10100
Wire Wire Line
	2950 10100 3050 10100
Wire Wire Line
	3050 10000 3050 10100
Connection ~ 3050 10100
Wire Wire Line
	3050 10100 3150 10100
Wire Wire Line
	3150 10000 3150 10100
Connection ~ 3150 10100
Wire Wire Line
	3150 10100 3250 10100
Wire Wire Line
	3250 10000 3250 10100
Connection ~ 3250 10100
Wire Wire Line
	3250 10100 3350 10100
Wire Wire Line
	3350 10000 3350 10100
Wire Wire Line
	3450 10000 3450 10100
Connection ~ 3450 10100
Wire Wire Line
	3450 10100 3550 10100
Wire Wire Line
	3550 10000 3550 10100
Connection ~ 3550 10100
Wire Wire Line
	3550 10100 3650 10100
Wire Wire Line
	3650 10000 3650 10100
Connection ~ 3650 10100
Wire Wire Line
	3650 10100 3750 10100
Wire Wire Line
	3750 10000 3750 10100
Connection ~ 3750 10100
Wire Wire Line
	3750 10100 3850 10100
Wire Wire Line
	3850 10000 3850 10100
Connection ~ 3850 10100
Wire Wire Line
	3850 10100 3950 10100
Wire Wire Line
	3950 10000 3950 10100
Connection ~ 3950 10100
Wire Wire Line
	3950 10100 4050 10100
Wire Wire Line
	4050 10000 4050 10100
Text Notes 4250 10300 0    100  Italic 20
Nucleo-144-F767ZI
Wire Wire Line
	13950 6500 13950 6550
Wire Wire Line
	13950 6550 14250 6550
Wire Wire Line
	14250 6550 14700 6550
Connection ~ 14250 6550
$Comp
L Motor:Motor_DC_ALT M4
U 1 1 5FAAE7F3
P 14700 8700
F 0 "M4" H 14847 8696 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 14847 8605 50  0000 L CNN
F 2 "" H 14700 8610 50  0001 C CNN
F 3 "~" H 14700 8610 50  0001 C CNN
F 4 "XD-37GB520" H 14700 8700 50  0001 C CNN "Symbol"
	1    14700 8700
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC_ALT M2
U 1 1 5FAAE7FB
P 14250 8700
F 0 "M2" H 14000 8700 50  0000 L CNN
F 1 "DC Motor 12V 300RPM" H 13250 8600 50  0000 L CNN
F 2 "" H 14250 8610 50  0001 C CNN
F 3 "~" H 14250 8610 50  0001 C CNN
F 4 "XD-37GB520" H 14250 8700 50  0001 C CNN "Symbol"
	1    14250 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 9200 14700 9000
Wire Wire Line
	14700 8250 14700 8500
Entry Wire Line
	13000 8100 13100 8200
Entry Wire Line
	13850 8100 13950 8200
Wire Wire Line
	14250 9000 14250 9200
Connection ~ 14250 9200
Wire Wire Line
	14250 9200 14700 9200
Wire Wire Line
	14250 8250 14250 8500
Wire Wire Line
	13950 8200 13950 8250
Wire Wire Line
	13950 8250 14250 8250
Wire Wire Line
	14250 8250 14700 8250
Connection ~ 14250 8250
Wire Wire Line
	13100 9200 14250 9200
$Sheet
S 9500 950  800  900 
U 5FAF8BBB
F0 "Encoders" 50
F1 "encoders.sch" 50
F2 "A1" I L 9500 1150 50 
F3 "A2" I L 9500 1450 50 
F4 "B1" I L 9500 1250 50 
F5 "B2" I L 9500 1550 50 
F6 "Z1" I L 9500 1350 50 
F7 "Z2" I L 9500 1650 50 
F8 "5V" I L 9500 1050 50 
F9 "GND" I L 9500 1750 50 
$EndSheet
$Comp
L power:+5VD #PWR018
U 1 1 5FB1DCDB
P 9350 950
F 0 "#PWR018" H 9350 800 50  0001 C CNN
F 1 "+5VD" H 9365 1123 50  0000 C CNN
F 2 "" H 9350 950 50  0001 C CNN
F 3 "" H 9350 950 50  0001 C CNN
	1    9350 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FB1DDE2
P 9350 1900
F 0 "#PWR019" H 9350 1650 50  0001 C CNN
F 1 "GND" V 9355 1727 50  0000 C CNN
F 2 "" H 9350 1900 50  0001 C CNN
F 3 "" H 9350 1900 50  0001 C CNN
	1    9350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 950  9350 1050
Wire Wire Line
	9350 1050 9500 1050
Wire Wire Line
	9350 1900 9350 1750
Wire Wire Line
	9350 1750 9500 1750
Text GLabel 9350 1150 0    50   Input ~ 0
PC6
Text GLabel 9350 1250 0    50   Input ~ 0
PC7
Text GLabel 9350 1550 0    50   Input ~ 0
PB5
Text GLabel 9350 1450 0    50   Input ~ 0
PB4
Wire Wire Line
	9500 1550 9350 1550
Wire Wire Line
	9350 1450 9500 1450
Wire Wire Line
	9350 1250 9500 1250
Wire Wire Line
	9500 1150 9350 1150
Wire Wire Line
	9500 1650 9350 1650
Wire Wire Line
	9500 1350 9350 1350
Wire Notes Line
	10550 650  8950 650 
Text Notes 11600 5750 0    50   Italic 0
EN input are used to\nturn on the MOSFETs.\nCould be used for \novercurrent protection \n(R8 i R9 should be around \n10k for OCP 2.5A\nTypically there are 5.1k \nresistors here - 5A OCP)
Text Notes 11600 5950 0    50   Italic 0
ADCs are not used and\nshould be connected to GND.
Text Notes 8150 2950 0    98   Italic 20
TODO: electronic ruller \n
Text Notes 14350 6550 0    50   Italic 0
red
Text Notes 14400 9200 0    50   Italic 0
red
Text Notes 14350 8250 0    50   Italic 0
black
Text Notes 14350 7500 0    50   Italic 0
black
Text GLabel 3050 1800 1    50   Input ~ 0
+5V
Wire Wire Line
	2250 1850 2250 2050
Wire Wire Line
	2250 2050 2750 2050
Wire Wire Line
	2750 2050 2750 2400
Wire Notes Line
	6800 10850 6800 6000
Wire Notes Line
	6800 6000 11200 6000
Wire Notes Line
	11200 6000 11200 10850
Wire Notes Line
	11200 10850 6800 10850
Wire Notes Line
	7200 5850 10850 5850
Wire Notes Line
	10850 3100 10850 5850
Wire Notes Line
	7200 3100 7200 5850
Text Notes 9750 2350 0    100  Italic 20
Encoders
Wire Notes Line
	10550 2450 8950 2450
Wire Notes Line
	8950 650  8950 2450
Wire Notes Line
	10550 650  10550 2450
Text Label 4750 5400 0    50   Italic 0
I2C_SENSORS_SDA
Wire Wire Line
	5500 5400 4750 5400
Wire Wire Line
	5500 5500 4750 5500
Text Label 4750 5500 0    50   Italic 0
I2C_SENSORS_SCL
Text Label 4750 5300 0    50   Italic 0
LD2[Blue]Indicator
Wire Wire Line
	5500 5100 4750 5100
Wire Wire Line
	4750 5000 5500 5000
Text Label 4750 5100 0    50   Italic 0
TIM3_CH2
NoConn ~ 4750 5200
Text Label 4750 5000 0    50   Italic 0
TIM3_CH1
Text Label 4750 4900 0    50   Italic 0
SWO
Wire Wire Line
	4950 4900 4750 4900
NoConn ~ 4950 4900
NoConn ~ 5200 4600
Text Label 4750 4600 0    50   Italic 0
LD1[Green]
Wire Wire Line
	5200 4600 4750 4600
NoConn ~ 4750 4800
Text Label 4750 5600 0    50   Italic 0
SPI2_SCK
Wire Wire Line
	4750 5600 5150 5600
NoConn ~ 5150 5600
NoConn ~ 4750 5700
NoConn ~ 4750 5800
Text Label 4750 5900 0    50   Italic 0
RMI_TXD1
Text Label 4750 6000 0    50   Italic 0
LD3[Red]
Wire Wire Line
	4750 5900 5150 5900
Wire Wire Line
	5150 6000 4750 6000
NoConn ~ 5150 6000
NoConn ~ 5150 5900
NoConn ~ 4750 6100
NoConn ~ 4850 5250
Wire Wire Line
	5500 5300 4750 5300
NoConn ~ 5500 5300
Text Label 4750 3000 0    50   Italic 0
RMII_REF_CLK
Text Label 4750 3100 0    50   Italic 0
RMII_MDIO
Text Label 4750 3600 0    50   Italic 0
RMII_CRS_DV
Text Label 4750 3700 0    50   Italic 0
USB_OTH_FS_SOF
Text Label 4750 3800 0    50   Italic 0
USB_OTG_FS_VUS
Text Label 4750 3900 0    50   Italic 0
USB_OTG_FS_ID
Text Label 4750 4000 0    50   Italic 0
USB_OTG_FS_DM
Text Label 4750 4100 0    50   Italic 0
USB_OTG_FS_DP
Text Label 4750 4200 0    50   Italic 0
TMS
Text Label 4750 4300 0    50   Italic 0
TCK
Wire Wire Line
	4950 4200 4750 4200
Wire Wire Line
	4950 4300 4750 4300
Wire Wire Line
	4750 4100 5400 4100
Wire Wire Line
	5400 4000 4750 4000
Wire Wire Line
	4750 3900 5400 3900
Wire Wire Line
	5450 3800 4750 3800
Wire Wire Line
	5450 3700 4750 3700
Wire Wire Line
	4750 3600 5250 3600
Wire Wire Line
	4750 3100 5200 3100
Wire Wire Line
	5300 3000 4750 3000
NoConn ~ 5300 3000
NoConn ~ 5200 3100
NoConn ~ 5250 3600
NoConn ~ 5450 3700
NoConn ~ 5450 3800
NoConn ~ 5400 3900
NoConn ~ 5400 4000
NoConn ~ 5400 4100
NoConn ~ 4950 4200
NoConn ~ 4950 4300
NoConn ~ 4750 4400
NoConn ~ 4750 3500
NoConn ~ 4750 3400
NoConn ~ 4750 3300
NoConn ~ 4750 2900
Text Label 4750 6300 0    50   Italic 0
BRIDGE_B2
Text Label 4750 6400 0    50   Italic 0
RMII_MDC
Wire Wire Line
	4750 6400 5150 6400
Wire Wire Line
	4750 6300 5500 6300
NoConn ~ 5150 6400
Text Label 4750 6500 0    50   Italic 0
SPI2_MISO
Text Label 4750 6600 0    50   Italic 0
SPI2_MOSI
Text Label 4750 6700 0    50   Italic 0
RMII_RXD0
Text Label 4750 6800 0    50   Italic 0
RMII_RXD1
Text GLabel 5500 6900 2    50   Input ~ 0
PC6
Wire Wire Line
	4750 6900 5500 6900
Wire Wire Line
	4750 7000 5500 7000
Text Label 4750 6900 0    50   Italic 0
TIM8_CH1
Text Label 4750 7000 0    50   Italic 0
TIM8_CH2
Wire Wire Line
	4750 6500 5200 6500
Wire Wire Line
	4750 6600 5200 6600
Wire Wire Line
	5200 6700 4750 6700
Wire Wire Line
	4750 6800 5200 6800
NoConn ~ 5200 6500
NoConn ~ 5200 6600
NoConn ~ 5200 6700
NoConn ~ 5200 6800
NoConn ~ 4750 7100
NoConn ~ 4750 7200
Text Label 4750 7300 0    50   Italic 0
UART_RFID_TX
Text Label 4750 7400 0    50   Italic 0
UART_RFID_RX
Text Label 4750 7500 0    50   Italic 0
UART_ULTRASOUND_TX
Wire Wire Line
	4750 7500 5650 7500
Wire Wire Line
	4750 7400 5350 7400
Wire Wire Line
	5350 7300 4750 7300
NoConn ~ 5350 7300
NoConn ~ 5350 7400
NoConn ~ 5650 7500
Text Label 4750 7600 0    50   Italic 0
USER_BTN[B1]
Wire Wire Line
	4750 7600 5350 7600
NoConn ~ 5350 7600
Text Label 4750 7700 0    50   Italic 0
RCC_OSC32_IN
Text Label 4750 7800 0    50   Italic 0
RCC_OSC32_OUT
Wire Wire Line
	4750 7800 5450 7800
Wire Wire Line
	4750 7700 5450 7700
NoConn ~ 5450 7700
NoConn ~ 5450 7800
Text Label 4750 8000 0    50   Italic 0
CAN1_RX
Text Label 4750 8100 0    50   Italic 0
CAN1_TX
Text Label 4750 8200 0    50   Italic 0
UART_ULTRASOUND_RX
Text Label 4750 8500 0    50   Italic 0
USART_GPS_TX
Text Label 4750 8600 0    50   Italic 0
USART_GPS_RX
Text Label 4750 8700 0    50   Italic 0
GPIO_ELECTOMAGNET
NoConn ~ 4750 8300
NoConn ~ 4750 8400
NoConn ~ 5650 8200
NoConn ~ 5150 8100
NoConn ~ 5150 8000
Wire Wire Line
	5150 8000 4750 8000
Wire Wire Line
	4750 8100 5150 8100
Wire Wire Line
	5650 8200 4750 8200
Wire Wire Line
	4750 8500 5350 8500
Wire Wire Line
	5350 8600 4750 8600
Wire Wire Line
	4750 8700 5550 8700
Text Label 4750 8800 0    50   Italic 0
STLK_RX
Text Label 4750 8900 0    50   Italic 0
STLK_TX
Wire Wire Line
	4750 8800 5100 8800
Wire Wire Line
	5100 8900 4750 8900
NoConn ~ 5350 8500
NoConn ~ 5350 8600
NoConn ~ 5100 8800
NoConn ~ 5100 8900
NoConn ~ 4750 9000
NoConn ~ 4750 9100
NoConn ~ 4750 9300
NoConn ~ 4750 9200
NoConn ~ 4750 9400
NoConn ~ 4750 9500
Connection ~ 2750 2050
Wire Wire Line
	2750 1450 2750 2050
Wire Wire Line
	2950 1450 2950 2400
Wire Wire Line
	3050 1800 3050 2400
Wire Wire Line
	2150 1850 2150 2250
NoConn ~ 2150 8000
NoConn ~ 2150 8200
NoConn ~ 2150 8300
NoConn ~ 2150 8400
NoConn ~ 2150 8500
NoConn ~ 2150 8600
NoConn ~ 2150 8700
NoConn ~ 2150 8800
NoConn ~ 2150 8900
NoConn ~ 2150 9000
NoConn ~ 2150 9500
Text Label 2150 8100 2    50   Italic 0
SPI1_SS
Text Label 2150 9300 2    50   Italic 0
TIM1_CH3
Text Label 2150 9400 2    50   Italic 0
TIM1_CH4
Text GLabel 1700 9300 0    50   Input ~ 0
PE13
Text GLabel 1700 9400 0    50   Input ~ 0
PE14
Wire Wire Line
	1700 9300 2150 9300
Wire Wire Line
	2150 9400 1700 9400
Wire Wire Line
	2150 8100 1800 8100
NoConn ~ 1800 8100
NoConn ~ 2150 6300
NoConn ~ 2150 6400
NoConn ~ 2150 6500
$Comp
L MCU_ModuleV2:NUCLEO144-F767ZI U1
U 1 1 5F90AA61
P 3450 6200
F 0 "U1" H 3800 9950 50  0000 C CNN
F 1 "NUCLEO144-F767ZI" H 3800 9850 50  0000 C CNN
F 2 "Module:ST_Morpho_Connector_144_STLink" H 4300 2550 50  0001 L CNN
F 3 "" H 2550 6500 50  0001 C CNN
	1    3450 6200
	1    0    0    -1  
$EndComp
NoConn ~ 2150 6700
NoConn ~ 2150 6900
NoConn ~ 2150 7000
NoConn ~ 2150 7100
NoConn ~ 2150 7400
NoConn ~ 2150 7500
NoConn ~ 2150 7600
NoConn ~ 2150 7700
NoConn ~ 2150 7800
Text Label 2150 6600 2    50   Italic 0
BRIDGE_B1
Text Label 2150 6800 2    50   Italic 0
BRIDGE_A2
Text Label 2150 7200 2    50   Italic 0
TESTOWA
Text Label 2150 7300 2    50   Italic 0
BRIDGE_A1
Text GLabel 1650 7300 0    50   Input ~ 0
PF10
Text GLabel 1650 6800 0    50   Input ~ 0
PF5
Text GLabel 1650 6600 0    50   Input ~ 0
PF3
Wire Wire Line
	1650 6600 2150 6600
Wire Wire Line
	2150 6800 1650 6800
Wire Wire Line
	1650 7300 2150 7300
Wire Wire Line
	2150 7200 1750 7200
NoConn ~ 1750 7200
NoConn ~ 2150 5100
NoConn ~ 2150 5000
NoConn ~ 2150 4900
NoConn ~ 2150 4800
NoConn ~ 2150 4700
NoConn ~ 2150 4600
NoConn ~ 2150 5400
NoConn ~ 2150 5600
NoConn ~ 2150 5800
NoConn ~ 2150 6100
Text Label 2150 5200 2    50   ~ 0
USB_PowerSwitchOn
Text Label 2150 5300 2    50   ~ 0
USB_OverCurrent_Protection
Text Label 2150 5500 2    50   ~ 0
USART_MLIDAR_RX
Text Label 2150 5700 2    50   ~ 0
RMII_TX_EN
Text Label 2150 5900 2    50   ~ 0
RMII_TXD0
Text Label 2150 6000 2    50   ~ 0
USAR_MLIDAR_TX
Wire Wire Line
	2150 6000 1400 6000
Wire Wire Line
	2150 5900 1700 5900
Wire Wire Line
	1700 5700 2150 5700
Wire Wire Line
	2150 5500 1400 5500
Wire Wire Line
	2150 5300 1050 5300
Wire Wire Line
	1350 5200 2150 5200
NoConn ~ 1350 5200
NoConn ~ 1050 5300
NoConn ~ 1400 5500
NoConn ~ 1700 5700
NoConn ~ 1700 5900
NoConn ~ 1400 6000
$Sheet
S 7200 1000 1300 1200
U 60B85D04
F0 "Power Management" 50
F1 "Power_management.sch" 50
F2 "+12V" I L 7200 1150 50 
F3 "+5VD" I L 7200 1300 50 
F4 "GND" I L 7200 2050 50 
$EndSheet
Wire Wire Line
	12850 2950 12400 2950
Wire Wire Line
	14500 3050 15000 3050
Wire Wire Line
	14500 2750 14800 2750
Wire Wire Line
	14500 2850 14900 2850
Text Label 14400 5600 2    50   ~ 0
BRIDGE_A1
Text Label 13450 5500 2    50   ~ 0
BRIDGE_B1
Text Label 13450 5600 2    50   ~ 0
BRIDGE_B2
Text Label 14400 5500 2    50   ~ 0
BRIDGE_A2
Text Label 14400 5400 2    50   ~ 0
TIM1_CH3
Text Label 13450 5700 2    50   ~ 0
TIM1_CH4
Wire Notes Line
	6000 10450 900  10450
Wire Notes Line
	900  10450 900  1100
Wire Notes Line
	900  1100 6000 1100
Wire Notes Line
	6000 1100 6000 10450
Wire Wire Line
	3350 10100 3350 10200
$Comp
L power:+5VD #PWR011
U 1 1 60D01787
P 6750 950
F 0 "#PWR011" H 6750 800 50  0001 C CNN
F 1 "+5VD" H 6765 1123 50  0000 C CNN
F 2 "" H 6750 950 50  0001 C CNN
F 3 "" H 6750 950 50  0001 C CNN
	1    6750 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 60D018AA
P 7000 950
F 0 "#PWR013" H 7000 800 50  0001 C CNN
F 1 "+12V" H 7015 1123 50  0000 C CNN
F 2 "" H 7000 950 50  0001 C CNN
F 3 "" H 7000 950 50  0001 C CNN
	1    7000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 6750 1300
Wire Wire Line
	6750 1300 6750 950 
Wire Wire Line
	7000 950  7000 1150
Wire Wire Line
	7000 1150 7200 1150
$Comp
L power:GND #PWR012
U 1 1 60D278D2
P 6750 2200
F 0 "#PWR012" H 6750 1950 50  0001 C CNN
F 1 "GND" H 6755 2027 50  0000 C CNN
F 2 "" H 6750 2200 50  0001 C CNN
F 3 "" H 6750 2200 50  0001 C CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2200 6750 2050
Wire Wire Line
	6750 2050 7200 2050
Wire Notes Line
	6600 650  6600 2550
Wire Notes Line
	6600 2550 8650 2550
Wire Notes Line
	8650 2550 8650 650 
Wire Notes Line
	8650 650  6600 650 
Text Notes 7100 2500 0    100  Italic 20
Power management
Text GLabel 14550 5500 2    50   Input ~ 0
PF5
Text GLabel 14550 5600 2    50   Input ~ 0
PF10
Text GLabel 14550 5400 2    50   Input ~ 0
PE13
NoConn ~ 5550 8700
$Comp
L MCU_ModuleV2:LTS6-NP U12
U 1 1 5FC0A0B2
P 12350 6950
F 0 "U12" H 12600 7550 50  0000 C CNN
F 1 "LTS6-NP" H 12600 7450 50  0000 C CNN
F 2 "Sensor_Current:LEM_LTSR-NP" H 12350 6150 50  0001 C CNN
F 3 "https://www.lem.com/sites/default/files/products_datasheets/ltsr_6-np.pdf" H 12350 6550 50  0001 C CNN
	1    12350 6950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FC0A1D8
P 12350 7550
F 0 "#PWR0101" H 12350 7300 50  0001 C CNN
F 1 "GND" H 12355 7377 50  0000 C CNN
F 2 "" H 12350 7550 50  0001 C CNN
F 3 "" H 12350 7550 50  0001 C CNN
	1    12350 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0102
U 1 1 5FC0A2CA
P 12350 6350
F 0 "#PWR0102" H 12350 6200 50  0001 C CNN
F 1 "+5VD" H 12365 6523 50  0000 C CNN
F 2 "" H 12350 6350 50  0001 C CNN
F 3 "" H 12350 6350 50  0001 C CNN
	1    12350 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 7450 12350 7550
Wire Wire Line
	12350 6450 12350 6350
Wire Wire Line
	12750 6650 12850 6650
Wire Wire Line
	13100 6650 13100 6500
Wire Wire Line
	12850 6650 12850 6750
Wire Wire Line
	12750 6850 12850 6850
Connection ~ 12850 6650
Wire Wire Line
	12850 6650 13100 6650
Wire Wire Line
	12750 6750 12850 6750
Connection ~ 12850 6750
Wire Wire Line
	12850 6750 12850 6850
Wire Wire Line
	12750 7050 12850 7050
Wire Wire Line
	12850 7050 12850 7150
Wire Wire Line
	12850 7500 14250 7500
Wire Wire Line
	12750 7250 12850 7250
Connection ~ 12850 7250
Wire Wire Line
	12850 7250 12850 7500
Wire Wire Line
	12850 7150 12750 7150
Connection ~ 12850 7150
Wire Wire Line
	12850 7150 12850 7250
Wire Wire Line
	11950 6950 11800 6950
Text GLabel 11800 6950 0    50   Input ~ 0
PA3
$Comp
L MCU_ModuleV2:LTS6-NP U13
U 1 1 5FCD065C
P 12350 8650
F 0 "U13" H 12600 9250 50  0000 C CNN
F 1 "LTS6-NP" H 12600 9150 50  0000 C CNN
F 2 "Sensor_Current:LEM_LTSR-NP" H 12350 7850 50  0001 C CNN
F 3 "https://www.lem.com/sites/default/files/products_datasheets/ltsr_6-np.pdf" H 12350 8250 50  0001 C CNN
	1    12350 8650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FCD0663
P 12350 9250
F 0 "#PWR0103" H 12350 9000 50  0001 C CNN
F 1 "GND" H 12355 9077 50  0000 C CNN
F 2 "" H 12350 9250 50  0001 C CNN
F 3 "" H 12350 9250 50  0001 C CNN
	1    12350 9250
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0104
U 1 1 5FCD0669
P 12350 8050
F 0 "#PWR0104" H 12350 7900 50  0001 C CNN
F 1 "+5VD" H 12365 8223 50  0000 C CNN
F 2 "" H 12350 8050 50  0001 C CNN
F 3 "" H 12350 8050 50  0001 C CNN
	1    12350 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 9150 12350 9250
Wire Wire Line
	12350 8150 12350 8050
Wire Wire Line
	12750 8350 12850 8350
Wire Wire Line
	12850 8350 12850 8450
Wire Wire Line
	12750 8550 12850 8550
Connection ~ 12850 8350
Wire Wire Line
	12850 8350 13100 8350
Wire Wire Line
	12750 8450 12850 8450
Connection ~ 12850 8450
Wire Wire Line
	12850 8450 12850 8550
Wire Wire Line
	12750 8750 12850 8750
Wire Wire Line
	12850 8750 12850 8850
Wire Wire Line
	12850 9200 14250 9200
Wire Wire Line
	12750 8950 12850 8950
Connection ~ 12850 8950
Wire Wire Line
	12850 8950 12850 9200
Wire Wire Line
	12850 8850 12750 8850
Connection ~ 12850 8850
Wire Wire Line
	12850 8850 12850 8950
Wire Wire Line
	11950 8650 11800 8650
Text GLabel 11800 8650 0    50   Input ~ 0
PB1
Wire Wire Line
	13100 8350 13100 8200
Wire Wire Line
	4750 3200 5700 3200
Text GLabel 5700 3200 2    50   Input ~ 0
PA3
Text Label 4750 3200 0    50   Italic 0
CURRENT_SENSOR_LEFT
Wire Wire Line
	4750 4700 5700 4700
Text GLabel 5700 4700 2    50   Input ~ 0
PB1
Text Label 4750 4700 0    50   Italic 0
CURRENT_SENSOR_RIGHT
Wire Notes Line
	15900 9850 11450 9850
Text Notes 13400 4150 1    50   Italic 0
blue
Text Notes 13500 4150 1    50   Italic 0
yellow\n
Text Notes 13600 4050 1    50   Italic 0
orange
Text Notes 13700 4050 1    50   Italic 0
purple
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J11
U 1 1 5FC1C737
P 13650 4750
F 0 "J11" H 13700 5067 50  0000 C CNN
F 1 "Conn_02x04_F_BRIDGE" H 13700 4976 50  0000 C CNN
F 2 "" H 13650 4750 50  0001 C CNN
F 3 "~" H 13650 4750 50  0001 C CNN
	1    13650 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J12
U 1 1 5FC61BF8
P 13650 5500
F 0 "J12" H 13700 5817 50  0000 C CNN
F 1 "Conn_02x04_M_STM" H 13700 5726 50  0000 C CNN
F 2 "" H 13650 5500 50  0001 C CNN
F 3 "~" H 13650 5500 50  0001 C CNN
	1    13650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 4650 13450 4650
Wire Wire Line
	12600 4750 13450 4750
Wire Wire Line
	12600 2550 12850 2550
Wire Wire Line
	12500 4850 13450 4850
Wire Wire Line
	12500 2650 12850 2650
Wire Wire Line
	12400 4950 13450 4950
Wire Wire Line
	13250 5300 13250 5400
Wire Wire Line
	13250 5400 13450 5400
$Comp
L power:GND #PWR0105
U 1 1 5FE148B4
P 14200 5850
F 0 "#PWR0105" H 14200 5600 50  0001 C CNN
F 1 "GND" H 14205 5677 50  0000 C CNN
F 2 "" H 14200 5850 50  0001 C CNN
F 3 "" H 14200 5850 50  0001 C CNN
	1    14200 5850
	1    0    0    -1  
$EndComp
Text GLabel 12950 5500 0    50   Input ~ 0
PF3
Text GLabel 12950 5600 0    50   Input ~ 0
PC0
Text GLabel 12950 5700 0    50   Input ~ 0
PE14
Wire Wire Line
	12950 5500 13450 5500
Wire Wire Line
	13450 5600 12950 5600
Wire Wire Line
	12950 5700 13450 5700
Text Notes 13450 4650 2    50   Italic 0
blue
Text Notes 13450 4750 2    50   Italic 0
green
Text Notes 13450 4850 2    50   Italic 0
yellow\n
Text Notes 13450 4950 2    50   Italic 0
white
Wire Wire Line
	13950 5700 14200 5700
Wire Wire Line
	14200 5700 14200 5850
Wire Wire Line
	14700 4950 13950 4950
Wire Wire Line
	14800 4850 13950 4850
Wire Wire Line
	13950 4750 14900 4750
Wire Wire Line
	14900 4750 14900 2850
Wire Wire Line
	15000 4650 13950 4650
Wire Wire Line
	13950 5500 14550 5500
Wire Wire Line
	14550 5400 13950 5400
Wire Wire Line
	13950 5600 14550 5600
Wire Wire Line
	12400 2950 12400 4950
Wire Wire Line
	12500 2650 12500 4850
Wire Wire Line
	12600 2550 12600 4750
Wire Wire Line
	14700 1750 14700 4950
Wire Wire Line
	14800 2750 14800 4850
Wire Wire Line
	15000 3050 15000 4650
Wire Wire Line
	12700 2200 12700 4650
Text Notes 12800 2100 2    50   Italic 0
Internal connected GND's
Text Notes 14250 4650 2    50   Italic 0
white
Text Notes 14250 4750 2    50   Italic 0
yellow\n
Text Notes 14250 4850 2    50   Italic 0
green
Text Notes 14250 4950 2    50   Italic 0
blue
Wire Notes Line
	11450 900  15900 900 
Wire Notes Line
	11450 900  11450 9850
Wire Notes Line
	15900 900  15900 9850
Text GLabel 9350 1350 0    50   Input ~ 0
PE11
Text GLabel 9350 1650 0    50   Input ~ 0
PE12
Wire Wire Line
	2150 9200 1600 9200
Wire Wire Line
	2150 9100 1600 9100
Text GLabel 1600 9200 0    50   Input ~ 0
PE12
Text GLabel 1600 9100 0    50   Input ~ 0
PE11
Text Label 2150 9100 2    50   Italic 0
ENCODER1_Z
Wire Bus Line
	12900 8100 13850 8100
Wire Bus Line
	13700 4150 14400 4150
Wire Bus Line
	13500 4250 14400 4250
Wire Bus Line
	12900 6400 13850 6400
Text Label 2150 9200 2    50   Italic 0
ENCODER2_Z
$EndSCHEMATC
