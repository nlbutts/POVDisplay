EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Nickslib
LIBS:mylib
LIBS:POVRotateHW-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L APA102C U?
U 1 1 58127307
P 4300 2700
F 0 "U?" H 4250 2500 60  0000 C CNN
F 1 "APA102C" H 4300 2900 60  0000 C CNN
F 2 "" H 4350 2650 60  0001 C CNN
F 3 "" H 4350 2650 60  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 58127369
P 5650 2700
F 0 "U?" H 5600 2500 60  0000 C CNN
F 1 "APA102C" H 5650 2900 60  0000 C CNN
F 2 "" H 5700 2650 60  0001 C CNN
F 3 "" H 5700 2650 60  0001 C CNN
	1    5650 2700
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 581273A7
P 7050 2700
F 0 "U?" H 7000 2500 60  0000 C CNN
F 1 "APA102C" H 7050 2900 60  0000 C CNN
F 2 "" H 7100 2650 60  0001 C CNN
F 3 "" H 7100 2650 60  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 581273F0
P 8500 2700
F 0 "U?" H 8450 2500 60  0000 C CNN
F 1 "APA102C" H 8500 2900 60  0000 C CNN
F 2 "" H 8550 2650 60  0001 C CNN
F 3 "" H 8550 2650 60  0001 C CNN
	1    8500 2700
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 58127436
P 4300 4200
F 0 "U?" H 4250 4000 60  0000 C CNN
F 1 "APA102C" H 4300 4400 60  0000 C CNN
F 2 "" H 4350 4150 60  0001 C CNN
F 3 "" H 4350 4150 60  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 581274C5
P 5650 4200
F 0 "U?" H 5600 4000 60  0000 C CNN
F 1 "APA102C" H 5650 4400 60  0000 C CNN
F 2 "" H 5700 4150 60  0001 C CNN
F 3 "" H 5700 4150 60  0001 C CNN
	1    5650 4200
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 5812751F
P 7050 4200
F 0 "U?" H 7000 4000 60  0000 C CNN
F 1 "APA102C" H 7050 4400 60  0000 C CNN
F 2 "" H 7100 4150 60  0001 C CNN
F 3 "" H 7100 4150 60  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L APA102C U?
U 1 1 58127568
P 8500 4200
F 0 "U?" H 8450 4000 60  0000 C CNN
F 1 "APA102C" H 8500 4400 60  0000 C CNN
F 2 "" H 8550 4150 60  0001 C CNN
F 3 "" H 8550 4150 60  0001 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Text GLabel 3200 2550 0    60   Input ~ 0
MOSI
Text GLabel 3200 2700 0    60   Input ~ 0
SCLK
$Comp
L VCC #PWR?
U 1 1 5814D242
P 4850 3000
F 0 "#PWR?" H 4850 2850 50  0001 C CNN
F 1 "VCC" H 4850 3150 50  0000 C CNN
F 2 "" H 4850 3000 50  0000 C CNN
F 3 "" H 4850 3000 50  0000 C CNN
	1    4850 3000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5814D248
P 3500 3300
F 0 "#PWR?" H 3500 3050 50  0001 C CNN
F 1 "GND" H 3500 3150 50  0000 C CNN
F 2 "" H 3500 3300 50  0000 C CNN
F 3 "" H 3500 3300 50  0000 C CNN
	1    3500 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5814D2A4
P 3550 4950
F 0 "#PWR?" H 3550 4700 50  0001 C CNN
F 1 "GND" H 3550 4800 50  0000 C CNN
F 2 "" H 3550 4950 50  0000 C CNN
F 3 "" H 3550 4950 50  0000 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2800 3500 3300
Wire Wire Line
	3500 2800 3800 2800
Wire Wire Line
	4800 2600 5150 2600
Wire Wire Line
	4800 2700 5150 2700
Wire Wire Line
	3200 2700 3800 2700
Wire Wire Line
	3200 2550 3800 2550
Wire Wire Line
	3800 2550 3800 2600
Wire Wire Line
	6150 2600 6550 2600
Wire Wire Line
	6150 2700 6550 2700
Wire Wire Line
	7550 2600 8000 2600
Wire Wire Line
	7550 2700 8000 2700
Wire Wire Line
	5150 2800 5150 3250
Wire Wire Line
	3500 3250 8000 3250
Connection ~ 3500 3250
Wire Wire Line
	6550 3250 6550 2800
Connection ~ 5150 3250
Wire Wire Line
	8000 3250 8000 2800
Connection ~ 6550 3250
Wire Wire Line
	4850 2800 4850 3000
Wire Wire Line
	4850 2800 4800 2800
Wire Wire Line
	6150 2800 6150 2950
Wire Wire Line
	4850 2950 9000 2950
Connection ~ 4850 2950
Wire Wire Line
	7550 2800 7550 2950
Connection ~ 6150 2950
Wire Wire Line
	9000 2950 9000 2800
Connection ~ 7550 2950
$Comp
L VCC #PWR?
U 1 1 5814D854
P 4850 4600
F 0 "#PWR?" H 4850 4450 50  0001 C CNN
F 1 "VCC" H 4850 4750 50  0000 C CNN
F 2 "" H 4850 4600 50  0000 C CNN
F 3 "" H 4850 4600 50  0000 C CNN
	1    4850 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 2700 9150 2700
Wire Wire Line
	9150 2700 9150 3800
Wire Wire Line
	9150 3800 3550 3800
Wire Wire Line
	3550 3800 3550 4200
Wire Wire Line
	3550 4200 3800 4200
Wire Wire Line
	9000 2600 9100 2600
Wire Wire Line
	9100 2600 9100 3850
Wire Wire Line
	9100 3850 3600 3850
Wire Wire Line
	3600 3850 3600 4100
Wire Wire Line
	3600 4100 3800 4100
Wire Wire Line
	4800 4100 5150 4100
Wire Wire Line
	4800 4200 5150 4200
Wire Wire Line
	6150 4100 6550 4100
Wire Wire Line
	6150 4200 6550 4200
Wire Wire Line
	7550 4100 8000 4100
Wire Wire Line
	7550 4200 8000 4200
Wire Wire Line
	3550 4950 3550 4300
Wire Wire Line
	3550 4300 3800 4300
Wire Wire Line
	5150 4300 5150 4900
Wire Wire Line
	3550 4900 8000 4900
Connection ~ 3550 4900
Wire Wire Line
	6550 4900 6550 4300
Connection ~ 5150 4900
Wire Wire Line
	8000 4900 8000 4300
Connection ~ 6550 4900
Wire Wire Line
	4800 4300 4850 4300
Wire Wire Line
	4850 4300 4850 4600
Wire Wire Line
	6150 4300 6150 4550
Wire Wire Line
	4850 4550 9000 4550
Connection ~ 4850 4550
Wire Wire Line
	7550 4550 7550 4300
Connection ~ 6150 4550
Wire Wire Line
	9000 4550 9000 4300
Connection ~ 7550 4550
$EndSCHEMATC
