EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Power distribution"
Date "2021-05-22"
Rev "3.1"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
$Comp
L Device:Battery BT1
U 1 1 60B5D1FE
P 1900 2950
F 0 "BT1" H 2008 2996 50  0000 L CNN
F 1 "GEL BATTERY 12V 7Ah" H 2008 2905 50  0000 L CNN
F 2 "" V 1900 3010 50  0001 C CNN
F 3 "~" V 1900 3010 50  0001 C CNN
	1    1900 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60B5D205
P 1900 4100
F 0 "#PWR031" H 1900 3850 50  0001 C CNN
F 1 "GND" H 1900 3950 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR032
U 1 1 60B5D20B
P 2850 1650
F 0 "#PWR032" H 2850 1500 50  0001 C CNN
F 1 "+12V" H 2865 1823 50  0000 C CNN
F 2 "" H 2850 1650 50  0001 C CNN
F 3 "" H 2850 1650 50  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Pololu-D24V50F5 U10
U 1 1 60B5D211
P 9700 2650
F 0 "U10" H 9700 3015 50  0000 C CNN
F 1 "Pololu-D24V50F5" H 9700 2924 50  0000 C CNN
F 2 "" H 9600 2400 50  0001 C CNN
F 3 "" H 9600 2400 50  0001 C CNN
	1    9700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 60B5D21F
P 1900 1950
F 0 "F1" H 1960 1996 50  0000 L CNN
F 1 "5A" H 1960 1905 50  0000 L CNN
F 2 "" V 1830 1950 50  0001 C CNN
F 3 "~" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2650 1900 2750
Wire Wire Line
	10150 2950 10150 2750
Wire Wire Line
	10150 2750 10050 2750
$Comp
L power:GND #PWR040
U 1 1 60B5D230
P 9250 3150
F 0 "#PWR040" H 9250 2900 50  0001 C CNN
F 1 "GND" H 9255 2977 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR035
U 1 1 60B5D23E
P 6550 2300
F 0 "#PWR035" H 6550 2150 50  0001 C CNN
F 1 "+12V" H 6565 2473 50  0000 C CNN
F 2 "" H 6550 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
NoConn ~ 9350 2550
Wire Wire Line
	10050 2650 10150 2650
$Comp
L power:+5VD #PWR041
U 1 1 60B5D248
P 10150 2150
F 0 "#PWR041" H 10150 2000 50  0001 C CNN
F 1 "+5VD" H 10165 2323 50  0000 C CNN
F 2 "" H 10150 2150 50  0001 C CNN
F 3 "" H 10150 2150 50  0001 C CNN
	1    10150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2650 10150 2250
$Comp
L Connector:Barrel_Jack J6
U 1 1 60B5D258
P 1100 3300
F 0 "J6" H 1100 3000 50  0000 C CNN
F 1 "Jack DC 5.5/2.5mm f" H 1100 3100 50  0000 C CNN
F 2 "" H 1150 3260 50  0001 C CNN
F 3 "~" H 1150 3260 50  0001 C CNN
	1    1100 3300
	1    0    0    1   
$EndComp
Text Notes 1400 3650 2    50   Italic 0
Charging input\n13.6-15.5 VDC
$Comp
L power:+12C #PWR030
U 1 1 60B5D260
P 1900 1650
F 0 "#PWR030" H 1900 1500 50  0001 C CNN
F 1 "+12C" H 1915 1823 50  0000 C CNN
F 2 "" H 1900 1650 50  0001 C CNN
F 3 "" H 1900 1650 50  0001 C CNN
	1    1900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1650 1900 1750
$Comp
L Switch:SW_SPST SW1
U 1 1 60B5D268
P 2400 1750
F 0 "SW1" H 2400 1985 50  0000 C CNN
F 1 "Main power switch" H 2400 1894 50  0000 C CNN
F 2 "" H 2400 1750 50  0001 C CNN
F 3 "" H 2400 1750 50  0001 C CNN
	1    2400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1750 2200 1750
Connection ~ 1900 1750
Wire Wire Line
	1900 1750 1900 1800
Wire Wire Line
	2600 1750 2850 1750
Text GLabel 10250 2250 2    50   Input Italic 0
+5V_STM32
Wire Wire Line
	10250 2250 10150 2250
Connection ~ 10150 2250
Wire Wire Line
	10150 2250 10150 2150
Text Notes 2000 3150 0    50   Italic 0
XTREME 82-211
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 60B5D27E
P 10500 2650
F 0 "J9" H 10350 2850 50  0000 L CNN
F 1 "2PXH2.54" H 10200 2750 50  0000 L CNN
F 2 "" H 10500 2650 50  0001 C CNN
F 3 "~" H 10500 2650 50  0001 C CNN
	1    10500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2650 10150 2650
Connection ~ 10150 2650
Wire Wire Line
	10150 2750 10300 2750
Connection ~ 10150 2750
$Comp
L power:+12V #PWR033
U 1 1 60B5D29A
P 3400 2200
F 0 "#PWR033" H 3400 2050 50  0001 C CNN
F 1 "+12V" H 3415 2373 50  0000 C CNN
F 2 "" H 3400 2200 50  0001 C CNN
F 3 "" H 3400 2200 50  0001 C CNN
	1    3400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 60B5D2A0
P 3400 3300
F 0 "#PWR034" H 3400 3050 50  0001 C CNN
F 1 "GND" H 3405 3127 50  0000 C CNN
F 2 "" H 3400 3300 50  0001 C CNN
F 3 "" H 3400 3300 50  0001 C CNN
	1    3400 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60B5D2A6
P 3400 2500
F 0 "D1" V 3345 2579 50  0000 L CNN
F 1 "GREEN_LED" V 3436 2579 50  0000 L CNN
F 2 "" H 3400 2500 50  0001 C CNN
F 3 "~" H 3400 2500 50  0001 C CNN
	1    3400 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 3200 1700 3200
Wire Wire Line
	1700 1750 1900 1750
Wire Wire Line
	1400 3400 1700 3400
Wire Wire Line
	1700 3400 1700 4000
Wire Wire Line
	1700 4000 1900 4000
Wire Wire Line
	1900 4000 1900 4100
Wire Wire Line
	3400 2200 3400 2350
$Comp
L Device:R R1
U 1 1 60B5D2B6
P 3400 2950
F 0 "R1" H 3470 2996 50  0000 L CNN
F 1 "5k1" H 3470 2905 50  0000 L CNN
F 2 "" V 3330 2950 50  0001 C CNN
F 3 "~" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2650 3400 2800
Wire Wire Line
	3400 3100 3400 3300
$Comp
L power:+12P #PWR039
U 1 1 60B5D2BF
P 9250 2150
F 0 "#PWR039" H 9250 2000 50  0001 C CNN
F 1 "+12P" H 9265 2323 50  0000 C CNN
F 2 "" H 9250 2150 50  0001 C CNN
F 3 "" H 9250 2150 50  0001 C CNN
	1    9250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR037
U 1 1 60B5D2CB
P 8800 2300
F 0 "#PWR037" H 8800 2150 50  0001 C CNN
F 1 "+12P" H 8815 2473 50  0000 C CNN
F 2 "" H 8800 2300 50  0001 C CNN
F 3 "" H 8800 2300 50  0001 C CNN
	1    8800 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J7
U 1 1 60B5D2D3
P 7200 2700
F 0 "J7" H 7200 2400 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm f" H 7650 2500 50  0000 R CNN
F 2 "" H 7250 2660 50  0001 C CNN
F 3 "~" H 7250 2660 50  0001 C CNN
	1    7200 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack J8
U 1 1 60B5D2DA
P 8150 2700
F 0 "J8" H 8150 2400 50  0000 C CNN
F 1 "Jack DC 5.5/2.5mm m" H 8150 2500 50  0000 C CNN
F 2 "" H 8200 2660 50  0001 C CNN
F 3 "~" H 8200 2660 50  0001 C CNN
	1    8150 2700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 60B5D2E1
P 6550 3100
F 0 "#PWR036" H 6550 2850 50  0001 C CNN
F 1 "GND" H 6555 2927 50  0000 C CNN
F 2 "" H 6550 3100 50  0001 C CNN
F 3 "" H 6550 3100 50  0001 C CNN
	1    6550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 60B5D2E7
P 8800 3100
F 0 "#PWR038" H 8800 2850 50  0001 C CNN
F 1 "GND" H 8805 2927 50  0000 C CNN
F 2 "" H 8800 3100 50  0001 C CNN
F 3 "" H 8800 3100 50  0001 C CNN
	1    8800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3100 8800 2800
Wire Wire Line
	8800 2800 8450 2800
Wire Wire Line
	8450 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2300
Wire Wire Line
	6900 2600 6550 2600
Wire Wire Line
	6550 2600 6550 2300
Wire Wire Line
	6550 3100 6550 2800
Wire Wire Line
	6900 2800 6550 2800
Text Notes 6600 2350 0    50   Italic 0
Yellow insulation
Text Notes 8100 2350 0    50   Italic 0
Yellow insulation
Text HLabel 1050 1000 0    50   Input ~ 0
+12V
Text HLabel 1050 1150 0    50   Input ~ 0
+5VD
Text HLabel 1050 1300 0    50   Input ~ 0
GND
$Comp
L power:+12V #PWR027
U 1 1 60D897E8
P 1250 1000
F 0 "#PWR027" H 1250 850 50  0001 C CNN
F 1 "+12V" H 1250 1150 50  0000 C CNN
F 2 "" H 1250 1000 50  0001 C CNN
F 3 "" H 1250 1000 50  0001 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR028
U 1 1 60D89853
P 1450 1000
F 0 "#PWR028" H 1450 850 50  0001 C CNN
F 1 "+5VD" H 1450 1150 50  0000 C CNN
F 2 "" H 1450 1000 50  0001 C CNN
F 3 "" H 1450 1000 50  0001 C CNN
	1    1450 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 60D89960
P 1450 1300
F 0 "#PWR029" H 1450 1050 50  0001 C CNN
F 1 "GND" H 1450 1150 50  0000 C CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1000 1250 1000
Wire Wire Line
	1050 1300 1450 1300
$Comp
L Connector:Conn_01x01_Male J16
U 1 1 5FF4FDE0
P 1900 2450
F 0 "J16" V 1960 2490 50  0000 L CNN
F 1 "4.8mm M+" V 2051 2490 50  0000 L CNN
F 2 "" H 1900 2450 50  0001 C CNN
F 3 "~" H 1900 2450 50  0001 C CNN
	1    1900 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J17
U 1 1 5FF55AEF
P 1900 3450
F 0 "J17" V 2053 3363 50  0000 R CNN
F 1 "4.8mm M-" V 1962 3363 50  0000 R CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "~" H 1900 3450 50  0001 C CNN
	1    1900 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J15
U 1 1 5FF55BE6
P 1900 2400
F 0 "J15" V 1747 2448 50  0000 L CNN
F 1 "4.8mm F+" V 1838 2448 50  0000 L CNN
F 2 "" H 1900 2400 50  0001 C CNN
F 3 "~" H 1900 2400 50  0001 C CNN
	1    1900 2400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J18
U 1 1 5FF55C4E
P 1900 3500
F 0 "J18" V 1840 3412 50  0000 R CNN
F 1 "4.8mm F-" V 1749 3412 50  0000 R CNN
F 2 "" H 1900 3500 50  0001 C CNN
F 3 "~" H 1900 3500 50  0001 C CNN
	1    1900 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 2100 1900 2200
Wire Wire Line
	1900 3150 1900 3250
Wire Wire Line
	1900 3700 1900 4000
Connection ~ 1900 4000
Wire Wire Line
	1700 1750 1700 3200
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 5FF5C372
P 1400 4700
F 0 "J14" H 1506 4878 50  0000 C CNN
F 1 "4.8mm M IN +" H 1506 4787 50  0000 C CNN
F 2 "" H 1400 4700 50  0001 C CNN
F 3 "~" H 1400 4700 50  0001 C CNN
	1    1400 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J20
U 1 1 5FF5C379
P 5800 6750
F 0 "J20" H 5827 6776 50  0000 L CNN
F 1 "4.8mm F OUT -" H 5827 6685 50  0000 L CNN
F 2 "" H 5800 6750 50  0001 C CNN
F 3 "~" H 5800 6750 50  0001 C CNN
	1    5800 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J13
U 1 1 5FF5D480
P 1350 6750
F 0 "J13" H 1400 6950 50  0000 L CNN
F 1 "4.8mm M IN -" H 1200 6850 50  0000 L CNN
F 2 "" H 1350 6750 50  0001 C CNN
F 3 "~" H 1350 6750 50  0001 C CNN
	1    1350 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J19
U 1 1 5FF5D487
P 5800 4700
F 0 "J19" H 5827 4726 50  0000 L CNN
F 1 "4.8mm F OUT +" H 5827 4635 50  0000 L CNN
F 2 "" H 5800 4700 50  0001 C CNN
F 3 "~" H 5800 4700 50  0001 C CNN
	1    5800 4700
	1    0    0    -1  
$EndComp
Text Notes 1100 7350 0    100  Italic 20
Probe board 
Text Notes 1100 7150 0    50   Italic 0
It is optional board designed for measeruing current \nconsumption by indirect measurement of the volatege on resistors.\nMount it between fuse and main GND and battery. 
Wire Notes Line
	1050 4450 1050 7400
Wire Notes Line
	6500 4450 6500 7400
$Comp
L MCU_ModuleV2:Pololu-D24V50F5 U26
U 1 1 601C49E9
P 4450 2650
F 0 "U26" H 4450 3015 50  0000 C CNN
F 1 "Pololu-D24V150F12" H 4450 2924 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2750 4000 2750
Wire Wire Line
	4000 2750 4000 2950
Wire Wire Line
	4000 2950 4900 2950
Wire Wire Line
	4900 2950 4900 2800
Wire Wire Line
	4900 2750 4800 2750
$Comp
L power:GND #PWR0114
U 1 1 601C49F5
P 4000 3050
F 0 "#PWR0114" H 4000 2800 50  0001 C CNN
F 1 "GND" H 4005 2877 50  0000 C CNN
F 2 "" H 4000 3050 50  0001 C CNN
F 3 "" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2650 4000 2650
NoConn ~ 4100 2550
Wire Wire Line
	4800 2650 4900 2650
Wire Wire Line
	4900 2650 4900 2600
Wire Wire Line
	4000 3050 4000 2950
Connection ~ 4000 2950
Text GLabel 5000 2250 2    50   Input Italic 0
+12V_NVIDIA
Wire Wire Line
	5000 2250 4900 2250
Connection ~ 4900 2250
Wire Wire Line
	4900 2250 4900 2150
Wire Wire Line
	4000 2150 4000 2650
$Comp
L power:+12V #PWR0115
U 1 1 601C7A9F
P 4000 2150
F 0 "#PWR0115" H 4000 2000 50  0001 C CNN
F 1 "+12V" H 4015 2323 50  0000 C CNN
F 2 "" H 4000 2150 50  0001 C CNN
F 3 "" H 4000 2150 50  0001 C CNN
	1    4000 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J21
U 1 1 601C7CD3
P 5850 2700
F 0 "J21" H 5850 2400 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm f" H 6300 2500 50  0000 R CNN
F 2 "" H 5900 2660 50  0001 C CNN
F 3 "~" H 5900 2660 50  0001 C CNN
	1    5850 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2600 4900 2600
Connection ~ 4900 2600
Wire Wire Line
	4900 2600 4900 2250
Wire Wire Line
	4900 2800 5550 2800
Connection ~ 4900 2800
Wire Wire Line
	4900 2800 4900 2750
$Comp
L power:+12L #PWR0116
U 1 1 601D4175
P 4900 2150
F 0 "#PWR0116" H 4900 2000 50  0001 C CNN
F 1 "+12L" H 4915 2323 50  0000 C CNN
F 2 "" H 4900 2150 50  0001 C CNN
F 3 "" H 4900 2150 50  0001 C CNN
	1    4900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1650 2850 1750
Wire Wire Line
	9250 2950 10150 2950
$Comp
L MCU_ModuleV2:LTSR15-NP_0 U30
U 1 1 6022318D
P 4100 6050
F 0 "U30" H 4350 6650 50  0000 C CNN
F 1 "LTS15-NP" H 4350 6550 50  0000 C CNN
F 2 "Sensor_Current:LEM_LTSR-NP" H 4100 5250 50  0001 C CNN
F 3 "https://www.lem.com/sites/default/files/products_datasheets/ltsr_15-np.pdf" H 4100 5650 50  0001 C CNN
	1    4100 6050
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U29
U 1 1 602232A7
P 2450 5100
F 0 "U29" H 2450 5342 50  0000 C CNN
F 1 "LM7805_TO220" H 2450 5251 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2450 5325 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2450 5050 50  0001 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0117
U 1 1 602234EA
P 1450 5000
F 0 "#PWR0117" H 1450 4850 50  0001 C CNN
F 1 "+BATT" H 1465 5173 50  0000 C CNN
F 2 "" H 1450 5000 50  0001 C CNN
F 3 "" H 1450 5000 50  0001 C CNN
	1    1450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0118
U 1 1 6022361F
P 1450 6000
F 0 "#PWR0118" H 1450 5850 50  0001 C CNN
F 1 "-BATT" H 1465 6173 50  0000 C CNN
F 2 "" H 1450 6000 50  0001 C CNN
F 3 "" H 1450 6000 50  0001 C CNN
	1    1450 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery BT2
U 1 1 60223702
P 1450 5350
F 0 "BT2" H 1558 5396 50  0000 L CNN
F 1 "9V" H 1558 5305 50  0000 L CNN
F 2 "" V 1450 5410 50  0001 C CNN
F 3 "~" V 1450 5410 50  0001 C CNN
	1    1450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5000 1450 5100
$Comp
L Device:C C1
U 1 1 602274AE
P 1900 5450
F 0 "C1" H 2015 5496 50  0000 L CNN
F 1 "C" H 2015 5405 50  0000 L CNN
F 2 "" H 1938 5300 50  0001 C CNN
F 3 "~" H 1900 5450 50  0001 C CNN
	1    1900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6022751D
P 2950 5450
F 0 "C2" H 3065 5496 50  0000 L CNN
F 1 "C" H 3065 5405 50  0000 L CNN
F 2 "" H 2988 5300 50  0001 C CNN
F 3 "~" H 2950 5450 50  0001 C CNN
	1    2950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5100 1900 5100
Connection ~ 1450 5100
Wire Wire Line
	1450 5100 1450 5150
Wire Wire Line
	1900 5300 1900 5100
Connection ~ 1900 5100
Wire Wire Line
	1900 5100 2150 5100
Wire Wire Line
	1900 5600 1900 5750
Wire Wire Line
	1900 5750 2450 5750
Wire Wire Line
	2450 5750 2450 5400
Wire Wire Line
	1550 6750 2550 6750
Wire Wire Line
	1900 5750 1450 5750
Wire Wire Line
	1450 5550 1450 5750
Connection ~ 1900 5750
Connection ~ 1450 5750
Wire Wire Line
	1450 5750 1450 6000
Wire Wire Line
	2450 5750 2950 5750
Wire Wire Line
	2950 5750 2950 5600
Connection ~ 2450 5750
Wire Wire Line
	2750 5100 2950 5100
Wire Wire Line
	2950 5100 2950 5300
Wire Wire Line
	2950 5100 4100 5100
Connection ~ 2950 5100
Wire Wire Line
	4100 6550 4100 6750
Connection ~ 4100 6750
Wire Wire Line
	4100 6750 5600 6750
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 60241C4F
P 3000 6050
F 0 "TP2" H 3150 6100 50  0000 L CNN
F 1 "Output +" H 3150 6000 50  0000 L CNN
F 2 "" H 3200 6050 50  0001 C CNN
F 3 "~" H 3200 6050 50  0001 C CNN
	1    3000 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 60241CCF
P 2550 6450
F 0 "TP1" H 2703 6552 50  0000 L CNN
F 1 "Output 0/GND" H 2703 6461 50  0000 L CNN
F 2 "" H 2750 6450 50  0001 C CNN
F 3 "~" H 2750 6450 50  0001 C CNN
	1    2550 6450
	1    0    0    -1  
$EndComp
Connection ~ 2550 6750
Wire Wire Line
	2550 6750 4100 6750
$Comp
L Connector:Conn_Coaxial J22
U 1 1 60247CFC
P 2550 6050
F 0 "J22" H 2480 6288 50  0000 C CNN
F 1 "BNC" H 2480 6197 50  0000 C CNN
F 2 "" H 2550 6050 50  0001 C CNN
F 3 " ~" H 2550 6050 50  0001 C CNN
	1    2550 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 5100 4100 5550
Wire Wire Line
	2750 6050 3000 6050
Wire Wire Line
	2550 6250 2550 6450
Connection ~ 2550 6450
Wire Wire Line
	2550 6450 2550 6750
Connection ~ 3000 6050
Wire Wire Line
	3000 6050 3700 6050
Wire Wire Line
	1600 4700 4600 4700
Wire Wire Line
	4600 5750 4500 5750
Wire Wire Line
	4500 6350 5500 6350
Wire Wire Line
	5500 6350 5500 4700
Wire Wire Line
	5500 4700 5600 4700
Wire Wire Line
	4500 5850 4600 5850
Wire Wire Line
	4600 5850 4600 6150
Wire Wire Line
	4600 6150 4500 6150
Wire Wire Line
	4500 5950 4700 5950
Wire Wire Line
	4700 5950 4700 6250
Wire Wire Line
	4700 6250 4500 6250
$Comp
L Device:R R2
U 1 1 6027CF02
P 4600 5300
F 0 "R2" H 4670 5346 50  0000 L CNN
F 1 "0" H 4670 5255 50  0000 L CNN
F 2 "" V 4530 5300 50  0001 C CNN
F 3 "~" H 4600 5300 50  0001 C CNN
	1    4600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5450 4600 5750
Wire Wire Line
	4600 5150 4600 4700
Text Notes 4650 5600 0    50   Italic 0
Used for wire loop\nBridge if not used\n
Wire Notes Line
	1050 4450 6500 4450
Wire Notes Line
	1050 7400 6500 7400
Text Notes 4750 6100 0    50   Italic 0
Ipn = 5 A\n
Wire Wire Line
	9250 2950 9250 3150
Wire Wire Line
	9350 2750 9250 2750
Wire Wire Line
	9250 2750 9250 2950
Connection ~ 9250 2950
Wire Wire Line
	9350 2650 9250 2650
Wire Wire Line
	9250 2650 9250 2150
Wire Wire Line
	1050 1150 1450 1150
Wire Wire Line
	1450 1150 1450 1000
$EndSCHEMATC
