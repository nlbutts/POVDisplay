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
LIBS:POVBaseCoil-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L LED D1
U 1 1 587256DC
P 7500 3900
F 0 "D1" H 7500 4000 50  0000 C CNN
F 1 "LED" H 7500 3800 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0000 C CNN
	1    7500 3900
	0    1    1    0   
$EndComp
$Comp
L L L1
U 1 1 58725776
P 6350 3400
F 0 "L1" V 6300 3400 50  0000 C CNN
F 1 "L" V 6425 3400 50  0000 C CNN
F 2 "KicadFootprint:pov_coil" H 6350 3400 50  0001 C CNN
F 3 "" H 6350 3400 50  0000 C CNN
	1    6350 3400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5872583D
P 5950 3400
F 0 "C1" H 5975 3500 50  0000 L CNN
F 1 "C" H 5975 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5988 3250 50  0001 C CNN
F 3 "" H 5950 3400 50  0000 C CNN
	1    5950 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P1
U 1 1 5872D7AB
P 8100 3450
F 0 "P1" H 8100 3750 50  0000 C CNN
F 1 "CONN_01X05" V 8200 3450 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 8100 3450 50  0001 C CNN
F 3 "" H 8100 3450 50  0000 C CNN
	1    8100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3250 7900 3250
Wire Wire Line
	6950 3250 6950 3050
Wire Wire Line
	6950 3050 5950 3050
Wire Wire Line
	6350 3050 6350 3250
Wire Wire Line
	5950 3050 5950 3250
Connection ~ 6350 3050
Wire Wire Line
	5950 3550 5950 3650
Wire Wire Line
	6950 3350 7900 3350
Wire Wire Line
	6950 3350 6950 3650
Connection ~ 6950 3650
Wire Wire Line
	6950 3650 5950 3650
Wire Wire Line
	6350 3550 6350 3650
Connection ~ 6350 3650
$Comp
L GND #PWR01
U 1 1 5872DF60
P 7050 3800
F 0 "#PWR01" H 7050 3550 50  0001 C CNN
F 1 "GND" H 7050 3650 50  0000 C CNN
F 2 "" H 7050 3800 50  0000 C CNN
F 3 "" H 7050 3800 50  0000 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3450 7900 3450
Wire Wire Line
	7050 3450 7050 3800
Wire Wire Line
	7900 3550 7500 3550
Wire Wire Line
	7500 3550 7500 3750
Wire Wire Line
	7500 4050 7750 4050
Wire Wire Line
	7750 4050 7750 3650
Wire Wire Line
	7750 3650 7900 3650
$Comp
L CONN_01X01 P3
U 1 1 5872E359
P 8100 2650
F 0 "P3" H 8100 2750 50  0000 C CNN
F 1 "CONN_01X01" V 8200 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 8100 2650 50  0001 C CNN
F 3 "" H 8100 2650 50  0000 C CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5872E412
P 8100 2050
F 0 "P2" H 8100 2150 50  0000 C CNN
F 1 "CONN_01X01" V 8200 2050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0000 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
NoConn ~ 7900 2050
NoConn ~ 7900 2650
$EndSCHEMATC
