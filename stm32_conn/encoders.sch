EESchema Schematic File Version 4
LIBS:stm32_conn-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "Encoders"
Date "2021-01-02"
Rev "1.2"
Comp "Silesian University Of Technology"
Comment1 "PBL5"
Comment2 ""
Comment3 ""
Comment4 "Author: Jakub Kąkiel"
$EndDescr
Text HLabel 3750 4200 0    50   Input ~ 0
A1
Text HLabel 6200 4200 0    50   Input ~ 0
A2
Text HLabel 3750 4300 0    50   Input ~ 0
B1
Text HLabel 6200 4300 0    50   Input ~ 0
B2
Text HLabel 3750 4400 0    50   Input ~ 0
Z1
Text HLabel 6200 4400 0    50   Input ~ 0
Z2
Text HLabel 3000 3350 0    50   Input ~ 0
+5V
Text HLabel 3000 3450 0    50   Input ~ 0
GND
$Comp
L MCU_ModuleV2:Optical_sensor U4
U 1 1 5FA13EFA
P 4900 3600
F 0 "U4" H 5127 3596 50  0000 L CNN
F 1 "Optical_sensor" H 5127 3505 50  0000 L CNN
F 2 "" H 4900 3600 50  0001 C CNN
F 3 "" H 4900 3600 50  0001 C CNN
	1    4900 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Optical_sensor U5
U 1 1 5FA13F2E
P 4900 4200
F 0 "U5" H 5127 4196 50  0000 L CNN
F 1 "Optical_sensor" H 5127 4105 50  0000 L CNN
F 2 "" H 4900 4200 50  0001 C CNN
F 3 "" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Optical_sensor U6
U 1 1 5FA13F4E
P 4900 4800
F 0 "U6" H 5127 4796 50  0000 L CNN
F 1 "Optical_sensor" H 5127 4705 50  0000 L CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FA140C1
P 3150 3600
F 0 "#PWR022" H 3150 3350 50  0001 C CNN
F 1 "GND" H 3155 3427 50  0000 C CNN
F 2 "" H 3150 3600 50  0001 C CNN
F 3 "" H 3150 3600 50  0001 C CNN
	1    3150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5FA14121
P 3150 3250
F 0 "#PWR021" H 3150 3100 50  0001 C CNN
F 1 "+5V" H 3165 3423 50  0000 C CNN
F 2 "" H 3150 3250 50  0001 C CNN
F 3 "" H 3150 3250 50  0001 C CNN
	1    3150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3350 3150 3350
Wire Wire Line
	3150 3350 3150 3250
Wire Wire Line
	3150 3600 3150 3450
Wire Wire Line
	3150 3450 3000 3450
$Comp
L power:+5V #PWR023
U 1 1 5FA1415E
P 4150 3300
F 0 "#PWR023" H 4150 3150 50  0001 C CNN
F 1 "+5V" H 4165 3473 50  0000 C CNN
F 2 "" H 4150 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0001 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 4600 3700
Wire Wire Line
	3750 4300 4600 4300
Wire Wire Line
	3850 4900 4600 4900
Wire Wire Line
	4600 3500 4150 3500
Wire Wire Line
	4150 3500 4150 3300
Wire Wire Line
	4150 3500 4150 4100
Wire Wire Line
	4150 4100 4600 4100
Connection ~ 4150 3500
Wire Wire Line
	4600 4700 4150 4700
Wire Wire Line
	4150 4700 4150 4100
Connection ~ 4150 4100
Wire Wire Line
	4600 3600 4250 3600
Wire Wire Line
	4250 3600 4250 4200
Wire Wire Line
	4250 4800 4600 4800
Wire Wire Line
	4600 4200 4250 4200
Connection ~ 4250 4200
Wire Wire Line
	4250 4200 4250 4800
Wire Wire Line
	4250 4800 4250 5200
Connection ~ 4250 4800
$Comp
L power:GND #PWR024
U 1 1 5FA1462F
P 4250 5200
F 0 "#PWR024" H 4250 4950 50  0001 C CNN
F 1 "GND" H 4255 5027 50  0000 C CNN
F 2 "" H 4250 5200 50  0001 C CNN
F 3 "" H 4250 5200 50  0001 C CNN
	1    4250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 3850 4200
Wire Wire Line
	3850 4200 3750 4200
Wire Wire Line
	3750 4400 3850 4400
Wire Wire Line
	3850 4400 3850 4900
$Comp
L MCU_ModuleV2:Optical_sensor U7
U 1 1 5FA14FC7
P 7350 3600
F 0 "U7" H 7577 3596 50  0000 L CNN
F 1 "Optical_sensor" H 7577 3505 50  0000 L CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Optical_sensor U8
U 1 1 5FA14FCE
P 7350 4200
F 0 "U8" H 7577 4196 50  0000 L CNN
F 1 "Optical_sensor" H 7577 4105 50  0000 L CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L MCU_ModuleV2:Optical_sensor U9
U 1 1 5FA14FD5
P 7350 4800
F 0 "U9" H 7577 4796 50  0000 L CNN
F 1 "Optical_sensor" H 7577 4705 50  0000 L CNN
F 2 "" H 7350 4800 50  0001 C CNN
F 3 "" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3700 6300 4200
Wire Wire Line
	6300 4200 6200 4200
Wire Wire Line
	6200 4400 6300 4400
Wire Wire Line
	6300 4400 6300 4900
NoConn ~ 4600 3800
NoConn ~ 4600 4400
NoConn ~ 4600 5000
NoConn ~ 7050 5000
NoConn ~ 7050 4400
NoConn ~ 7050 3800
Wire Notes Line
	5900 3000 8300 3000
Wire Notes Line
	8300 3000 8300 5500
Wire Notes Line
	8300 5500 5900 5500
Wire Notes Line
	5900 5500 5900 3000
Wire Notes Line
	5800 3000 5800 5500
Wire Notes Line
	5800 5500 3400 5500
Wire Notes Line
	3400 5500 3400 3000
Wire Notes Line
	3400 3000 5800 3000
Text Notes 5000 5450 0    50   ~ 0
Left wheel encoder
Text Notes 7450 5450 0    50   ~ 0
Right wheel encoder
Text Notes 4300 3500 0    50   Italic 0
red
Text Notes 4300 3700 0    50   Italic 0
yellow
Text Notes 4300 4300 0    50   Italic 0
green\n
Text Notes 4300 4900 0    50   Italic 0
blue
Text Notes 4300 3600 0    50   Italic 0
black
Text Notes 4300 4100 0    50   Italic 0
red
Text Notes 4300 4700 0    50   Italic 0
red
Text Notes 4300 4200 0    50   Italic 0
black
Text Notes 4300 4800 0    50   Italic 0
black
$Comp
L power:+5V #PWR0103
U 1 1 60122855
P 6600 3300
F 0 "#PWR0103" H 6600 3150 50  0001 C CNN
F 1 "+5V" H 6615 3473 50  0000 C CNN
F 2 "" H 6600 3300 50  0001 C CNN
F 3 "" H 6600 3300 50  0001 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3700 7050 3700
Wire Wire Line
	6200 4300 7050 4300
Wire Wire Line
	6300 4900 7050 4900
Wire Wire Line
	7050 3500 6600 3500
Wire Wire Line
	6600 3500 6600 3300
Wire Wire Line
	6600 3500 6600 4100
Wire Wire Line
	6600 4100 7050 4100
Connection ~ 6600 3500
Wire Wire Line
	7050 4700 6600 4700
Wire Wire Line
	6600 4700 6600 4100
Connection ~ 6600 4100
Wire Wire Line
	7050 3600 6700 3600
Wire Wire Line
	6700 3600 6700 4200
Wire Wire Line
	6700 4800 7050 4800
Wire Wire Line
	7050 4200 6700 4200
Connection ~ 6700 4200
Wire Wire Line
	6700 4200 6700 4800
Wire Wire Line
	6700 4800 6700 5200
Connection ~ 6700 4800
$Comp
L power:GND #PWR0104
U 1 1 6012286E
P 6700 5200
F 0 "#PWR0104" H 6700 4950 50  0001 C CNN
F 1 "GND" H 6705 5027 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Text Notes 6750 3500 0    50   Italic 0
red
Text Notes 6750 3700 0    50   Italic 0
yellow
Text Notes 6750 4300 0    50   Italic 0
green\n
Text Notes 6750 4900 0    50   Italic 0
blue
Text Notes 6750 3600 0    50   Italic 0
black
Text Notes 6750 4100 0    50   Italic 0
red
Text Notes 6750 4700 0    50   Italic 0
red
Text Notes 6750 4200 0    50   Italic 0
black
Text Notes 6750 4800 0    50   Italic 0
black
$EndSCHEMATC
