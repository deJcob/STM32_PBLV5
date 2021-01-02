EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Electronic ruller variants"
Date "2021-01-02"
Rev "1"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
Text HLabel 2850 1400 0    50   Input ~ 0
3V3
Text HLabel 2850 1500 0    50   Input ~ 0
SDA
Text HLabel 2850 1600 0    50   Input ~ 0
SCL
Text HLabel 2850 1700 0    50   Input ~ 0
GND
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U14
U 1 1 604A2020
P 3900 3150
F 0 "U14" H 3850 4050 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3450 3150 50  0000 L CNN
F 2 "" H 3900 3150 50  0001 C CNN
F 3 "" H 3900 3150 50  0001 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
NoConn ~ 3500 2400
NoConn ~ 3500 2900
NoConn ~ 3500 3000
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U15
U 1 1 604A2413
P 3900 4250
F 0 "U15" H 3850 5150 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3450 4250 50  0000 L CNN
F 2 "" H 3900 4250 50  0001 C CNN
F 3 "" H 3900 4250 50  0001 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
NoConn ~ 3500 3500
NoConn ~ 3500 4000
NoConn ~ 3500 4100
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U16
U 1 1 604A243D
P 3900 5350
F 0 "U16" H 3850 6250 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3450 5350 50  0000 L CNN
F 2 "" H 3900 5350 50  0001 C CNN
F 3 "" H 3900 5350 50  0001 C CNN
	1    3900 5350
	1    0    0    -1  
$EndComp
NoConn ~ 3500 4600
NoConn ~ 3500 5100
NoConn ~ 3500 5200
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U17
U 1 1 604A245D
P 3900 6450
F 0 "U17" H 3850 7350 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3450 6450 50  0000 L CNN
F 2 "" H 3900 6450 50  0001 C CNN
F 3 "" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
NoConn ~ 3500 5700
NoConn ~ 3500 6200
NoConn ~ 3500 6300
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U18
U 1 1 604A251F
P 5400 3150
F 0 "U18" H 5350 4050 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 4950 3150 50  0000 L CNN
F 2 "" H 5400 3150 50  0001 C CNN
F 3 "" H 5400 3150 50  0001 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
NoConn ~ 5000 2400
NoConn ~ 5000 2900
NoConn ~ 5000 3000
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U19
U 1 1 604A2529
P 5400 4250
F 0 "U19" H 5350 5150 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 4950 4250 50  0000 L CNN
F 2 "" H 5400 4250 50  0001 C CNN
F 3 "" H 5400 4250 50  0001 C CNN
	1    5400 4250
	1    0    0    -1  
$EndComp
NoConn ~ 5000 3500
NoConn ~ 5000 4000
NoConn ~ 5000 4100
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U20
U 1 1 604A2533
P 5400 5350
F 0 "U20" H 5350 6250 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 4950 5350 50  0000 L CNN
F 2 "" H 5400 5350 50  0001 C CNN
F 3 "" H 5400 5350 50  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
NoConn ~ 5000 4600
NoConn ~ 5000 5100
NoConn ~ 5000 5200
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U21
U 1 1 604A253D
P 5400 6450
F 0 "U21" H 5350 7350 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 4950 6450 50  0000 L CNN
F 2 "" H 5400 6450 50  0001 C CNN
F 3 "" H 5400 6450 50  0001 C CNN
	1    5400 6450
	1    0    0    -1  
$EndComp
NoConn ~ 5000 5700
NoConn ~ 5000 6200
NoConn ~ 5000 6300
Wire Wire Line
	2850 1400 3250 1400
Wire Wire Line
	3250 1400 3250 2500
Wire Wire Line
	3250 5800 3500 5800
Wire Wire Line
	2850 1500 3150 1500
Wire Wire Line
	3150 1500 3150 2700
Wire Wire Line
	3150 6000 3500 6000
Wire Wire Line
	2850 1600 3050 1600
Wire Wire Line
	3050 1600 3050 2800
Wire Wire Line
	3050 6100 3500 6100
Wire Wire Line
	2850 1700 2950 1700
Wire Wire Line
	2950 1700 2950 2600
Wire Wire Line
	2950 5900 3500 5900
Wire Wire Line
	3500 2500 3250 2500
Connection ~ 3250 2500
Wire Wire Line
	3250 2500 3250 3600
Wire Wire Line
	3250 3600 3500 3600
Connection ~ 3250 3600
Wire Wire Line
	3250 3600 3250 4700
Wire Wire Line
	3500 2600 2950 2600
Connection ~ 2950 2600
Wire Wire Line
	2950 2600 2950 3700
Wire Wire Line
	3500 3700 2950 3700
Connection ~ 2950 3700
Wire Wire Line
	2950 3700 2950 4800
Wire Wire Line
	3500 4800 2950 4800
Connection ~ 2950 4800
Wire Wire Line
	2950 4800 2950 5900
Wire Wire Line
	3500 4700 3250 4700
Connection ~ 3250 4700
Wire Wire Line
	3250 4700 3250 5800
Wire Wire Line
	3500 4900 3150 4900
Connection ~ 3150 4900
Wire Wire Line
	3150 4900 3150 6000
Wire Wire Line
	3050 5000 3500 5000
Connection ~ 3050 5000
Wire Wire Line
	3050 5000 3050 6100
Wire Wire Line
	3150 3800 3500 3800
Connection ~ 3150 3800
Wire Wire Line
	3150 3800 3150 4900
Wire Wire Line
	3500 3900 3050 3900
Connection ~ 3050 3900
Wire Wire Line
	3050 3900 3050 5000
Wire Wire Line
	3500 2700 3150 2700
Connection ~ 3150 2700
Wire Wire Line
	3150 2700 3150 3800
Wire Wire Line
	3050 2800 3500 2800
Connection ~ 3050 2800
Wire Wire Line
	3050 2800 3050 3900
Wire Wire Line
	4750 1400 4750 2500
Wire Wire Line
	4750 5800 5000 5800
Wire Wire Line
	4650 1500 4650 2700
Wire Wire Line
	4650 6000 5000 6000
Wire Wire Line
	4550 1600 4550 2800
Wire Wire Line
	4550 6100 5000 6100
Wire Wire Line
	4450 1700 4450 2600
Wire Wire Line
	4450 5900 5000 5900
Wire Wire Line
	5000 2500 4750 2500
Connection ~ 4750 2500
Wire Wire Line
	4750 2500 4750 3600
Wire Wire Line
	4750 3600 5000 3600
Connection ~ 4750 3600
Wire Wire Line
	4750 3600 4750 4700
Wire Wire Line
	5000 2600 4450 2600
Connection ~ 4450 2600
Wire Wire Line
	4450 2600 4450 3700
Wire Wire Line
	5000 3700 4450 3700
Connection ~ 4450 3700
Wire Wire Line
	4450 3700 4450 4800
Wire Wire Line
	5000 4800 4450 4800
Connection ~ 4450 4800
Wire Wire Line
	4450 4800 4450 5900
Wire Wire Line
	5000 4700 4750 4700
Connection ~ 4750 4700
Wire Wire Line
	4750 4700 4750 5800
Wire Wire Line
	5000 4900 4650 4900
Connection ~ 4650 4900
Wire Wire Line
	4650 4900 4650 6000
Wire Wire Line
	4550 5000 5000 5000
Connection ~ 4550 5000
Wire Wire Line
	4550 5000 4550 6100
Wire Wire Line
	4650 3800 5000 3800
Connection ~ 4650 3800
Wire Wire Line
	4650 3800 4650 4900
Wire Wire Line
	5000 3900 4550 3900
Connection ~ 4550 3900
Wire Wire Line
	4550 3900 4550 5000
Wire Wire Line
	5000 2700 4650 2700
Connection ~ 4650 2700
Wire Wire Line
	4650 2700 4650 3800
Wire Wire Line
	4550 2800 5000 2800
Connection ~ 4550 2800
Wire Wire Line
	4550 2800 4550 3900
Wire Wire Line
	4750 1400 3250 1400
Connection ~ 3250 1400
Wire Wire Line
	4650 1500 3150 1500
Connection ~ 3150 1500
Wire Wire Line
	3050 1600 4550 1600
Connection ~ 3050 1600
Wire Wire Line
	4450 1700 2950 1700
Connection ~ 2950 1700
Wire Notes Line
	6100 1850 6100 6750
Wire Notes Line
	6100 6750 2750 6750
Wire Notes Line
	2750 6750 2750 1850
Wire Notes Line
	2750 1850 6100 1850
Text Notes 2800 6700 0    100  Italic 20
Pololu based variant
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U22
U 1 1 604C7C7B
P 7700 3100
F 0 "U22" H 7650 3900 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 7300 3100 50  0000 L CNN
F 2 "" H 7700 3100 50  0001 C CNN
F 3 "" H 7700 3100 50  0001 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
NoConn ~ 7300 2850
NoConn ~ 7300 2950
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U23
U 1 1 604D43B7
P 7700 4100
F 0 "U23" H 7650 4900 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 7300 4100 50  0000 L CNN
F 2 "" H 7700 4100 50  0001 C CNN
F 3 "" H 7700 4100 50  0001 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
NoConn ~ 7300 3850
NoConn ~ 7300 3950
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U24
U 1 1 604D57B8
P 8950 3100
F 0 "U24" H 8900 3900 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 8550 3100 50  0000 L CNN
F 2 "" H 8950 3100 50  0001 C CNN
F 3 "" H 8950 3100 50  0001 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
NoConn ~ 8550 2850
NoConn ~ 8550 2950
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U25
U 1 1 604D57C1
P 8950 4100
F 0 "U25" H 8900 4900 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 8550 4100 50  0000 L CNN
F 2 "" H 8950 4100 50  0001 C CNN
F 3 "" H 8950 4100 50  0001 C CNN
	1    8950 4100
	1    0    0    -1  
$EndComp
NoConn ~ 8550 3850
NoConn ~ 8550 3950
Wire Wire Line
	8100 3450 8550 3450
Wire Wire Line
	8100 1700 8100 2450
Connection ~ 4450 1700
Wire Wire Line
	8200 1600 8200 2750
Wire Wire Line
	8200 3750 8550 3750
Connection ~ 4550 1600
Wire Wire Line
	8300 1500 8300 2650
Wire Wire Line
	8300 3650 8550 3650
Connection ~ 4650 1500
Wire Wire Line
	8400 1400 8400 2550
Wire Wire Line
	8400 3550 8550 3550
Connection ~ 4750 1400
Wire Wire Line
	8550 2550 8400 2550
Connection ~ 8400 2550
Wire Wire Line
	8400 2550 8400 3550
Wire Wire Line
	8550 2650 8300 2650
Connection ~ 8300 2650
Wire Wire Line
	8300 2650 8300 3650
Wire Wire Line
	8200 2750 8550 2750
Connection ~ 8200 2750
Wire Wire Line
	8200 2750 8200 3750
Wire Wire Line
	8550 2450 8100 2450
Connection ~ 8100 2450
Wire Wire Line
	8100 2450 8100 3450
Wire Wire Line
	6850 3450 7300 3450
Wire Wire Line
	6850 1700 6850 2450
Wire Wire Line
	6950 1600 6950 2750
Wire Wire Line
	6950 3750 7300 3750
Wire Wire Line
	7050 1500 7050 2650
Wire Wire Line
	7050 3650 7300 3650
Wire Wire Line
	7150 1400 7150 2550
Wire Wire Line
	7150 3550 7300 3550
Wire Wire Line
	7300 2550 7150 2550
Connection ~ 7150 2550
Wire Wire Line
	7150 2550 7150 3550
Wire Wire Line
	7300 2650 7050 2650
Connection ~ 7050 2650
Wire Wire Line
	7050 2650 7050 3650
Wire Wire Line
	6950 2750 7300 2750
Connection ~ 6950 2750
Wire Wire Line
	6950 2750 6950 3750
Wire Wire Line
	7300 2450 6850 2450
Connection ~ 6850 2450
Wire Wire Line
	6850 2450 6850 3450
Wire Wire Line
	4450 1700 6850 1700
Connection ~ 6850 1700
Wire Wire Line
	6850 1700 8100 1700
Wire Wire Line
	4550 1600 6950 1600
Connection ~ 6950 1600
Wire Wire Line
	6950 1600 8200 1600
Wire Wire Line
	4650 1500 7050 1500
Connection ~ 7050 1500
Wire Wire Line
	7050 1500 8300 1500
Wire Wire Line
	4750 1400 7150 1400
Connection ~ 7150 1400
Wire Wire Line
	7150 1400 8400 1400
Wire Notes Line
	9500 1850 9500 4600
Wire Notes Line
	9500 4600 6500 4600
Wire Notes Line
	6500 4600 6500 1850
Wire Notes Line
	6500 1850 9500 1850
Text Notes 6600 4550 0    100  Italic 20
Sparkfun based variant
$EndSCHEMATC
