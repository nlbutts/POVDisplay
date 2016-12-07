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
LIBS:General
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
L R R14
U 1 1 58127B32
P 10350 3300
F 0 "R14" V 10430 3300 50  0000 C CNN
F 1 "330" V 10350 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 10280 3300 50  0001 C CNN
F 3 "" H 10350 3300 50  0000 C CNN
	1    10350 3300
	0    -1   -1   0   
$EndComp
$Comp
L LED D8
U 1 1 58127B39
P 9800 3300
F 0 "D8" H 9800 3400 50  0000 C CNN
F 1 "LED" H 9800 3200 50  0000 C CNN
F 2 "LEDs:LED_0603" H 9800 3300 50  0001 C CNN
F 3 "" H 9800 3300 50  0000 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 58127B40
P 10250 1200
F 0 "#PWR015" H 10250 1050 50  0001 C CNN
F 1 "VCC" H 10250 1350 50  0000 C CNN
F 2 "" H 10250 1200 50  0000 C CNN
F 3 "" H 10250 1200 50  0000 C CNN
	1    10250 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58127B46
P 9850 2150
F 0 "#PWR016" H 9850 1900 50  0001 C CNN
F 1 "GND" H 9850 2000 50  0000 C CNN
F 2 "" H 9850 2150 50  0000 C CNN
F 3 "" H 9850 2150 50  0000 C CNN
	1    9850 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 58127B4C
P 10600 3150
F 0 "#PWR017" H 10600 3000 50  0001 C CNN
F 1 "VCC" H 10600 3300 50  0000 C CNN
F 2 "" H 10600 3150 50  0000 C CNN
F 3 "" H 10600 3150 50  0000 C CNN
	1    10600 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 58127B55
P 10650 1500
F 0 "P2" H 10650 1800 50  0000 C CNN
F 1 "CONN_01X05" V 10750 1500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 10650 1500 50  0001 C CNN
F 3 "" H 10650 1500 50  0000 C CNN
	1    10650 1500
	1    0    0    -1  
$EndComp
Text Label 9300 3300 0    60   ~ 0
LED
Text Label 10100 1500 0    60   ~ 0
XRES
Text Label 10450 1600 2    60   ~ 0
SWDCLK
Text Label 10400 1700 2    60   ~ 0
SWDIO
$Comp
L CYBLE-022001-00 U4
U 1 1 5812CAAC
P 6000 3750
F 0 "U4" H 5900 2750 60  0000 C CNN
F 1 "CYBLE-022001-00" H 6000 4550 60  0000 C CNN
F 2 "KicadLibrary:CYBLE-022001" H 6000 4250 60  0001 C CNN
F 3 "" H 6000 4250 60  0001 C CNN
F 4 "428-3566-PROMO-ND" H 6000 3750 60  0001 C CNN "DIGIKEY"
	1    6000 3750
	1    0    0    -1  
$EndComp
Text GLabel 1350 1150 0    60   Input ~ 0
VCC
Text GLabel 1350 1500 0    60   Input ~ 0
GND
$Comp
L GND #PWR018
U 1 1 581265FE
P 1550 1500
F 0 "#PWR018" H 1550 1250 50  0001 C CNN
F 1 "GND" H 1550 1350 50  0000 C CNN
F 2 "" H 1550 1500 50  0000 C CNN
F 3 "" H 1550 1500 50  0000 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 58126615
P 1550 1150
F 0 "#PWR019" H 1550 1000 50  0001 C CNN
F 1 "VCC" H 1550 1300 50  0000 C CNN
F 2 "" H 1550 1150 50  0000 C CNN
F 3 "" H 1550 1150 50  0000 C CNN
	1    1550 1150
	1    0    0    -1  
$EndComp
Text GLabel 4800 3100 0    60   Input ~ 0
MOSI
Text GLabel 4800 3900 0    60   Input ~ 0
SCLK
Text Label 4850 3300 0    60   ~ 0
SWDIO
Text Label 4850 3400 0    60   ~ 0
SWDCLK
Text Label 4850 3800 0    60   ~ 0
LED
Text Label 4850 3200 0    60   ~ 0
ALIGNMENT
Text Label 4900 4200 0    60   ~ 0
SCL
Text Label 4900 4100 0    60   ~ 0
SDA
Text Label 4850 4400 0    60   ~ 0
INPUT_POWER
Text Label 4850 3600 0    60   ~ 0
WP
Text Label 4850 3700 0    60   ~ 0
TX
Text Label 4900 4300 0    60   ~ 0
OTHER
$Comp
L VCC #PWR020
U 1 1 5814CF5A
P 6750 3800
F 0 "#PWR020" H 6750 3650 50  0001 C CNN
F 1 "VCC" H 6750 3950 50  0000 C CNN
F 2 "" H 6750 3800 50  0000 C CNN
F 3 "" H 6750 3800 50  0000 C CNN
	1    6750 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5814CF60
P 6750 4800
F 0 "#PWR021" H 6750 4550 50  0001 C CNN
F 1 "GND" H 6750 4650 50  0000 C CNN
F 2 "" H 6750 4800 50  0000 C CNN
F 3 "" H 6750 4800 50  0000 C CNN
	1    6750 4800
	1    0    0    -1  
$EndComp
$Comp
L M24M01 U2
U 1 1 58177CC2
P 2450 3700
F 0 "U2" H 2450 3250 60  0000 C CNN
F 1 "M24M01" H 2450 4150 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 2450 3700 60  0001 C CNN
F 3 "" H 2450 3700 60  0001 C CNN
F 4 "497-14359-1-ND" H 2450 3700 60  0001 C CNN "DIGIKEY"
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 58177D73
P 3150 4100
F 0 "#PWR022" H 3150 3850 50  0001 C CNN
F 1 "GND" H 3150 3950 50  0000 C CNN
F 2 "" H 3150 4100 50  0000 C CNN
F 3 "" H 3150 4100 50  0000 C CNN
	1    3150 4100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 58177D8D
P 3150 3300
F 0 "#PWR023" H 3150 3150 50  0001 C CNN
F 1 "VCC" H 3150 3450 50  0000 C CNN
F 2 "" H 3150 3300 50  0000 C CNN
F 3 "" H 3150 3300 50  0000 C CNN
	1    3150 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 58177DA7
P 1400 2900
F 0 "#PWR024" H 1400 2750 50  0001 C CNN
F 1 "VCC" H 1400 3050 50  0000 C CNN
F 2 "" H 1400 2900 50  0000 C CNN
F 3 "" H 1400 2900 50  0000 C CNN
	1    1400 2900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58177DBE
P 1700 3250
F 0 "R6" V 1780 3250 50  0000 C CNN
F 1 "4k" V 1700 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1630 3250 50  0001 C CNN
F 3 "" H 1700 3250 50  0000 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58177E59
P 1400 3250
F 0 "R5" V 1480 3250 50  0000 C CNN
F 1 "4k" V 1400 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1330 3250 50  0001 C CNN
F 3 "" H 1400 3250 50  0000 C CNN
	1    1400 3250
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 58178123
P 3150 3700
F 0 "C9" H 3175 3800 50  0000 L CNN
F 1 "0.1u" H 3175 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3188 3550 50  0001 C CNN
F 3 "" H 3150 3700 50  0000 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
Text Label 1450 3550 0    60   ~ 0
SCL
Text Label 1750 3450 0    60   ~ 0
SDA
Text Label 1700 4000 0    60   ~ 0
WP
$Comp
L GND #PWR025
U 1 1 58178354
P 1400 4000
F 0 "#PWR025" H 1400 3750 50  0001 C CNN
F 1 "GND" H 1400 3850 50  0000 C CNN
F 2 "" H 1400 4000 50  0000 C CNN
F 3 "" H 1400 4000 50  0000 C CNN
	1    1400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3300 10600 3300
Wire Wire Line
	10600 3300 10600 3150
Wire Wire Line
	10000 3300 10200 3300
Wire Wire Line
	9600 3300 9200 3300
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
Connection ~ 9850 2000
Wire Wire Line
	1550 1500 1350 1500
Wire Wire Line
	1550 1150 1350 1150
Wire Wire Line
	4800 3100 5400 3100
Wire Wire Line
	5400 3900 4800 3900
Wire Wire Line
	5400 3400 4800 3400
Wire Wire Line
	5400 3300 4800 3300
Wire Wire Line
	5400 3800 4800 3800
Wire Wire Line
	5400 3200 4800 3200
Wire Wire Line
	5400 4200 4800 4200
Wire Wire Line
	5400 4100 4800 4100
Wire Wire Line
	4500 4400 5400 4400
Wire Wire Line
	5400 3600 4800 3600
Wire Wire Line
	4400 3700 5400 3700
Wire Wire Line
	4100 4300 5400 4300
Wire Wire Line
	6600 3900 6750 3900
Wire Wire Line
	6750 3800 6750 4000
Wire Wire Line
	6750 4000 6600 4000
Connection ~ 6750 3900
Wire Wire Line
	6600 4600 6750 4600
Wire Wire Line
	6750 4500 6750 4800
Wire Wire Line
	6600 4500 6750 4500
Connection ~ 6750 4600
Wire Wire Line
	1950 3450 1700 3450
Wire Wire Line
	1700 3450 1700 3400
Wire Wire Line
	1950 3550 1400 3550
Wire Wire Line
	1400 3550 1400 3400
Wire Wire Line
	1400 2900 1400 3100
Wire Wire Line
	1700 3100 1700 3000
Wire Wire Line
	1700 3000 1400 3000
Connection ~ 1400 3000
Wire Wire Line
	2950 4000 3150 4000
Wire Wire Line
	3150 3850 3150 4100
Wire Wire Line
	2950 3450 3150 3450
Wire Wire Line
	3150 3300 3150 3550
Connection ~ 3150 4000
Connection ~ 3150 3450
Wire Wire Line
	1950 4000 1650 4000
Wire Wire Line
	1950 3750 1400 3750
Wire Wire Line
	1400 3750 1400 4000
Wire Wire Line
	1950 3850 1400 3850
Connection ~ 1400 3850
Wire Wire Line
	5400 4600 4800 4600
Text Label 4900 4600 0    60   ~ 0
XRES
NoConn ~ 2950 3700
$Comp
L TEST_1P W6
U 1 1 5817A554
P 6850 3000
F 0 "W6" H 6850 3270 50  0000 C CNN
F 1 "P4.0" H 6850 3200 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7050 3000 50  0001 C CNN
F 3 "" H 7050 3000 50  0000 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3100 6850 3100
Wire Wire Line
	6850 3100 6850 3000
Wire Wire Line
	6600 3200 7400 3200
Wire Wire Line
	6600 3350 7350 3350
Wire Wire Line
	6600 3450 7850 3450
$Comp
L R R7
U 1 1 5817AB59
P 3900 4900
F 0 "R7" V 3980 4900 50  0000 C CNN
F 1 "100k" V 3900 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 4900 50  0001 C CNN
F 3 "" H 3900 4900 50  0000 C CNN
	1    3900 4900
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5817AC06
P 3900 5450
F 0 "R8" V 3980 5450 50  0000 C CNN
F 1 "1M" V 3900 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 5450 50  0001 C CNN
F 3 "" H 3900 5450 50  0000 C CNN
	1    3900 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5817AC52
P 3900 5850
F 0 "#PWR026" H 3900 5600 50  0001 C CNN
F 1 "GND" H 3900 5700 50  0000 C CNN
F 2 "" H 3900 5850 50  0000 C CNN
F 3 "" H 3900 5850 50  0000 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5600 3900 5850
Text GLabel 3350 4550 0    60   Input ~ 0
PWR
Wire Wire Line
	3350 4550 3900 4550
Wire Wire Line
	3900 4550 3900 4750
Wire Wire Line
	3900 5050 3900 5300
Wire Wire Line
	3900 5150 4500 5150
Wire Wire Line
	4500 5150 4500 4400
Connection ~ 3900 5150
$Comp
L TEST_1P W5
U 1 1 5817C2B0
P 4400 3650
F 0 "W5" H 4400 3920 50  0000 C CNN
F 1 "TEST_1P" H 4400 3850 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4600 3650 50  0001 C CNN
F 3 "" H 4600 3650 50  0000 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3700 4400 3650
$Comp
L LMC6062 U3
U 1 1 5817CB93
P 4250 1800
F 0 "U3" H 4250 2000 50  0000 L CNN
F 1 "LMC6062" H 4250 1600 50  0000 L CNN
F 2 "SMD_Packages:SOIC-8-N" H 4250 1800 50  0001 C CNN
F 3 "" H 4250 1800 50  0000 C CNN
F 4 "LMC6032IMX/NOPBCT-ND" H 4250 1800 60  0001 C CNN "DIGIKEY"
	1    4250 1800
	1    0    0    -1  
$EndComp
$Comp
L LMC6062 U3
U 2 1 5817CBF8
P 6150 1650
F 0 "U3" H 6150 1850 50  0000 L CNN
F 1 "LMC6062" H 6150 1450 50  0000 L CNN
F 2 "SMD_Packages:SOIC-8-N" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0000 C CNN
	2    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5817CC7C
P 4150 2400
F 0 "#PWR027" H 4150 2150 50  0001 C CNN
F 1 "GND" H 4150 2250 50  0000 C CNN
F 2 "" H 4150 2400 50  0000 C CNN
F 3 "" H 4150 2400 50  0000 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR028
U 1 1 5817CCBA
P 4150 1450
F 0 "#PWR028" H 4150 1300 50  0001 C CNN
F 1 "VCC" H 4150 1600 50  0000 C CNN
F 2 "" H 4150 1450 50  0000 C CNN
F 3 "" H 4150 1450 50  0000 C CNN
	1    4150 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5817CCF8
P 6050 2150
F 0 "#PWR029" H 6050 1900 50  0001 C CNN
F 1 "GND" H 6050 2000 50  0000 C CNN
F 2 "" H 6050 2150 50  0000 C CNN
F 3 "" H 6050 2150 50  0000 C CNN
	1    6050 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR030
U 1 1 5817CD36
P 6050 700
F 0 "#PWR030" H 6050 550 50  0001 C CNN
F 1 "VCC" H 6050 850 50  0000 C CNN
F 2 "" H 6050 700 50  0000 C CNN
F 3 "" H 6050 700 50  0000 C CNN
	1    6050 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1450 4150 1500
Wire Wire Line
	6050 700  6050 1350
Wire Wire Line
	6050 2150 6050 1950
Wire Wire Line
	4150 2100 4150 2400
$Comp
L R R9
U 1 1 5817CF31
P 4200 1000
F 0 "R9" V 4280 1000 50  0000 C CNN
F 1 "1M" V 4200 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4130 1000 50  0001 C CNN
F 3 "" H 4200 1000 50  0000 C CNN
	1    4200 1000
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 5817CFA8
P 4200 750
F 0 "C10" H 4225 850 50  0000 L CNN
F 1 "3p" H 4225 650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4238 600 50  0001 C CNN
F 3 "" H 4200 750 50  0000 C CNN
	1    4200 750 
	0    1    1    0   
$EndComp
$Comp
L D D7
U 1 1 5817D009
P 3500 2150
F 0 "D7" H 3500 2250 50  0000 C CNN
F 1 "PD15-21B/TR8" H 3500 2050 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3500 2150 50  0001 C CNN
F 3 "" H 3500 2150 50  0000 C CNN
F 4 "1080-1365-1-ND" H 3500 2150 60  0001 C CNN "DIGIKEY"
	1    3500 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2350 4150 2350
Connection ~ 4150 2350
Wire Wire Line
	3500 1900 3950 1900
Wire Wire Line
	3500 1900 3500 2000
Wire Wire Line
	3950 1700 3200 1700
Wire Wire Line
	3200 1700 3200 2350
Connection ~ 3500 2350
Wire Wire Line
	3750 750  3750 1900
Wire Wire Line
	3750 1000 4050 1000
Connection ~ 3750 1900
Wire Wire Line
	4350 1000 4650 1000
Wire Wire Line
	4650 750  4650 1800
Wire Wire Line
	4550 1800 4800 1800
Wire Wire Line
	4350 750  4650 750 
Connection ~ 4650 1000
Wire Wire Line
	4050 750  3750 750 
Connection ~ 3750 1000
Wire Wire Line
	3500 2300 3500 2350
$Comp
L R R10
U 1 1 5817DB66
P 4950 1800
F 0 "R10" V 5030 1800 50  0000 C CNN
F 1 "6K" V 4950 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4880 1800 50  0001 C CNN
F 3 "" H 4950 1800 50  0000 C CNN
	1    4950 1800
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5817DCF8
P 5450 2150
F 0 "R13" V 5530 2150 50  0000 C CNN
F 1 "100K" V 5450 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5380 2150 50  0001 C CNN
F 3 "" H 5450 2150 50  0000 C CNN
	1    5450 2150
	-1   0    0    1   
$EndComp
Connection ~ 4650 1800
Wire Wire Line
	5100 1800 5650 1800
Wire Wire Line
	5450 2500 6900 2500
Wire Wire Line
	6900 2500 6900 1650
Wire Wire Line
	6900 1650 6450 1650
$Comp
L R R11
U 1 1 5817E005
P 5350 900
F 0 "R11" V 5430 900 50  0000 C CNN
F 1 "100k" V 5350 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5280 900 50  0001 C CNN
F 3 "" H 5350 900 50  0000 C CNN
	1    5350 900 
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5817E09A
P 5350 1300
F 0 "R12" V 5430 1300 50  0000 C CNN
F 1 "100k" V 5350 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5280 1300 50  0001 C CNN
F 3 "" H 5350 1300 50  0000 C CNN
	1    5350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 750  6050 750 
Connection ~ 6050 750 
Wire Wire Line
	5350 1050 5350 1150
Wire Wire Line
	5850 1750 5750 1750
Connection ~ 5350 1100
$Comp
L GND #PWR031
U 1 1 5817E386
P 5350 1500
F 0 "#PWR031" H 5350 1250 50  0001 C CNN
F 1 "GND" H 5350 1350 50  0000 C CNN
F 2 "" H 5350 1500 50  0000 C CNN
F 3 "" H 5350 1500 50  0000 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1750 5750 1100
Wire Wire Line
	5750 1100 5350 1100
Wire Wire Line
	5350 1450 5350 1500
Wire Wire Line
	5450 1800 5450 2000
Wire Wire Line
	5450 2300 5450 2500
Wire Wire Line
	5850 1550 5650 1550
Wire Wire Line
	5650 1550 5650 1800
Connection ~ 5450 1800
Text Label 6550 1650 0    60   ~ 0
ALIGNMENT
$Comp
L TEST_1P W4
U 1 1 5817EED8
P 4100 4200
F 0 "W4" H 4100 4470 50  0000 C CNN
F 1 "P3.6" H 4100 4400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4300 4200 50  0001 C CNN
F 3 "" H 4300 4200 50  0000 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4300 4100 4200
Text GLabel 7850 3300 2    60   Input ~ 0
LE
Text GLabel 7850 3450 2    60   Input ~ 0
OE
Wire Wire Line
	7850 3300 7350 3300
Wire Wire Line
	7350 3300 7350 3350
Text GLabel 7850 3100 2    60   Input ~ 0
DG
Wire Wire Line
	7400 3200 7400 3100
Wire Wire Line
	7400 3100 7850 3100
$EndSCHEMATC
