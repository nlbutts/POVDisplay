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
L LED_RGB D9
U 1 1 584078E0
P 6400 1150
F 0 "D9" H 6400 1575 50  0000 C CNN
F 1 "LED_RGB" H 6400 1500 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 1100 50  0001 C CNN
F 3 "" H 6400 1100 50  0000 C CNN
	1    6400 1150
	1    0    0    -1  
$EndComp
Text GLabel 10150 1100 0    60   Input ~ 0
VCC
Text GLabel 10150 1450 0    60   Input ~ 0
GND
$Comp
L GND #PWR032
U 1 1 58407A5E
P 10350 1450
F 0 "#PWR032" H 10350 1200 50  0001 C CNN
F 1 "GND" H 10350 1300 50  0000 C CNN
F 2 "" H 10350 1450 50  0000 C CNN
F 3 "" H 10350 1450 50  0000 C CNN
	1    10350 1450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR033
U 1 1 58407A64
P 10350 1100
F 0 "#PWR033" H 10350 950 50  0001 C CNN
F 1 "VCC" H 10350 1250 50  0000 C CNN
F 2 "" H 10350 1100 50  0000 C CNN
F 3 "" H 10350 1100 50  0000 C CNN
	1    10350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1450 10150 1450
Wire Wire Line
	10350 1100 10150 1100
Text GLabel 2900 2550 0    60   Input ~ 0
MOSI
Text GLabel 2900 2650 0    60   Input ~ 0
SCLK
Text GLabel 2900 2750 0    60   Input ~ 0
LE
Text GLabel 2900 3350 0    60   Input ~ 0
OE
$Comp
L R R15
U 1 1 58407AB4
P 2400 4300
F 0 "R15" V 2480 4300 50  0000 C CNN
F 1 "1K" V 2400 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2330 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0000 C CNN
	1    2400 4300
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D10
U 1 1 58407C6C
P 6400 2000
F 0 "D10" H 6400 2425 50  0000 C CNN
F 1 "LED_RGB" H 6400 2350 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 1950 50  0001 C CNN
F 3 "" H 6400 1950 50  0000 C CNN
	1    6400 2000
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D11
U 1 1 58408176
P 6400 2850
F 0 "D11" H 6400 3275 50  0000 C CNN
F 1 "LED_RGB" H 6400 3200 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 2800 50  0001 C CNN
F 3 "" H 6400 2800 50  0000 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D12
U 1 1 5840819E
P 6400 3700
F 0 "D12" H 6400 4125 50  0000 C CNN
F 1 "LED_RGB" H 6400 4050 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 3650 50  0001 C CNN
F 3 "" H 6400 3650 50  0000 C CNN
	1    6400 3700
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D14
U 1 1 58408418
P 6400 5300
F 0 "D14" H 6400 5725 50  0000 C CNN
F 1 "LED_RGB" H 6400 5650 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 5250 50  0001 C CNN
F 3 "" H 6400 5250 50  0000 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D15
U 1 1 58408440
P 6400 6150
F 0 "D15" H 6400 6575 50  0000 C CNN
F 1 "LED_RGB" H 6400 6500 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 6100 50  0001 C CNN
F 3 "" H 6400 6100 50  0000 C CNN
	1    6400 6150
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D13
U 1 1 58408B6F
P 6400 4500
F 0 "D13" H 6400 4925 50  0000 C CNN
F 1 "LED_RGB" H 6400 4850 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 4450 50  0001 C CNN
F 3 "" H 6400 4450 50  0000 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D16
U 1 1 5840AD18
P 6400 7000
F 0 "D16" H 6400 7425 50  0000 C CNN
F 1 "LED_RGB" H 6400 7350 50  0000 C CNN
F 2 "LEDs:LED_RGB_PLLC-6" H 6400 6950 50  0001 C CNN
F 3 "" H 6400 6950 50  0000 C CNN
	1    6400 7000
	1    0    0    -1  
$EndComp
$Comp
L STP24DP05 U5
U 1 1 58482E44
P 4150 3700
F 0 "U5" H 4150 1550 60  0000 C CNN
F 1 "STP24DP05" H 4100 5350 60  0000 C CNN
F 2 "" H 4150 3700 60  0001 C CNN
F 3 "" H 4150 3700 60  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 58482F2C
P 6850 750
F 0 "#PWR034" H 6850 600 50  0001 C CNN
F 1 "VCC" H 6850 900 50  0000 C CNN
F 2 "" H 6850 750 50  0000 C CNN
F 3 "" H 6850 750 50  0000 C CNN
	1    6850 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 950  6850 950 
Wire Wire Line
	6850 750  6850 7200
Wire Wire Line
	6850 1150 6600 1150
Connection ~ 6850 950 
Wire Wire Line
	6850 1350 6600 1350
Connection ~ 6850 1150
Wire Wire Line
	6850 1800 6600 1800
Connection ~ 6850 1350
Wire Wire Line
	6850 2000 6600 2000
Connection ~ 6850 1800
Wire Wire Line
	6850 2200 6600 2200
Connection ~ 6850 2000
Wire Wire Line
	6850 2650 6600 2650
Connection ~ 6850 2200
Wire Wire Line
	6850 2850 6600 2850
Connection ~ 6850 2650
Wire Wire Line
	6850 3050 6600 3050
Connection ~ 6850 2850
Wire Wire Line
	6850 3500 6600 3500
Connection ~ 6850 3050
Wire Wire Line
	6850 3700 6600 3700
Connection ~ 6850 3500
Wire Wire Line
	6850 3900 6600 3900
Connection ~ 6850 3700
Wire Wire Line
	6850 4300 6600 4300
Connection ~ 6850 3900
Wire Wire Line
	6850 4500 6600 4500
Connection ~ 6850 4300
Wire Wire Line
	6850 4700 6600 4700
Connection ~ 6850 4500
Wire Wire Line
	6850 5100 6600 5100
Connection ~ 6850 4700
Wire Wire Line
	6850 5300 6600 5300
Connection ~ 6850 5100
Wire Wire Line
	6850 5500 6600 5500
Connection ~ 6850 5300
Wire Wire Line
	6850 5950 6600 5950
Connection ~ 6850 5500
Wire Wire Line
	6850 6150 6600 6150
Connection ~ 6850 5950
Wire Wire Line
	6850 6350 6600 6350
Connection ~ 6850 6150
Wire Wire Line
	6850 6800 6600 6800
Connection ~ 6850 6350
Wire Wire Line
	6850 7000 6600 7000
Connection ~ 6850 6800
Wire Wire Line
	6850 7200 6600 7200
Connection ~ 6850 7000
Wire Wire Line
	6200 950  4950 950 
Wire Wire Line
	4950 950  4950 2150
Wire Wire Line
	6200 1150 5000 1150
Wire Wire Line
	5000 1150 5000 2250
Wire Wire Line
	5000 2250 4950 2250
Wire Wire Line
	6200 1350 5050 1350
Wire Wire Line
	5050 1350 5050 2350
Wire Wire Line
	5050 2350 4950 2350
Wire Wire Line
	6200 1800 5100 1800
Wire Wire Line
	5100 1800 5100 2450
Wire Wire Line
	5100 2450 4950 2450
Wire Wire Line
	6200 2000 5150 2000
Wire Wire Line
	5150 2000 5150 2550
Wire Wire Line
	5150 2550 4950 2550
Wire Wire Line
	6200 2200 5200 2200
Wire Wire Line
	5200 2200 5200 2650
Wire Wire Line
	5200 2650 4950 2650
Wire Wire Line
	6200 2650 5250 2650
Wire Wire Line
	5250 2650 5250 2750
Wire Wire Line
	5250 2750 4950 2750
Wire Wire Line
	6200 2850 4950 2850
Wire Wire Line
	6200 3050 6150 3050
Wire Wire Line
	6150 3050 6150 2950
Wire Wire Line
	6150 2950 4950 2950
Wire Wire Line
	6200 3500 6050 3500
Wire Wire Line
	6050 3500 6050 3050
Wire Wire Line
	6050 3050 4950 3050
Wire Wire Line
	4950 3150 6000 3150
Wire Wire Line
	6000 3150 6000 3700
Wire Wire Line
	6000 3700 6200 3700
Wire Wire Line
	6200 3900 5950 3900
Wire Wire Line
	5950 3900 5950 3250
Wire Wire Line
	5950 3250 4950 3250
Wire Wire Line
	4950 3350 5900 3350
Wire Wire Line
	5900 3350 5900 4300
Wire Wire Line
	5900 4300 6200 4300
Wire Wire Line
	6200 4500 5850 4500
Wire Wire Line
	5850 4500 5850 3450
Wire Wire Line
	5850 3450 4950 3450
Wire Wire Line
	4950 3550 5800 3550
Wire Wire Line
	5800 3550 5800 4700
Wire Wire Line
	5800 4700 6200 4700
Wire Wire Line
	4950 3650 5750 3650
Wire Wire Line
	5750 3650 5750 5100
Wire Wire Line
	5750 5100 6200 5100
Wire Wire Line
	6200 5300 5700 5300
Wire Wire Line
	5700 5300 5700 3750
Wire Wire Line
	5700 3750 4950 3750
Wire Wire Line
	4950 3850 5650 3850
Wire Wire Line
	5650 3850 5650 5500
Wire Wire Line
	5650 5500 6200 5500
Wire Wire Line
	6200 5950 5600 5950
Wire Wire Line
	5600 5950 5600 3950
Wire Wire Line
	5600 3950 4950 3950
Wire Wire Line
	4950 4050 5550 4050
Wire Wire Line
	5550 4050 5550 6150
Wire Wire Line
	5550 6150 6200 6150
Wire Wire Line
	6200 6350 5500 6350
Wire Wire Line
	5500 6350 5500 4150
Wire Wire Line
	5500 4150 4950 4150
Wire Wire Line
	4950 4250 5450 4250
Wire Wire Line
	5450 4250 5450 6800
Wire Wire Line
	5450 6800 6200 6800
Wire Wire Line
	6200 7000 5400 7000
Wire Wire Line
	5400 7000 5400 4350
Wire Wire Line
	5400 4350 4950 4350
Wire Wire Line
	4950 4450 5350 4450
Wire Wire Line
	5350 4450 5350 7200
Wire Wire Line
	5350 7200 6200 7200
$Comp
L GND #PWR035
U 1 1 58484F86
P 5100 5750
F 0 "#PWR035" H 5100 5500 50  0001 C CNN
F 1 "GND" H 5100 5600 50  0000 C CNN
F 2 "" H 5100 5750 50  0000 C CNN
F 3 "" H 5100 5750 50  0000 C CNN
	1    5100 5750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR036
U 1 1 58484F8C
P 5100 4850
F 0 "#PWR036" H 5100 4700 50  0001 C CNN
F 1 "VCC" H 5100 5000 50  0000 C CNN
F 2 "" H 5100 4850 50  0000 C CNN
F 3 "" H 5100 4850 50  0000 C CNN
	1    5100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4850 5100 4850
Wire Wire Line
	5100 4800 5100 4950
Wire Wire Line
	5100 4950 4950 4950
Connection ~ 5100 4850
Wire Wire Line
	4950 5150 5100 5150
Wire Wire Line
	5100 5150 5100 5750
Wire Wire Line
	4950 5250 5100 5250
Connection ~ 5100 5250
Wire Wire Line
	4950 5350 5100 5350
Connection ~ 5100 5350
Wire Wire Line
	4950 5450 5100 5450
Connection ~ 5100 5450
Wire Wire Line
	4950 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	4950 5650 5100 5650
Connection ~ 5100 5650
$Comp
L R R17
U 1 1 584857DE
P 2200 4300
F 0 "R17" V 2280 4300 50  0000 C CNN
F 1 "1K" V 2200 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2130 4300 50  0001 C CNN
F 3 "" H 2200 4300 50  0000 C CNN
	1    2200 4300
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 58485815
P 2000 4300
F 0 "R16" V 2080 4300 50  0000 C CNN
F 1 "1K" V 2000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1930 4300 50  0001 C CNN
F 3 "" H 2000 4300 50  0000 C CNN
	1    2000 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 58485855
P 2700 4650
F 0 "#PWR037" H 2700 4400 50  0001 C CNN
F 1 "GND" H 2700 4500 50  0000 C CNN
F 2 "" H 2700 4650 50  0000 C CNN
F 3 "" H 2700 4650 50  0000 C CNN
	1    2700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2550 3300 2550
Wire Wire Line
	2900 2650 3300 2650
Wire Wire Line
	2900 2750 3300 2750
Wire Wire Line
	3300 3350 2900 3350
Wire Wire Line
	3300 3450 3200 3450
Wire Wire Line
	3200 3350 3200 3550
Connection ~ 3200 3350
Wire Wire Line
	3200 3550 3300 3550
Connection ~ 3200 3450
Wire Wire Line
	3300 3850 2000 3850
Wire Wire Line
	2000 3850 2000 4150
Wire Wire Line
	3300 3950 2200 3950
Wire Wire Line
	2200 3950 2200 4150
Wire Wire Line
	3300 4050 2400 4050
Wire Wire Line
	2400 4050 2400 4150
Wire Wire Line
	2000 4450 2000 4550
Wire Wire Line
	2000 4550 2700 4550
Wire Wire Line
	2700 4550 2700 4650
Wire Wire Line
	2400 4450 2400 4550
Connection ~ 2400 4550
Wire Wire Line
	2200 4450 2200 4550
Connection ~ 2200 4550
Text GLabel 2900 2950 0    60   Input ~ 0
DG
Wire Wire Line
	3300 2950 2900 2950
$Comp
L VCC #PWR038
U 1 1 58486276
P 2900 4300
F 0 "#PWR038" H 2900 4150 50  0001 C CNN
F 1 "VCC" H 2900 4450 50  0000 C CNN
F 2 "" H 2900 4300 50  0000 C CNN
F 3 "" H 2900 4300 50  0000 C CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4300 3300 4300
Wire Wire Line
	3300 4200 3200 4200
Wire Wire Line
	3200 4200 3200 4300
Connection ~ 3200 4300
$Comp
L VCC #PWR039
U 1 1 584863FF
P 2350 2850
F 0 "#PWR039" H 2350 2700 50  0001 C CNN
F 1 "VCC" H 2350 3000 50  0000 C CNN
F 2 "" H 2350 2850 50  0000 C CNN
F 3 "" H 2350 2850 50  0000 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2850 3300 2850
$Comp
L TEST_1P W8
U 1 1 58486AAE
P 2950 4700
F 0 "W8" H 2950 4970 50  0000 C CNN
F 1 "TEST_1P" H 2950 4900 50  0000 C CNN
F 2 "" H 3150 4700 50  0000 C CNN
F 3 "" H 3150 4700 50  0000 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W9
U 1 1 58486B24
P 2950 5100
F 0 "W9" H 2950 5370 50  0000 C CNN
F 1 "TEST_1P" H 2950 5300 50  0000 C CNN
F 2 "" H 3150 5100 50  0000 C CNN
F 3 "" H 3150 5100 50  0000 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4700 3150 4700
Wire Wire Line
	3150 4700 3150 4450
Wire Wire Line
	3150 4450 3300 4450
Wire Wire Line
	3300 4550 3300 5200
Wire Wire Line
	3300 5200 2950 5200
Wire Wire Line
	2950 5200 2950 5100
$Comp
L TEST_1P W7
U 1 1 58486CD9
P 2000 2850
F 0 "W7" H 2000 3120 50  0000 C CNN
F 1 "TEST_1P" H 2000 3050 50  0000 C CNN
F 2 "" H 2200 2850 50  0000 C CNN
F 3 "" H 2200 2850 50  0000 C CNN
	1    2000 2850
	1    0    0    -1  
$EndComp
Connection ~ 2350 2850
$Comp
L TEST_1P W12
U 1 1 58486E8B
P 5200 4700
F 0 "W12" H 5200 4970 50  0000 C CNN
F 1 "TEST_1P" H 5200 4900 50  0000 C CNN
F 2 "" H 5400 4700 50  0000 C CNN
F 3 "" H 5400 4700 50  0000 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4700 5200 4700
$Comp
L TEST_1P W11
U 1 1 584872F4
P 3250 2350
F 0 "W11" H 3250 2620 50  0000 C CNN
F 1 "TEST_1P" H 3250 2550 50  0000 C CNN
F 2 "" H 3450 2350 50  0000 C CNN
F 3 "" H 3450 2350 50  0000 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W10
U 1 1 58487357
P 3000 2350
F 0 "W10" H 3000 2620 50  0000 C CNN
F 1 "TEST_1P" H 3000 2550 50  0000 C CNN
F 2 "" H 3200 2350 50  0000 C CNN
F 3 "" H 3200 2350 50  0000 C CNN
	1    3000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2350 3250 2550
Connection ~ 3250 2550
Wire Wire Line
	3000 2350 3000 2650
Connection ~ 3000 2650
$EndSCHEMATC
