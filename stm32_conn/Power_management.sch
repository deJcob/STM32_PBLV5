EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Power distribution"
Date "2021-02-07"
Rev "3.0"
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
P 9400 1900
F 0 "U10" H 9400 2265 50  0000 C CNN
F 1 "Pololu-D24V50F5" H 9400 2174 50  0000 C CNN
F 2 "" H 9300 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Pololu-D24V50F5 U11
U 1 1 60B5D218
P 9400 3500
F 0 "U11" H 9400 3865 50  0000 C CNN
F 1 "Pololu-D24V50F5" H 9400 3774 50  0000 C CNN
F 2 "" H 9300 3250 50  0001 C CNN
F 3 "" H 9300 3250 50  0001 C CNN
	1    9400 3500
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
	9050 2000 8950 2000
Wire Wire Line
	8950 2200 9000 2200
Wire Wire Line
	9850 2200 9850 2000
Wire Wire Line
	9850 2000 9750 2000
Wire Wire Line
	9050 3600 8950 3600
Wire Wire Line
	8950 3800 9000 3800
Wire Wire Line
	9850 3800 9850 3650
Wire Wire Line
	9850 3600 9750 3600
$Comp
L power:GND #PWR040
U 1 1 60B5D230
P 8950 2300
F 0 "#PWR040" H 8950 2050 50  0001 C CNN
F 1 "GND" H 8955 2127 50  0000 C CNN
F 2 "" H 8950 2300 50  0001 C CNN
F 3 "" H 8950 2300 50  0001 C CNN
	1    8950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 60B5D236
P 8950 3900
F 0 "#PWR043" H 8950 3650 50  0001 C CNN
F 1 "GND" H 8955 3727 50  0000 C CNN
F 2 "" H 8950 3900 50  0001 C CNN
F 3 "" H 8950 3900 50  0001 C CNN
	1    8950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1900 9000 1900
Wire Wire Line
	9050 3500 9000 3500
$Comp
L power:+12V #PWR035
U 1 1 60B5D23E
P 6250 2250
F 0 "#PWR035" H 6250 2100 50  0001 C CNN
F 1 "+12V" H 6265 2423 50  0000 C CNN
F 2 "" H 6250 2250 50  0001 C CNN
F 3 "" H 6250 2250 50  0001 C CNN
	1    6250 2250
	1    0    0    -1  
$EndComp
NoConn ~ 9050 1800
NoConn ~ 9050 3400
Wire Wire Line
	9750 1900 9850 1900
Wire Wire Line
	9750 3500 9850 3500
$Comp
L power:+5VD #PWR041
U 1 1 60B5D248
P 9850 1400
F 0 "#PWR041" H 9850 1250 50  0001 C CNN
F 1 "+5VD" H 9865 1573 50  0000 C CNN
F 2 "" H 9850 1400 50  0001 C CNN
F 3 "" H 9850 1400 50  0001 C CNN
	1    9850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3500 9850 3450
$Comp
L power:+5V #PWR044
U 1 1 60B5D24F
P 9850 3000
F 0 "#PWR044" H 9850 2850 50  0001 C CNN
F 1 "+5V" H 9865 3173 50  0000 C CNN
F 2 "" H 9850 3000 50  0001 C CNN
F 3 "" H 9850 3000 50  0001 C CNN
	1    9850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1900 9850 1500
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
Text GLabel 9950 1500 2    50   Input Italic 0
+5V_STM32
Wire Wire Line
	9950 1500 9850 1500
Connection ~ 9850 1500
Wire Wire Line
	9850 1500 9850 1400
Wire Wire Line
	9850 3100 9950 3100
Connection ~ 9850 3100
Wire Wire Line
	9850 3100 9850 3000
Text GLabel 9950 3100 2    50   Input Italic 0
+5V_NVIDIA
Text Notes 2000 3150 0    50   Italic 0
XTREME 82-211
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 60B5D27E
P 10200 1900
F 0 "J9" H 10050 2100 50  0000 L CNN
F 1 "2PXH2.54" H 9900 2000 50  0000 L CNN
F 2 "" H 10200 1900 50  0001 C CNN
F 3 "~" H 10200 1900 50  0001 C CNN
	1    10200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1900 9850 1900
Connection ~ 9850 1900
Wire Wire Line
	9850 2000 10000 2000
Connection ~ 9850 2000
$Comp
L Connector:Jack-DC J10
U 1 1 60B5D28C
P 10350 3550
F 0 "J10" H 10350 3250 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm m" H 10800 3350 50  0000 R CNN
F 2 "" H 10400 3510 50  0001 C CNN
F 3 "~" H 10400 3510 50  0001 C CNN
	1    10350 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 3450 9850 3450
Connection ~ 9850 3450
Wire Wire Line
	9850 3450 9850 3100
Wire Wire Line
	9850 3650 10050 3650
Connection ~ 9850 3650
Wire Wire Line
	9850 3650 9850 3600
$Comp
L power:+12V #PWR033
U 1 1 60B5D29A
P 3100 2150
F 0 "#PWR033" H 3100 2000 50  0001 C CNN
F 1 "+12V" H 3115 2323 50  0000 C CNN
F 2 "" H 3100 2150 50  0001 C CNN
F 3 "" H 3100 2150 50  0001 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 60B5D2A0
P 3100 3250
F 0 "#PWR034" H 3100 3000 50  0001 C CNN
F 1 "GND" H 3105 3077 50  0000 C CNN
F 2 "" H 3100 3250 50  0001 C CNN
F 3 "" H 3100 3250 50  0001 C CNN
	1    3100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60B5D2A6
P 3100 2450
F 0 "D1" V 3045 2529 50  0000 L CNN
F 1 "GREEN_LED" V 3136 2529 50  0000 L CNN
F 2 "" H 3100 2450 50  0001 C CNN
F 3 "~" H 3100 2450 50  0001 C CNN
	1    3100 2450
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
	3100 2150 3100 2300
$Comp
L Device:R R1
U 1 1 60B5D2B6
P 3100 2900
F 0 "R1" H 3170 2946 50  0000 L CNN
F 1 "5k1" H 3170 2855 50  0000 L CNN
F 2 "" V 3030 2900 50  0001 C CNN
F 3 "~" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2600 3100 2750
Wire Wire Line
	3100 3050 3100 3250
$Comp
L power:+12P #PWR039
U 1 1 60B5D2BF
P 8950 1400
F 0 "#PWR039" H 8950 1250 50  0001 C CNN
F 1 "+12P" H 8965 1573 50  0000 C CNN
F 2 "" H 8950 1400 50  0001 C CNN
F 3 "" H 8950 1400 50  0001 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR042
U 1 1 60B5D2C5
P 8950 3000
F 0 "#PWR042" H 8950 2850 50  0001 C CNN
F 1 "+12P" H 8965 3173 50  0000 C CNN
F 2 "" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 50  0001 C CNN
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR037
U 1 1 60B5D2CB
P 8500 2250
F 0 "#PWR037" H 8500 2100 50  0001 C CNN
F 1 "+12P" H 8515 2423 50  0000 C CNN
F 2 "" H 8500 2250 50  0001 C CNN
F 3 "" H 8500 2250 50  0001 C CNN
	1    8500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1300 9000 1800
Wire Wire Line
	9000 2900 9000 3400
$Comp
L Connector:Jack-DC J7
U 1 1 60B5D2D3
P 6900 2650
F 0 "J7" H 6900 2350 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm f" H 7350 2450 50  0000 R CNN
F 2 "" H 6950 2610 50  0001 C CNN
F 3 "~" H 6950 2610 50  0001 C CNN
	1    6900 2650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack J8
U 1 1 60B5D2DA
P 7850 2650
F 0 "J8" H 7850 2350 50  0000 C CNN
F 1 "Jack DC 5.5/2.5mm m" H 7850 2450 50  0000 C CNN
F 2 "" H 7900 2610 50  0001 C CNN
F 3 "~" H 7900 2610 50  0001 C CNN
	1    7850 2650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 60B5D2E1
P 6250 3050
F 0 "#PWR036" H 6250 2800 50  0001 C CNN
F 1 "GND" H 6255 2877 50  0000 C CNN
F 2 "" H 6250 3050 50  0001 C CNN
F 3 "" H 6250 3050 50  0001 C CNN
	1    6250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 60B5D2E7
P 8500 3050
F 0 "#PWR038" H 8500 2800 50  0001 C CNN
F 1 "GND" H 8505 2877 50  0000 C CNN
F 2 "" H 8500 3050 50  0001 C CNN
F 3 "" H 8500 3050 50  0001 C CNN
	1    8500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3050 8500 2750
Wire Wire Line
	8500 2750 8150 2750
Wire Wire Line
	8150 2550 8500 2550
Wire Wire Line
	8500 2550 8500 2250
Wire Wire Line
	6600 2550 6250 2550
Wire Wire Line
	6250 2550 6250 2250
Wire Wire Line
	6250 3050 6250 2750
Wire Wire Line
	6600 2750 6250 2750
Text Notes 6300 2300 0    50   Italic 0
Yellow insulation
Text Notes 7800 2300 0    50   Italic 0
Yellow insulation
Text HLabel 1050 850  0    50   Input ~ 0
+12V
Text HLabel 1050 1000 0    50   Input ~ 0
+5VD
Text HLabel 1050 1150 0    50   Input ~ 0
GND
$Comp
L power:+12V #PWR027
U 1 1 60D897E8
P 1450 850
F 0 "#PWR027" H 1450 700 50  0001 C CNN
F 1 "+12V" V 1450 1100 50  0000 C CNN
F 2 "" H 1450 850 50  0001 C CNN
F 3 "" H 1450 850 50  0001 C CNN
	1    1450 850 
	0    1    1    0   
$EndComp
$Comp
L power:+5VD #PWR028
U 1 1 60D89853
P 1450 1000
F 0 "#PWR028" H 1450 850 50  0001 C CNN
F 1 "+5VD" V 1450 1250 50  0000 C CNN
F 2 "" H 1450 1000 50  0001 C CNN
F 3 "" H 1450 1000 50  0001 C CNN
	1    1450 1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 60D89960
P 1450 1150
F 0 "#PWR029" H 1450 900 50  0001 C CNN
F 1 "GND" V 1450 900 50  0000 C CNN
F 2 "" H 1450 1150 50  0001 C CNN
F 3 "" H 1450 1150 50  0001 C CNN
	1    1450 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 850  1450 850 
Wire Wire Line
	1450 1000 1050 1000
Wire Wire Line
	1050 1150 1450 1150
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
P 4150 2600
F 0 "U26" H 4150 2965 50  0000 C CNN
F 1 "Pololu-D24V150F12" H 4150 2874 50  0000 C CNN
F 2 "" H 4050 2350 50  0001 C CNN
F 3 "" H 4050 2350 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2700 3700 2700
Wire Wire Line
	3700 2700 3700 2900
Wire Wire Line
	3700 2900 4600 2900
Wire Wire Line
	4600 2900 4600 2750
Wire Wire Line
	4600 2700 4500 2700
$Comp
L power:GND #PWR0114
U 1 1 601C49F5
P 3700 3000
F 0 "#PWR0114" H 3700 2750 50  0001 C CNN
F 1 "GND" H 3705 2827 50  0000 C CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2600 3700 2600
NoConn ~ 3800 2500
Wire Wire Line
	4500 2600 4600 2600
Wire Wire Line
	4600 2600 4600 2550
Wire Wire Line
	3700 3000 3700 2900
Connection ~ 3700 2900
Text GLabel 4700 2200 2    50   Input Italic 0
+12V_NVIDIA
Wire Wire Line
	4700 2200 4600 2200
Connection ~ 4600 2200
Wire Wire Line
	4600 2200 4600 2100
Wire Wire Line
	3700 2100 3700 2600
$Comp
L power:+12V #PWR0115
U 1 1 601C7A9F
P 3700 2100
F 0 "#PWR0115" H 3700 1950 50  0001 C CNN
F 1 "+12V" H 3715 2273 50  0000 C CNN
F 2 "" H 3700 2100 50  0001 C CNN
F 3 "" H 3700 2100 50  0001 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J21
U 1 1 601C7CD3
P 5550 2650
F 0 "J21" H 5550 2350 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm f" H 6000 2450 50  0000 R CNN
F 2 "" H 5600 2610 50  0001 C CNN
F 3 "~" H 5600 2610 50  0001 C CNN
	1    5550 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 2550 4600 2550
Connection ~ 4600 2550
Wire Wire Line
	4600 2550 4600 2200
Wire Wire Line
	4600 2750 5250 2750
Connection ~ 4600 2750
Wire Wire Line
	4600 2750 4600 2700
$Comp
L power:+12L #PWR0116
U 1 1 601D4175
P 4600 2100
F 0 "#PWR0116" H 4600 1950 50  0001 C CNN
F 1 "+12L" H 4615 2273 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "" H 4600 2100 50  0001 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1650 2850 1750
Connection ~ 9000 1900
Wire Wire Line
	9000 1900 8950 1900
Connection ~ 9000 2200
Wire Wire Line
	9000 2200 9850 2200
Connection ~ 9000 3500
Wire Wire Line
	9000 3500 8950 3500
Connection ~ 9000 3800
Wire Wire Line
	9000 3800 9850 3800
Wire Wire Line
	9000 1900 9000 2200
Wire Wire Line
	9000 3500 9000 3800
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
$EndSCHEMATC
