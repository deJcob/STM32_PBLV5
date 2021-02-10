EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Electronic ruller variants"
Date "2021-02-05"
Rev "2.0"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
Text HLabel 900  2850 0    50   Input ~ 0
3V3
Text HLabel 900  3650 0    50   Input ~ 0
SDA
Text HLabel 900  3550 0    50   Input ~ 0
SCL
Text HLabel 950  5400 0    50   Input ~ 0
GND
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U14
U 1 1 604A2020
P 4000 2000
F 0 "U14" H 3950 2900 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3550 2000 50  0000 L CNN
F 2 "" H 4000 2000 50  0001 C CNN
F 3 "" H 4000 2000 50  0001 C CNN
	1    4000 2000
	1    0    0    -1  
$EndComp
NoConn ~ 3600 1250
NoConn ~ 3600 1750
NoConn ~ 3600 1850
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U15
U 1 1 604A2413
P 4000 3500
F 0 "U15" H 3950 4400 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3550 3500 50  0000 L CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
NoConn ~ 3600 2750
NoConn ~ 3600 3250
NoConn ~ 3600 3350
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U16
U 1 1 604A243D
P 3800 5050
F 0 "U16" H 3750 5950 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3350 5050 50  0000 L CNN
F 2 "" H 3800 5050 50  0001 C CNN
F 3 "" H 3800 5050 50  0001 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
NoConn ~ 3400 4300
NoConn ~ 3400 4800
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U17
U 1 1 604A245D
P 3800 6700
F 0 "U17" H 3750 7600 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 3350 6700 50  0000 L CNN
F 2 "" H 3800 6700 50  0001 C CNN
F 3 "" H 3800 6700 50  0001 C CNN
	1    3800 6700
	1    0    0    -1  
$EndComp
NoConn ~ 3400 5950
NoConn ~ 3400 6450
NoConn ~ 3400 6550
Text Notes 750  6950 0    100  Italic 20
Pololu based variant
$Comp
L Interface_Expansion:TCA9548APWR U22
U 1 1 601F199C
P 1550 4250
F 0 "U22" H 1550 5328 50  0000 C CNN
F 1 "TCA9548APWR" H 1550 5237 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 1550 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9548a.pdf" H 1600 4500 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5400 1550 5400
Wire Wire Line
	1550 5400 1550 5250
Wire Wire Line
	1550 2850 1550 3350
Wire Wire Line
	900  3550 1150 3550
Wire Wire Line
	900  3650 1150 3650
NoConn ~ 1150 4050
NoConn ~ 1150 4550
NoConn ~ 1150 4650
NoConn ~ 1150 4750
Connection ~ 1550 2850
Wire Wire Line
	2400 1350 2400 2850
Connection ~ 2400 2850
Wire Wire Line
	2400 4400 3400 4400
Wire Wire Line
	2400 4400 2400 6050
Wire Wire Line
	2400 6050 3400 6050
Connection ~ 2400 4400
Wire Wire Line
	3400 6150 2500 6150
Connection ~ 1550 5400
Wire Wire Line
	2500 4500 3400 4500
NoConn ~ 3400 4900
Connection ~ 2500 4500
Wire Wire Line
	2500 1450 2500 2950
Connection ~ 2500 2950
Wire Wire Line
	2500 4500 2500 5400
Wire Wire Line
	1550 5400 2500 5400
Connection ~ 2500 5400
Wire Wire Line
	2500 5400 2500 6150
Entry Wire Line
	3050 1650 2950 1750
Entry Wire Line
	3050 1550 2950 1650
Wire Wire Line
	3050 1550 3600 1550
Wire Wire Line
	3600 1650 3050 1650
Entry Wire Line
	3200 4700 3100 4800
Entry Wire Line
	3200 4600 3100 4700
Wire Wire Line
	3200 4600 3400 4600
Wire Wire Line
	3400 4700 3200 4700
Entry Wire Line
	3100 6350 3000 6450
Entry Wire Line
	3100 6250 3000 6350
Wire Wire Line
	3100 6250 3400 6250
Wire Wire Line
	3400 6350 3100 6350
Wire Wire Line
	1950 3550 2200 3550
Wire Wire Line
	1950 3650 2200 3650
Entry Wire Line
	2200 3650 2300 3550
Entry Wire Line
	2200 3550 2300 3450
Wire Wire Line
	1950 3750 2200 3750
Wire Wire Line
	1950 3850 2200 3850
Entry Wire Line
	2200 3850 2300 3750
Entry Wire Line
	2200 3750 2300 3650
Wire Wire Line
	1950 3950 2200 3950
Wire Wire Line
	1950 4050 2200 4050
Entry Wire Line
	2200 4050 2300 3950
Entry Wire Line
	2200 3950 2300 3850
Wire Wire Line
	1950 4150 2200 4150
Wire Wire Line
	1950 4250 2200 4250
Entry Wire Line
	2200 4250 2300 4150
Entry Wire Line
	2200 4150 2300 4050
Wire Wire Line
	1950 4350 2200 4350
Wire Wire Line
	1950 4450 2200 4450
Entry Wire Line
	2200 4450 2300 4350
Entry Wire Line
	2200 4350 2300 4250
Wire Wire Line
	1950 4550 2200 4550
Wire Wire Line
	1950 4650 2200 4650
Entry Wire Line
	2200 4650 2300 4550
Entry Wire Line
	2200 4550 2300 4450
Wire Wire Line
	1950 4750 2200 4750
Wire Wire Line
	1950 4850 2200 4850
Entry Wire Line
	2200 4850 2300 4750
Entry Wire Line
	2200 4750 2300 4650
Wire Wire Line
	1950 4950 2200 4950
Wire Wire Line
	1950 5050 2200 5050
Entry Wire Line
	2200 5050 2300 4950
Entry Wire Line
	2200 4950 2300 4850
Wire Bus Line
	2300 3450 2950 3450
Wire Bus Line
	2300 3650 3050 3650
Wire Bus Line
	2300 3850 2300 3950
Wire Bus Line
	2300 4050 2300 4150
Wire Bus Line
	2300 3650 2300 3750
Wire Bus Line
	2300 3450 2300 3550
Wire Wire Line
	4600 1450 5150 1450
Wire Wire Line
	4600 2950 4600 1450
Connection ~ 4600 2950
Wire Wire Line
	4600 2950 5150 2950
Wire Wire Line
	4600 4500 4600 6150
Connection ~ 4600 4500
Wire Wire Line
	5150 4500 4600 4500
Wire Wire Line
	2500 4000 2500 4500
Wire Wire Line
	2500 2950 2500 4000
Wire Wire Line
	4600 4000 4600 2950
Wire Wire Line
	4600 4000 4600 4500
Connection ~ 4600 4000
Wire Wire Line
	4600 4000 2500 4000
Wire Wire Line
	5150 6150 4600 6150
Wire Wire Line
	4500 6050 5150 6050
Wire Wire Line
	4500 6050 4500 4400
Connection ~ 4500 4400
Wire Wire Line
	4500 4400 5150 4400
Wire Wire Line
	4500 2850 4500 1350
Connection ~ 4500 2850
Wire Wire Line
	5150 2850 4500 2850
Wire Wire Line
	4500 1350 5150 1350
Wire Wire Line
	4500 3900 4500 4400
Wire Wire Line
	4500 3900 4500 2850
Connection ~ 4500 3900
Wire Wire Line
	2400 3900 2400 4400
Wire Wire Line
	2400 2850 2400 3900
Wire Wire Line
	2400 3900 4500 3900
NoConn ~ 5150 4900
NoConn ~ 5150 6550
NoConn ~ 5150 6450
NoConn ~ 5150 5950
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U21
U 1 1 604A253D
P 5550 6700
F 0 "U21" H 5500 7600 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 5100 6700 50  0000 L CNN
F 2 "" H 5550 6700 50  0001 C CNN
F 3 "" H 5550 6700 50  0001 C CNN
	1    5550 6700
	1    0    0    -1  
$EndComp
NoConn ~ 5150 4800
NoConn ~ 5150 4300
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U20
U 1 1 604A2533
P 5550 5050
F 0 "U20" H 5500 5950 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 5100 5050 50  0000 L CNN
F 2 "" H 5550 5050 50  0001 C CNN
F 3 "" H 5550 5050 50  0001 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
NoConn ~ 5150 3350
NoConn ~ 5150 3250
NoConn ~ 5150 2750
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U19
U 1 1 604A2529
P 5550 3500
F 0 "U19" H 5500 4400 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 5100 3500 50  0000 L CNN
F 2 "" H 5550 3500 50  0001 C CNN
F 3 "" H 5550 3500 50  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
NoConn ~ 5150 1850
NoConn ~ 5150 1750
NoConn ~ 5150 1250
$Comp
L MCU_ModuleV2:VL6180X-Pololu-2489 U18
U 1 1 604A251F
P 5550 2000
F 0 "U18" H 5500 2900 50  0000 L CNN
F 1 "VL6180X-Pololu-2489" H 5100 2000 50  0000 L CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "" H 5550 2000 50  0001 C CNN
	1    5550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1550 4900 1550
Wire Wire Line
	4900 1650 5150 1650
Entry Wire Line
	4900 1650 4800 1750
Entry Wire Line
	4900 1550 4800 1650
Wire Wire Line
	5150 3050 4900 3050
Wire Wire Line
	4900 3150 5150 3150
Entry Wire Line
	4900 3150 4800 3250
Entry Wire Line
	4900 3050 4800 3150
Wire Wire Line
	5150 4600 4900 4600
Wire Wire Line
	4900 4700 5150 4700
Entry Wire Line
	4900 4700 4800 4800
Entry Wire Line
	4900 4600 4800 4700
Wire Wire Line
	5150 6250 4900 6250
Wire Wire Line
	4900 6350 5150 6350
Entry Wire Line
	4900 6350 4800 6450
Entry Wire Line
	4900 6250 4800 6350
Wire Bus Line
	2300 4750 2300 4650
Wire Bus Line
	3050 2150 4800 2150
Wire Bus Line
	3050 2150 3050 3650
Wire Bus Line
	2300 3850 3150 3850
Wire Bus Line
	2300 4050 4800 4050
Entry Wire Line
	3250 3150 3150 3250
Entry Wire Line
	3250 3050 3150 3150
Wire Wire Line
	3250 3050 3600 3050
Wire Wire Line
	3250 3150 3600 3150
Wire Bus Line
	2300 4550 2300 4450
Wire Bus Line
	2300 4350 2300 4250
Wire Bus Line
	2300 4350 3100 4350
Wire Bus Line
	2300 4550 3000 4550
Wire Bus Line
	3000 4550 3000 5150
Wire Bus Line
	3000 5150 4800 5150
Wire Bus Line
	2300 4750 2900 4750
Wire Bus Line
	2900 4750 2900 5300
Wire Bus Line
	2900 5300 4800 5300
Wire Bus Line
	2300 4850 2300 4950
Wire Bus Line
	2300 4950 2800 4950
Wire Bus Line
	2800 4950 2800 6350
Wire Bus Line
	2800 6350 3000 6350
Wire Bus Line
	3000 6350 3000 6450
Wire Wire Line
	1550 2850 2400 2850
Wire Wire Line
	900  2850 1550 2850
Connection ~ 2400 3900
Connection ~ 2500 4000
Wire Wire Line
	2400 2850 3600 2850
Wire Wire Line
	2500 2950 3600 2950
Wire Wire Line
	2400 1350 3600 1350
Wire Wire Line
	2500 1450 3600 1450
Wire Notes Line
	6050 850  600  850 
Wire Notes Line
	600  850  600  7050
Wire Notes Line
	600  7050 6050 7050
Wire Notes Line
	6050 7050 6050 850 
Text HLabel 6500 2850 0    50   Input ~ 0
3V3
Text HLabel 6500 3650 0    50   Input ~ 0
SDA
Text HLabel 6500 3550 0    50   Input ~ 0
SCL
Text HLabel 6550 5400 0    50   Input ~ 0
GND
NoConn ~ 9200 1250
NoConn ~ 8950 1750
NoConn ~ 8950 1850
NoConn ~ 8950 2750
NoConn ~ 8950 3250
NoConn ~ 9200 3350
$Comp
L Interface_Expansion:TCA9548APWR U23
U 1 1 6035D947
P 7150 4250
F 0 "U23" H 7150 5328 50  0000 C CNN
F 1 "TCA9548APWR" H 7150 5237 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 7150 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9548a.pdf" H 7200 4500 50  0001 C CNN
	1    7150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5400 7150 5400
Wire Wire Line
	7150 5400 7150 5250
Wire Wire Line
	7150 2850 7150 3350
Wire Wire Line
	6500 3550 6750 3550
Wire Wire Line
	6500 3650 6750 3650
NoConn ~ 6750 4050
NoConn ~ 6750 4550
NoConn ~ 6750 4650
NoConn ~ 6750 4750
Connection ~ 7150 2850
Wire Wire Line
	8000 1350 8000 2850
Connection ~ 8000 2850
Connection ~ 7150 5400
Wire Wire Line
	8100 1450 8100 2950
Connection ~ 8100 2950
Wire Wire Line
	7150 5400 8100 5400
Entry Wire Line
	8650 1650 8550 1750
Entry Wire Line
	8650 1550 8550 1650
Wire Wire Line
	8650 1550 8950 1550
Wire Wire Line
	8950 1650 8650 1650
Wire Wire Line
	7550 3550 7800 3550
Wire Wire Line
	7550 3650 7800 3650
Entry Wire Line
	7800 3650 7900 3550
Entry Wire Line
	7800 3550 7900 3450
Wire Wire Line
	7550 3750 7800 3750
Wire Wire Line
	7550 3850 7800 3850
Entry Wire Line
	7800 3850 7900 3750
Entry Wire Line
	7800 3750 7900 3650
Wire Wire Line
	7550 3950 7800 3950
Wire Wire Line
	7550 4050 7800 4050
Entry Wire Line
	7800 4050 7900 3950
Entry Wire Line
	7800 3950 7900 3850
Wire Wire Line
	7550 4150 7800 4150
Wire Wire Line
	7550 4250 7800 4250
Entry Wire Line
	7800 4250 7900 4150
Entry Wire Line
	7800 4150 7900 4050
Wire Wire Line
	7550 4350 7800 4350
Wire Wire Line
	7550 4450 7800 4450
Entry Wire Line
	7800 4450 7900 4350
Entry Wire Line
	7800 4350 7900 4250
Wire Wire Line
	7550 4550 7800 4550
Wire Wire Line
	7550 4650 7800 4650
Entry Wire Line
	7800 4650 7900 4550
Entry Wire Line
	7800 4550 7900 4450
Wire Wire Line
	7550 4750 7800 4750
Wire Wire Line
	7550 4850 7800 4850
Entry Wire Line
	7800 4850 7900 4750
Entry Wire Line
	7800 4750 7900 4650
Wire Wire Line
	7550 4950 7800 4950
Wire Wire Line
	7550 5050 7800 5050
Entry Wire Line
	7800 5050 7900 4950
Entry Wire Line
	7800 4950 7900 4850
Wire Bus Line
	7900 3450 8550 3450
Wire Bus Line
	7900 3650 8650 3650
Wire Bus Line
	7900 3850 7900 3950
Wire Bus Line
	7900 4050 7900 4150
Wire Bus Line
	7900 3650 7900 3750
Wire Bus Line
	7900 3450 7900 3550
Wire Wire Line
	9900 1450 10250 1450
Wire Wire Line
	9900 2950 10250 2950
Wire Wire Line
	8100 2950 8100 4000
Wire Wire Line
	9900 4000 8100 4000
Wire Wire Line
	10250 2850 9750 2850
Wire Wire Line
	9750 1350 10250 1350
Wire Wire Line
	8000 2850 8000 3900
Wire Wire Line
	8000 3900 9750 3900
NoConn ~ 10750 3350
NoConn ~ 10250 3250
NoConn ~ 10250 2750
NoConn ~ 10250 1850
NoConn ~ 10250 1750
NoConn ~ 10750 1250
Wire Wire Line
	10250 1550 10150 1550
Wire Wire Line
	10150 1650 10250 1650
Entry Wire Line
	10150 1650 10050 1750
Entry Wire Line
	10150 1550 10050 1650
Wire Wire Line
	10250 3050 10150 3050
Wire Wire Line
	10150 3150 10250 3150
Entry Wire Line
	10150 3150 10050 3250
Entry Wire Line
	10150 3050 10050 3150
Wire Bus Line
	7900 4750 7900 4650
Wire Bus Line
	8650 2150 10050 2150
Wire Bus Line
	8650 2150 8650 3650
Wire Bus Line
	7900 3850 8750 3850
Wire Bus Line
	7900 4050 10050 4050
Entry Wire Line
	8850 3150 8750 3250
Entry Wire Line
	8850 3050 8750 3150
Wire Wire Line
	8850 3050 8950 3050
Wire Wire Line
	8850 3150 8950 3150
Wire Bus Line
	7900 4550 7900 4450
Wire Bus Line
	7900 4350 7900 4250
Wire Bus Line
	7900 4850 7900 4950
Wire Wire Line
	7150 2850 8000 2850
Wire Wire Line
	6500 2850 7150 2850
Connection ~ 8100 4000
Wire Wire Line
	8000 2850 8950 2850
Wire Wire Line
	8100 2950 8950 2950
Wire Wire Line
	8000 1350 8950 1350
Wire Wire Line
	8100 1450 8950 1450
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U24
U 1 1 60368216
P 9350 2000
F 0 "U24" H 9300 2800 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 8950 2000 50  0000 L CNN
F 2 "" H 9350 2000 50  0001 C CNN
F 3 "" H 9350 2000 50  0001 C CNN
	1    9350 2000
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U27
U 1 1 6036829E
P 10650 2000
F 0 "U27" H 10600 2800 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 10250 2000 50  0000 L CNN
F 2 "" H 10650 2000 50  0001 C CNN
F 3 "" H 10650 2000 50  0001 C CNN
	1    10650 2000
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U25
U 1 1 60368316
P 9350 3400
F 0 "U25" H 9300 4200 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 8950 3400 50  0000 L CNN
F 2 "" H 9350 3400 50  0001 C CNN
F 3 "" H 9350 3400 50  0001 C CNN
	1    9350 3400
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:VL53L1X-Sparkfun U28
U 1 1 60368402
P 10650 3400
F 0 "U28" H 10600 4200 50  0000 L CNN
F 1 "VL53L1X-Sparkfun" H 10250 3400 50  0000 L CNN
F 2 "" H 10650 3400 50  0001 C CNN
F 3 "" H 10650 3400 50  0001 C CNN
	1    10650 3400
	1    0    0    -1  
$EndComp
Text Notes 6350 5750 0    100  Italic 20
Sparkfun based variant
Wire Wire Line
	8100 4000 8100 5400
Connection ~ 9750 2850
Wire Wire Line
	9750 3900 9750 2850
Wire Wire Line
	9750 2850 9750 1350
Connection ~ 9900 2950
Wire Wire Line
	9900 4000 9900 2950
Wire Wire Line
	9900 2950 9900 1450
Wire Notes Line
	6200 5900 6200 850 
Wire Notes Line
	6200 850  11050 850 
Wire Notes Line
	11050 850  11050 5900
Wire Notes Line
	11050 5900 6200 5900
Wire Bus Line
	8550 1650 8550 3450
Wire Bus Line
	10050 1650 10050 2150
Wire Bus Line
	10050 3150 10050 4050
Wire Bus Line
	8750 3150 8750 3850
Wire Bus Line
	4800 5300 4800 6450
Wire Bus Line
	4800 4700 4800 5150
Wire Bus Line
	3100 4350 3100 4800
Wire Bus Line
	2950 1650 2950 3450
Wire Bus Line
	4800 1650 4800 2150
Wire Bus Line
	4800 3150 4800 4050
Wire Bus Line
	3150 3150 3150 3850
$EndSCHEMATC
