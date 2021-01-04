EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Power distribution"
Date "2021-01-04"
Rev "1.2"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
$Comp
L Device:Battery BT1
U 1 1 60B5D1FE
P 2400 2950
F 0 "BT1" H 2508 2996 50  0000 L CNN
F 1 "GEL BATTERY 12V 7Ah" H 2508 2905 50  0000 L CNN
F 2 "" V 2400 3010 50  0001 C CNN
F 3 "~" V 2400 3010 50  0001 C CNN
	1    2400 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60B5D205
P 2400 4100
F 0 "#PWR031" H 2400 3850 50  0001 C CNN
F 1 "GND" H 2400 3950 50  0000 C CNN
F 2 "" H 2400 4100 50  0001 C CNN
F 3 "" H 2400 4100 50  0001 C CNN
	1    2400 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR032
U 1 1 60B5D20B
P 3350 1650
F 0 "#PWR032" H 3350 1500 50  0001 C CNN
F 1 "+12V" H 3365 1823 50  0000 C CNN
F 2 "" H 3350 1650 50  0001 C CNN
F 3 "" H 3350 1650 50  0001 C CNN
	1    3350 1650
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Pololu-D24V50F5 U10
U 1 1 60B5D211
P 7850 3400
F 0 "U10" H 7850 3765 50  0000 C CNN
F 1 "Pololu-D24V50F5" H 7850 3674 50  0000 C CNN
F 2 "" H 7750 3150 50  0001 C CNN
F 3 "" H 7750 3150 50  0001 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Pololu-D24V50F5 U11
U 1 1 60B5D218
P 9450 3400
F 0 "U11" H 9450 3765 50  0000 C CNN
F 1 "Pololu-D24V50F5" H 9450 3674 50  0000 C CNN
F 2 "" H 9350 3150 50  0001 C CNN
F 3 "" H 9350 3150 50  0001 C CNN
	1    9450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 60B5D21F
P 2400 1950
F 0 "F1" H 2460 1996 50  0000 L CNN
F 1 "5A" H 2460 1905 50  0000 L CNN
F 2 "" V 2330 1950 50  0001 C CNN
F 3 "~" H 2400 1950 50  0001 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2650 2400 2750
Wire Wire Line
	7500 3500 7400 3500
Wire Wire Line
	7400 3500 7400 3700
Wire Wire Line
	7400 3700 8300 3700
Wire Wire Line
	8300 3700 8300 3500
Wire Wire Line
	8300 3500 8200 3500
Wire Wire Line
	9100 3500 9000 3500
Wire Wire Line
	9000 3700 9900 3700
Wire Wire Line
	9900 3700 9900 3550
Wire Wire Line
	9900 3500 9800 3500
$Comp
L power:GND #PWR040
U 1 1 60B5D230
P 7400 3800
F 0 "#PWR040" H 7400 3550 50  0001 C CNN
F 1 "GND" H 7405 3627 50  0000 C CNN
F 2 "" H 7400 3800 50  0001 C CNN
F 3 "" H 7400 3800 50  0001 C CNN
	1    7400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 60B5D236
P 9000 3800
F 0 "#PWR043" H 9000 3550 50  0001 C CNN
F 1 "GND" H 9005 3627 50  0000 C CNN
F 2 "" H 9000 3800 50  0001 C CNN
F 3 "" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3400 7400 3400
Wire Wire Line
	9100 3400 9000 3400
$Comp
L power:+12V #PWR035
U 1 1 60B5D23E
P 4450 2900
F 0 "#PWR035" H 4450 2750 50  0001 C CNN
F 1 "+12V" H 4465 3073 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
NoConn ~ 7500 3300
NoConn ~ 9100 3300
Wire Wire Line
	8200 3400 8300 3400
Wire Wire Line
	9800 3400 9900 3400
$Comp
L power:+5VD #PWR041
U 1 1 60B5D248
P 8300 2900
F 0 "#PWR041" H 8300 2750 50  0001 C CNN
F 1 "+5VD" H 8315 3073 50  0000 C CNN
F 2 "" H 8300 2900 50  0001 C CNN
F 3 "" H 8300 2900 50  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3400 9900 3350
$Comp
L power:+5V #PWR044
U 1 1 60B5D24F
P 9900 2900
F 0 "#PWR044" H 9900 2750 50  0001 C CNN
F 1 "+5V" H 9915 3073 50  0000 C CNN
F 2 "" H 9900 2900 50  0001 C CNN
F 3 "" H 9900 2900 50  0001 C CNN
	1    9900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3400 8300 3000
Wire Wire Line
	7400 3800 7400 3700
Connection ~ 7400 3700
$Comp
L Connector:Barrel_Jack J6
U 1 1 60B5D258
P 1600 3300
F 0 "J6" H 1600 3000 50  0000 C CNN
F 1 "Jack DC 5.5/2.5mm f" H 1600 3100 50  0000 C CNN
F 2 "" H 1650 3260 50  0001 C CNN
F 3 "~" H 1650 3260 50  0001 C CNN
	1    1600 3300
	1    0    0    1   
$EndComp
Text Notes 1900 3650 2    50   Italic 0
Charging input\n13.6-15.5 VDC
$Comp
L power:+12C #PWR030
U 1 1 60B5D260
P 2400 1650
F 0 "#PWR030" H 2400 1500 50  0001 C CNN
F 1 "+12C" H 2415 1823 50  0000 C CNN
F 2 "" H 2400 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1650 2400 1750
$Comp
L Switch:SW_SPST SW1
U 1 1 60B5D268
P 2900 1750
F 0 "SW1" H 2900 1985 50  0000 C CNN
F 1 "Main power switch" H 2900 1894 50  0000 C CNN
F 2 "" H 2900 1750 50  0001 C CNN
F 3 "" H 2900 1750 50  0001 C CNN
	1    2900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1750 2700 1750
Connection ~ 2400 1750
Wire Wire Line
	2400 1750 2400 1800
Wire Wire Line
	3100 1750 3350 1750
Wire Wire Line
	3350 1750 3350 1650
Text GLabel 8400 3000 2    50   Input Italic 0
+5V_STM32
Wire Wire Line
	8400 3000 8300 3000
Connection ~ 8300 3000
Wire Wire Line
	8300 3000 8300 2900
Wire Wire Line
	9900 3000 10000 3000
Connection ~ 9900 3000
Wire Wire Line
	9900 3000 9900 2900
Text GLabel 10000 3000 2    50   Input Italic 0
+5V_NVIDIA
Text Notes 2500 3150 0    50   Italic 0
XTREME 82-211
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 60B5D27E
P 8650 3400
F 0 "J9" H 8500 3600 50  0000 L CNN
F 1 "2PXH2.54" H 8350 3500 50  0000 L CNN
F 2 "" H 8650 3400 50  0001 C CNN
F 3 "~" H 8650 3400 50  0001 C CNN
	1    8650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3400 8300 3400
Connection ~ 8300 3400
Wire Wire Line
	8300 3500 8450 3500
Connection ~ 8300 3500
Wire Wire Line
	9000 3500 9000 3700
Wire Wire Line
	9000 3800 9000 3700
Connection ~ 9000 3700
$Comp
L Connector:Jack-DC J10
U 1 1 60B5D28C
P 10400 3450
F 0 "J10" H 10400 3150 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm m" H 10850 3250 50  0000 R CNN
F 2 "" H 10450 3410 50  0001 C CNN
F 3 "~" H 10450 3410 50  0001 C CNN
	1    10400 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 3350 9900 3350
Connection ~ 9900 3350
Wire Wire Line
	9900 3350 9900 3000
Wire Wire Line
	9900 3550 10100 3550
Connection ~ 9900 3550
Wire Wire Line
	9900 3550 9900 3500
$Comp
L power:+12V #PWR033
U 1 1 60B5D29A
P 3700 2800
F 0 "#PWR033" H 3700 2650 50  0001 C CNN
F 1 "+12V" H 3715 2973 50  0000 C CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 60B5D2A0
P 3700 3900
F 0 "#PWR034" H 3700 3650 50  0001 C CNN
F 1 "GND" H 3705 3727 50  0000 C CNN
F 2 "" H 3700 3900 50  0001 C CNN
F 3 "" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60B5D2A6
P 3700 3100
F 0 "D1" V 3645 3179 50  0000 L CNN
F 1 "GREEN_LED" V 3736 3179 50  0000 L CNN
F 2 "" H 3700 3100 50  0001 C CNN
F 3 "~" H 3700 3100 50  0001 C CNN
	1    3700 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3200 2200 3200
Wire Wire Line
	2200 1750 2400 1750
Wire Wire Line
	1900 3400 2200 3400
Wire Wire Line
	2200 3400 2200 4000
Wire Wire Line
	2200 4000 2400 4000
Wire Wire Line
	2400 4000 2400 4100
Wire Wire Line
	3700 2800 3700 2950
$Comp
L Device:R R1
U 1 1 60B5D2B6
P 3700 3550
F 0 "R1" H 3770 3596 50  0000 L CNN
F 1 "5k1" H 3770 3505 50  0000 L CNN
F 2 "" V 3630 3550 50  0001 C CNN
F 3 "~" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3250 3700 3400
Wire Wire Line
	3700 3700 3700 3900
$Comp
L power:+12P #PWR039
U 1 1 60B5D2BF
P 7400 2900
F 0 "#PWR039" H 7400 2750 50  0001 C CNN
F 1 "+12P" H 7415 3073 50  0000 C CNN
F 2 "" H 7400 2900 50  0001 C CNN
F 3 "" H 7400 2900 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR042
U 1 1 60B5D2C5
P 9000 2900
F 0 "#PWR042" H 9000 2750 50  0001 C CNN
F 1 "+12P" H 9015 3073 50  0000 C CNN
F 2 "" H 9000 2900 50  0001 C CNN
F 3 "" H 9000 2900 50  0001 C CNN
	1    9000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR037
U 1 1 60B5D2CB
P 6900 2900
F 0 "#PWR037" H 6900 2750 50  0001 C CNN
F 1 "+12P" H 6915 3073 50  0000 C CNN
F 2 "" H 6900 2900 50  0001 C CNN
F 3 "" H 6900 2900 50  0001 C CNN
	1    6900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2900 7400 3400
Wire Wire Line
	9000 2900 9000 3400
$Comp
L Connector:Jack-DC J7
U 1 1 60B5D2D3
P 5100 3300
F 0 "J7" H 5100 3000 50  0000 R CNN
F 1 "DC-Jack 5.5/2.5mm f" H 5550 3100 50  0000 R CNN
F 2 "" H 5150 3260 50  0001 C CNN
F 3 "~" H 5150 3260 50  0001 C CNN
	1    5100 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Barrel_Jack J8
U 1 1 60B5D2DA
P 6250 3300
F 0 "J8" H 6250 3000 50  0000 C CNN
F 1 "Jack DC 5.5/2.5mm m" H 6250 3100 50  0000 C CNN
F 2 "" H 6300 3260 50  0001 C CNN
F 3 "~" H 6300 3260 50  0001 C CNN
	1    6250 3300
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 60B5D2E1
P 4450 3700
F 0 "#PWR036" H 4450 3450 50  0001 C CNN
F 1 "GND" H 4455 3527 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 60B5D2E7
P 6900 3700
F 0 "#PWR038" H 6900 3450 50  0001 C CNN
F 1 "GND" H 6905 3527 50  0000 C CNN
F 2 "" H 6900 3700 50  0001 C CNN
F 3 "" H 6900 3700 50  0001 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3700 6900 3400
Wire Wire Line
	6900 3400 6550 3400
Wire Wire Line
	6550 3200 6900 3200
Wire Wire Line
	6900 3200 6900 2900
Wire Wire Line
	4800 3200 4450 3200
Wire Wire Line
	4450 3200 4450 2900
Wire Wire Line
	4450 3700 4450 3400
Wire Wire Line
	4800 3400 4450 3400
Text Notes 4500 2950 0    50   Italic 0
Yellow insulation
Text Notes 6200 2950 0    50   Italic 0
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
Wire Notes Line
	1050 4450 5700 4450
Wire Notes Line
	5700 7400 1050 7400
$Comp
L Connector:Conn_01x01_Male J16
U 1 1 5FF4FDE0
P 2400 2450
F 0 "J16" V 2460 2490 50  0000 L CNN
F 1 "4.8mm M+" V 2551 2490 50  0000 L CNN
F 2 "" H 2400 2450 50  0001 C CNN
F 3 "~" H 2400 2450 50  0001 C CNN
	1    2400 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J17
U 1 1 5FF55AEF
P 2400 3450
F 0 "J17" V 2553 3363 50  0000 R CNN
F 1 "4.8mm M-" V 2462 3363 50  0000 R CNN
F 2 "" H 2400 3450 50  0001 C CNN
F 3 "~" H 2400 3450 50  0001 C CNN
	1    2400 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J15
U 1 1 5FF55BE6
P 2400 2400
F 0 "J15" V 2247 2448 50  0000 L CNN
F 1 "4.8mm F+" V 2338 2448 50  0000 L CNN
F 2 "" H 2400 2400 50  0001 C CNN
F 3 "~" H 2400 2400 50  0001 C CNN
	1    2400 2400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J18
U 1 1 5FF55C4E
P 2400 3500
F 0 "J18" V 2340 3412 50  0000 R CNN
F 1 "4.8mm F-" V 2249 3412 50  0000 R CNN
F 2 "" H 2400 3500 50  0001 C CNN
F 3 "~" H 2400 3500 50  0001 C CNN
	1    2400 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2100 2400 2200
Wire Wire Line
	2400 3150 2400 3250
Wire Wire Line
	2400 3700 2400 4000
Connection ~ 2400 4000
Wire Wire Line
	2200 1750 2200 3200
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 5FF5C372
P 1400 4800
F 0 "J14" H 1506 4978 50  0000 C CNN
F 1 "4.8mm M IN +" H 1506 4887 50  0000 C CNN
F 2 "" H 1400 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J20
U 1 1 5FF5C379
P 5000 6750
F 0 "J20" H 5027 6776 50  0000 L CNN
F 1 "4.8mm F OUT -" H 5027 6685 50  0000 L CNN
F 2 "" H 5000 6750 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    5000 6750
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
P 5000 4800
F 0 "J19" H 5027 4826 50  0000 L CNN
F 1 "4.8mm F OUT +" H 5027 4735 50  0000 L CNN
F 2 "" H 5000 4800 50  0001 C CNN
F 3 "~" H 5000 4800 50  0001 C CNN
	1    5000 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5FF64250
P 3900 4800
F 0 "TP2" H 4050 4850 50  0000 L CNN
F 1 "Test point" H 4050 4750 50  0000 L CNN
F 2 "" H 4100 4800 50  0001 C CNN
F 3 "~" H 4100 4800 50  0001 C CNN
	1    3900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4800 3900 4800
Connection ~ 3900 4800
Wire Wire Line
	3900 4800 4800 4800
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5FF67955
P 3900 6750
F 0 "TP3" H 4050 6800 50  0000 L CNN
F 1 "Test point" H 4050 6700 50  0000 L CNN
F 2 "" H 4100 6750 50  0001 C CNN
F 3 "~" H 4100 6750 50  0001 C CNN
	1    3900 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FF67A77
P 3100 5850
F 0 "R4" V 2893 5850 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 5850 50  0000 C CNN
F 2 "" V 3030 5850 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FF67BFB
P 3100 5550
F 0 "R3" V 2893 5550 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 5550 50  0000 C CNN
F 2 "" V 3030 5550 50  0001 C CNN
F 3 "~" H 3100 5550 50  0001 C CNN
	1    3100 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF67C43
P 3100 5250
F 0 "R2" V 2893 5250 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 5250 50  0000 C CNN
F 2 "" V 3030 5250 50  0001 C CNN
F 3 "~" H 3100 5250 50  0001 C CNN
	1    3100 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5FF67D09
P 3100 6750
F 0 "R7" V 2893 6750 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 6750 50  0000 C CNN
F 2 "" V 3030 6750 50  0001 C CNN
F 3 "~" H 3100 6750 50  0001 C CNN
	1    3100 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FF67D10
P 3100 6450
F 0 "R6" V 2893 6450 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 6450 50  0000 C CNN
F 2 "" V 3030 6450 50  0001 C CNN
F 3 "~" H 3100 6450 50  0001 C CNN
	1    3100 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FF67D17
P 3100 6150
F 0 "R5" V 2893 6150 50  0000 C CNN
F 1 "1 1% 0.6W" V 2984 6150 50  0000 C CNN
F 2 "" V 3030 6150 50  0001 C CNN
F 3 "~" H 3100 6150 50  0001 C CNN
	1    3100 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5250 2400 5250
Wire Wire Line
	2400 5250 2400 5550
Wire Wire Line
	2400 6750 2950 6750
Wire Wire Line
	2400 6450 2950 6450
Connection ~ 2400 6450
Wire Wire Line
	2400 6450 2400 6750
Wire Wire Line
	2400 6150 2950 6150
Connection ~ 2400 6150
Wire Wire Line
	2400 6150 2400 6450
Wire Wire Line
	2950 5850 2400 5850
Connection ~ 2400 5850
Wire Wire Line
	2400 5850 2400 6150
Wire Wire Line
	2950 5550 2400 5550
Connection ~ 2400 5550
Wire Wire Line
	2400 5550 2400 5850
Wire Wire Line
	2400 6750 1750 6750
Connection ~ 2400 6750
Connection ~ 3900 6750
Wire Wire Line
	3900 6750 4800 6750
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5FF822ED
P 1750 6750
F 0 "TP1" H 1900 6800 50  0000 L CNN
F 1 "Test point" H 1900 6700 50  0000 L CNN
F 2 "" H 1950 6750 50  0001 C CNN
F 3 "~" H 1950 6750 50  0001 C CNN
	1    1750 6750
	1    0    0    -1  
$EndComp
Connection ~ 1750 6750
Wire Wire Line
	1750 6750 1550 6750
Text Notes 1100 7350 0    100  Italic 20
Probe board 
Text Notes 1100 7150 0    50   Italic 0
It is optional board designed for measeruing current \nconsumption by indirect measurement of the volatege on resistors.\nMount it between fuse and main GND and battery. 
Wire Notes Line
	1050 4450 1050 7400
Wire Notes Line
	5700 4450 5700 7400
Wire Wire Line
	3750 5250 3750 5550
Connection ~ 3750 6750
Wire Wire Line
	3750 6750 3900 6750
Connection ~ 3750 6450
Wire Wire Line
	3750 6450 3750 6750
Connection ~ 3750 6150
Wire Wire Line
	3750 6150 3750 6450
Connection ~ 3750 5850
Wire Wire Line
	3750 5850 3750 6150
Connection ~ 3750 5550
Wire Wire Line
	3750 5550 3750 5850
Wire Wire Line
	3250 5250 3750 5250
Wire Wire Line
	3250 5550 3750 5550
Wire Wire Line
	3250 5850 3750 5850
Wire Wire Line
	3250 6150 3750 6150
Wire Wire Line
	3250 6450 3750 6450
Wire Wire Line
	3250 6750 3750 6750
$EndSCHEMATC
