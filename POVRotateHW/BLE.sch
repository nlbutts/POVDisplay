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
Sheet 3 4
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
L R R?
U 1 1 58127B32
P 8350 2500
F 0 "R?" V 8430 2500 50  0000 C CNN
F 1 "330" V 8350 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 2500 50  0001 C CNN
F 3 "" H 8350 2500 50  0000 C CNN
	1    8350 2500
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 58127B39
P 7800 2500
F 0 "D?" H 7800 2600 50  0000 C CNN
F 1 "LED" H 7800 2400 50  0000 C CNN
F 2 "LEDs:LED_0603" H 7800 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0000 C CNN
	1    7800 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58127B40
P 10250 1200
F 0 "#PWR?" H 10250 1050 50  0001 C CNN
F 1 "VCC" H 10250 1350 50  0000 C CNN
F 2 "" H 10250 1200 50  0000 C CNN
F 3 "" H 10250 1200 50  0000 C CNN
	1    10250 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58127B46
P 9850 2150
F 0 "#PWR?" H 9850 1900 50  0001 C CNN
F 1 "GND" H 9850 2000 50  0000 C CNN
F 2 "" H 9850 2150 50  0000 C CNN
F 3 "" H 9850 2150 50  0000 C CNN
	1    9850 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58127B4C
P 8600 2350
F 0 "#PWR?" H 8600 2200 50  0001 C CNN
F 1 "VCC" H 8600 2500 50  0000 C CNN
F 2 "" H 8600 2350 50  0000 C CNN
F 3 "" H 8600 2350 50  0000 C CNN
	1    8600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2500 8600 2500
Wire Wire Line
	8600 2500 8600 2350
Wire Wire Line
	8000 2500 8200 2500
$Comp
L CONN_01X05 P?
U 1 1 58127B55
P 10650 1500
F 0 "P?" H 10650 1800 50  0000 C CNN
F 1 "CONN_01X05" V 10750 1500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 10650 1500 50  0001 C CNN
F 3 "" H 10650 1500 50  0000 C CNN
	1    10650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2500 7200 2500
Text Label 7300 2500 0    60   ~ 0
LED
Wire Wire Line
	10250 1200 10250 1300
Wire Wire Line
	10250 1300 10450 1300
Wire Wire Line
	9850 1400 10450 1400
Wire Wire Line
	10450 1500 10050 1500
Wire Wire Line
	10450 1600 10050 1600
Wire Wire Line
	10450 1700 10050 1700
Wire Wire Line
	9850 1400 9850 2150
Text Label 10100 1500 0    60   ~ 0
XRES
Connection ~ 9850 2000
Text Label 10450 1600 2    60   ~ 0
SWDCLK
Text Label 10400 1700 2    60   ~ 0
SWDIO
$EndSCHEMATC
