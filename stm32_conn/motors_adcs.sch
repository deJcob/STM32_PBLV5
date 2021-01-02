EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Motors ADC board"
Date "2021-01-02"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ModuleV2:LTS6-NP U12
U 1 1 5FFBE7DE
P 5450 3400
F 0 "U12" H 5700 4000 50  0000 C CNN
F 1 "LTS6-NP" H 5700 3900 50  0000 C CNN
F 2 "Sensor_Current:LEM_LTSR-NP" H 5450 2600 50  0001 C CNN
F 3 "https://www.lem.com/sites/default/files/products_datasheets/ltsr_6-np.pdf" H 5450 3000 50  0001 C CNN
	1    5450 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FFBE7E5
P 5450 4000
F 0 "#PWR0106" H 5450 3750 50  0001 C CNN
F 1 "GND" H 5455 3827 50  0000 C CNN
F 2 "" H 5450 4000 50  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0107
U 1 1 5FFBE7EB
P 5450 2800
F 0 "#PWR0107" H 5450 2650 50  0001 C CNN
F 1 "+5VD" H 5465 2973 50  0000 C CNN
F 2 "" H 5450 2800 50  0001 C CNN
F 3 "" H 5450 2800 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3900 5450 4000
Wire Wire Line
	5450 2900 5450 2800
Wire Wire Line
	5850 3100 5950 3100
Wire Wire Line
	5950 3100 5950 3200
Wire Wire Line
	5850 3300 5950 3300
Connection ~ 5950 3100
Wire Wire Line
	5950 3100 6200 3100
Wire Wire Line
	5850 3200 5950 3200
Connection ~ 5950 3200
Wire Wire Line
	5950 3200 5950 3300
Wire Wire Line
	5850 3500 5950 3500
Wire Wire Line
	5950 3500 5950 3600
Wire Wire Line
	5850 3700 5950 3700
Wire Wire Line
	5950 3600 5850 3600
Connection ~ 5950 3600
Wire Wire Line
	5950 3600 5950 3700
Wire Wire Line
	5050 3400 4900 3400
$Comp
L MCU_ModuleV2:LTS6-NP U?
U 1 1 5FFBE806
P 5450 5100
AR Path="/5FFBE806" Ref="U?"  Part="1" 
AR Path="/5FF5A0F0/5FFBE806" Ref="U13"  Part="1" 
F 0 "U13" H 5700 5700 50  0000 C CNN
F 1 "LTS6-NP" H 5700 5600 50  0000 C CNN
F 2 "Sensor_Current:LEM_LTSR-NP" H 5450 4300 50  0001 C CNN
F 3 "https://www.lem.com/sites/default/files/products_datasheets/ltsr_6-np.pdf" H 5450 4700 50  0001 C CNN
	1    5450 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FFBE80D
P 5450 5700
F 0 "#PWR0108" H 5450 5450 50  0001 C CNN
F 1 "GND" H 5455 5527 50  0000 C CNN
F 2 "" H 5450 5700 50  0001 C CNN
F 3 "" H 5450 5700 50  0001 C CNN
	1    5450 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0109
U 1 1 5FFBE813
P 5450 4500
F 0 "#PWR0109" H 5450 4350 50  0001 C CNN
F 1 "+5VD" H 5465 4673 50  0000 C CNN
F 2 "" H 5450 4500 50  0001 C CNN
F 3 "" H 5450 4500 50  0001 C CNN
	1    5450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5600 5450 5700
Wire Wire Line
	5850 4800 5950 4800
Wire Wire Line
	5950 4800 5950 4900
Wire Wire Line
	5850 5000 5950 5000
Connection ~ 5950 4800
Wire Wire Line
	5950 4800 6200 4800
Wire Wire Line
	5850 4900 5950 4900
Connection ~ 5950 4900
Wire Wire Line
	5950 4900 5950 5000
Wire Wire Line
	5850 5200 5950 5200
Wire Wire Line
	5950 5200 5950 5300
Wire Wire Line
	5850 5400 5950 5400
Wire Wire Line
	5950 5300 5850 5300
Connection ~ 5950 5300
Wire Wire Line
	5950 5300 5950 5400
Wire Wire Line
	5050 5100 4900 5100
Wire Wire Line
	5450 4500 5450 4600
Text HLabel 6200 3100 2    50   Input ~ 0
A_IN
Text HLabel 6200 3700 2    50   Input ~ 0
A_OUT
Text HLabel 6200 4800 2    50   Input ~ 0
B_IN
Text HLabel 6200 5400 2    50   Input ~ 0
B_OUT
Text HLabel 4200 4150 0    50   Input ~ 0
+5V
Text HLabel 4200 4250 0    50   Input ~ 0
GND
Text HLabel 4900 3400 0    50   Input ~ 0
ADC_A
Text HLabel 4900 5100 0    50   Input ~ 0
ADC_B
$Comp
L power:GND #PWR0110
U 1 1 6020CB66
P 4300 4350
F 0 "#PWR0110" H 4300 4100 50  0001 C CNN
F 1 "GND" H 4305 4177 50  0000 C CNN
F 2 "" H 4300 4350 50  0001 C CNN
F 3 "" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0111
U 1 1 6020CB79
P 4300 4050
F 0 "#PWR0111" H 4300 3900 50  0001 C CNN
F 1 "+5VD" H 4315 4223 50  0000 C CNN
F 2 "" H 4300 4050 50  0001 C CNN
F 3 "" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4150 4300 4050
Wire Wire Line
	4200 4150 4300 4150
Wire Wire Line
	4200 4250 4300 4250
Wire Wire Line
	4300 4250 4300 4350
Wire Wire Line
	5950 3700 6200 3700
Connection ~ 5950 3700
Wire Wire Line
	5950 5400 6200 5400
Connection ~ 5950 5400
Wire Notes Line
	5850 5600 6050 5600
Wire Notes Line
	6050 5600 6050 2950
Wire Notes Line
	6050 2950 5850 2950
Wire Notes Line
	5850 2950 5850 5600
Text Notes 5850 2900 0    50   Italic 0
It is possible to change current range\nby changing connection of this terminals\nCheck on http://www.farnell.com/datasheets/1639891.pdf page 3
$EndSCHEMATC
