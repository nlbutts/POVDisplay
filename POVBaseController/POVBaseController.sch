EESchema Schematic File Version 2
LIBS:POVBaseController-rescue
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
LIBS:microchip_pic12mcu
LIBS:mylib
LIBS:General
LIBS:POVBaseController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "POV Base Controller"
Date "2016-09-25"
Rev "R00"
Comp "Nick Butts"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R2
U 1 1 57E8219E
P 7250 1500
F 0 "R2" V 7330 1500 50  0000 C CNN
F 1 "330" V 7250 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7180 1500 50  0001 C CNN
F 3 "" H 7250 1500 50  0000 C CNN
	1    7250 1500
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-POVBaseController D1
U 1 1 57E825DA
P 6700 1500
F 0 "D1" H 6700 1600 50  0000 C CNN
F 1 "LED" H 6700 1400 50  0000 C CNN
F 2 "LEDs:LED_0603" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0000 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 57E82E4B
P 9900 1550
F 0 "#PWR01" H 9900 1400 50  0001 C CNN
F 1 "VCC" H 9900 1700 50  0000 C CNN
F 2 "" H 9900 1550 50  0000 C CNN
F 3 "" H 9900 1550 50  0000 C CNN
	1    9900 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57E82E69
P 9500 2500
F 0 "#PWR02" H 9500 2250 50  0001 C CNN
F 1 "GND" H 9500 2350 50  0000 C CNN
F 2 "" H 9500 2500 50  0000 C CNN
F 3 "" H 9500 2500 50  0000 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57E82E87
P 7900 3700
F 0 "#PWR03" H 7900 3450 50  0001 C CNN
F 1 "GND" H 7900 3550 50  0000 C CNN
F 2 "" H 7900 3700 50  0000 C CNN
F 3 "" H 7900 3700 50  0000 C CNN
	1    7900 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 57E82EA5
P 8800 2100
F 0 "#PWR04" H 8800 1950 50  0001 C CNN
F 1 "VCC" H 8800 2250 50  0000 C CNN
F 2 "" H 8800 2100 50  0000 C CNN
F 3 "" H 8800 2100 50  0000 C CNN
	1    8800 2100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 57E82EC3
P 7500 1350
F 0 "#PWR05" H 7500 1200 50  0001 C CNN
F 1 "VCC" H 7500 1500 50  0000 C CNN
F 2 "" H 7500 1350 50  0000 C CNN
F 3 "" H 7500 1350 50  0000 C CNN
	1    7500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1500 7500 1500
Wire Wire Line
	7500 1500 7500 1350
$Comp
L PWR_FLAG #FLG06
U 1 1 57E830AD
P 3550 4600
F 0 "#FLG06" H 3550 4695 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 4780 50  0000 C CNN
F 2 "" H 3550 4600 50  0000 C CNN
F 3 "" H 3550 4600 50  0000 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 57E830CB
P 4000 4600
F 0 "#FLG07" H 4000 4695 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 4780 50  0000 C CNN
F 2 "" H 4000 4600 50  0000 C CNN
F 3 "" H 4000 4600 50  0000 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 57E83102
P 4000 4800
F 0 "#PWR08" H 4000 4650 50  0001 C CNN
F 1 "VCC" H 4000 4950 50  0000 C CNN
F 2 "" H 4000 4800 50  0000 C CNN
F 3 "" H 4000 4800 50  0000 C CNN
	1    4000 4800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 57E83120
P 3550 4800
F 0 "#PWR09" H 3550 4550 50  0001 C CNN
F 1 "GND" H 3550 4650 50  0000 C CNN
F 2 "" H 3550 4800 50  0000 C CNN
F 3 "" H 3550 4800 50  0000 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4600 3550 4800
Wire Wire Line
	4000 4600 4000 4800
Wire Wire Line
	6900 1500 7100 1500
$Comp
L CONN_01X05 P3
U 1 1 57E85A01
P 10300 1850
F 0 "P3" H 10300 2150 50  0000 C CNN
F 1 "CONN_01X05" V 10400 1850 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 10300 1850 50  0001 C CNN
F 3 "" H 10300 1850 50  0000 C CNN
	1    10300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1500 6100 1500
Text Label 6200 1500 0    60   ~ 0
LED
Wire Wire Line
	6150 2150 5750 2150
Text Label 5800 2150 0    60   ~ 0
LED
Wire Wire Line
	9900 1550 9900 1650
Wire Wire Line
	9900 1650 10100 1650
Wire Wire Line
	9500 1750 10100 1750
Wire Wire Line
	10100 1850 9700 1850
Wire Wire Line
	10100 1950 9700 1950
Wire Wire Line
	10100 2050 9700 2050
Wire Wire Line
	9500 1750 9500 2500
Text Label 9750 1850 0    60   ~ 0
XRES
Wire Wire Line
	7650 2500 8200 2500
Wire Wire Line
	7650 2600 8200 2600
Wire Wire Line
	7650 3050 8200 3050
Text Label 7700 2500 2    60   ~ 0
SWDIO
Text Label 7750 2500 2    60   ~ 0
SWDIO
Text Label 8050 2500 2    60   ~ 0
SWDIO
Text Label 8100 2600 2    60   ~ 0
SWDCLK
Text Label 8050 3050 2    60   ~ 0
XRES
Wire Wire Line
	7650 3600 7900 3600
Wire Wire Line
	7900 3600 7900 3700
Wire Wire Line
	7650 2250 8000 2250
$Comp
L C C3
U 1 1 57E8627F
P 8200 1750
F 0 "C3" H 8225 1850 50  0000 L CNN
F 1 "0.1u" H 8225 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8238 1600 50  0001 C CNN
F 3 "" H 8200 1750 50  0000 C CNN
	1    8200 1750
	1    0    0    -1  
$EndComp
Connection ~ 9500 2350
$Comp
L TEST_1P W7
U 1 1 57E86762
P 5900 3000
F 0 "W7" H 5900 3270 50  0000 C CNN
F 1 "TEST_1P" H 5900 3200 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6100 3000 50  0001 C CNN
F 3 "" H 6100 3000 50  0000 C CNN
	1    5900 3000
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W5
U 1 1 57E86EB9
P 5700 3200
F 0 "W5" H 5700 3470 50  0000 C CNN
F 1 "TEST_1P" H 5700 3400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5900 3200 50  0001 C CNN
F 3 "" H 5900 3200 50  0000 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 57E86F08
P 5600 3300
F 0 "W4" H 5600 3570 50  0000 C CNN
F 1 "TEST_1P" H 5600 3500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5800 3300 50  0001 C CNN
F 3 "" H 5800 3300 50  0000 C CNN
	1    5600 3300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 57E86F3E
P 5500 3350
F 0 "W3" H 5500 3620 50  0000 C CNN
F 1 "TEST_1P" H 5500 3550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5700 3350 50  0001 C CNN
F 3 "" H 5700 3350 50  0000 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 57E86F77
P 5400 3400
F 0 "W2" H 5400 3670 50  0000 C CNN
F 1 "TEST_1P" H 5400 3600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0000 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 57E86FB3
P 5300 3500
F 0 "W1" H 5300 3770 50  0000 C CNN
F 1 "TEST_1P" H 5300 3700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5500 3500 50  0001 C CNN
F 3 "" H 5500 3500 50  0000 C CNN
	1    5300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3000 5900 3000
Wire Wire Line
	6150 3100 5800 3100
Wire Wire Line
	6150 3200 5700 3200
Wire Wire Line
	6150 3300 5600 3300
Wire Wire Line
	6150 3400 5500 3400
Wire Wire Line
	5500 3400 5500 3350
Wire Wire Line
	6150 3500 5400 3500
Wire Wire Line
	5400 3500 5400 3400
Wire Wire Line
	6150 3600 5300 3600
Wire Wire Line
	5300 3600 5300 3500
Text Label 10100 1950 2    60   ~ 0
SWDCLK
Text Label 10050 2050 2    60   ~ 0
SWDIO
$Comp
L C C4
U 1 1 57E87C07
P 8800 2400
F 0 "C4" H 8825 2500 50  0000 L CNN
F 1 "1u" H 8825 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8838 2250 50  0001 C CNN
F 3 "" H 8800 2400 50  0000 C CNN
	1    8800 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 57E8873A
P 8800 2700
F 0 "#PWR013" H 8800 2450 50  0001 C CNN
F 1 "GND" H 8800 2550 50  0000 C CNN
F 2 "" H 8800 2700 50  0000 C CNN
F 3 "" H 8800 2700 50  0000 C CNN
	1    8800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2150 7650 2150
Wire Wire Line
	7900 1500 7900 2150
Wire Wire Line
	8800 2550 8800 2700
Wire Wire Line
	8000 2250 8000 2200
Wire Wire Line
	8000 2200 9100 2200
Wire Wire Line
	8800 2100 8800 2250
Connection ~ 8800 2200
$Comp
L C C5
U 1 1 57E88A24
P 9100 2400
F 0 "C5" H 9125 2500 50  0000 L CNN
F 1 "0.1u" H 9125 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9138 2250 50  0001 C CNN
F 3 "" H 9100 2400 50  0000 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2200 9100 2250
Wire Wire Line
	9100 2550 9100 2650
Wire Wire Line
	9100 2650 8800 2650
Connection ~ 8800 2650
$Comp
L GND #PWR014
U 1 1 57E88CAC
P 8200 2000
F 0 "#PWR014" H 8200 1750 50  0001 C CNN
F 1 "GND" H 8200 1850 50  0000 C CNN
F 2 "" H 8200 2000 50  0000 C CNN
F 3 "" H 8200 2000 50  0000 C CNN
	1    8200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1900 8200 2000
Wire Wire Line
	7900 1500 8200 1500
Wire Wire Line
	8200 1500 8200 1600
$Comp
L CONN_01X02 P1
U 1 1 57E8BA15
P 1350 4400
F 0 "P1" H 1350 4550 50  0000 C CNN
F 1 "CONN_01X02" V 1450 4400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 1350 4400 50  0001 C CNN
F 3 "" H 1350 4400 50  0000 C CNN
	1    1350 4400
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 57E8BBF6
P 1350 5050
F 0 "P2" H 1350 5200 50  0000 C CNN
F 1 "CONN_01X02" V 1450 5050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 1350 5050 50  0001 C CNN
F 3 "" H 1350 5050 50  0000 C CNN
	1    1350 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4350 2150 4350
Wire Wire Line
	1550 4450 2400 4450
Wire Wire Line
	1550 5000 2400 5000
Wire Wire Line
	1550 5100 2150 5100
Text Label 1600 4350 0    60   ~ 0
COIL_DR
Text Label 1600 4450 0    60   ~ 0
12V
Text Label 1600 5000 0    60   ~ 0
GND
Text Label 1600 5100 0    60   ~ 0
12V
$Comp
L +12V #PWR015
U 1 1 57E8C7DC
P 2400 4250
F 0 "#PWR015" H 2400 4100 50  0001 C CNN
F 1 "+12V" H 2400 4390 50  0000 C CNN
F 2 "" H 2400 4250 50  0000 C CNN
F 3 "" H 2400 4250 50  0000 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR016
U 1 1 57E8C832
P 2150 4900
F 0 "#PWR016" H 2150 4750 50  0001 C CNN
F 1 "+12V" H 2150 5040 50  0000 C CNN
F 2 "" H 2150 4900 50  0000 C CNN
F 3 "" H 2150 4900 50  0000 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57E8C888
P 2400 5200
F 0 "#PWR017" H 2400 4950 50  0001 C CNN
F 1 "GND" H 2400 5050 50  0000 C CNN
F 2 "" H 2400 5200 50  0000 C CNN
F 3 "" H 2400 5200 50  0000 C CNN
	1    2400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4450 2400 4250
Wire Wire Line
	2400 5000 2400 5200
Wire Wire Line
	2150 5100 2150 4900
$Comp
L PWR_FLAG #FLG018
U 1 1 57E8D032
P 4400 4600
F 0 "#FLG018" H 4400 4695 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 4780 50  0000 C CNN
F 2 "" H 4400 4600 50  0000 C CNN
F 3 "" H 4400 4600 50  0000 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR019
U 1 1 57E8D088
P 4400 4850
F 0 "#PWR019" H 4400 4700 50  0001 C CNN
F 1 "+12V" H 4400 4990 50  0000 C CNN
F 2 "" H 4400 4850 50  0000 C CNN
F 3 "" H 4400 4850 50  0000 C CNN
	1    4400 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4850 4400 4600
$Comp
L CY8C4014LQI-412 U2
U 1 1 57E8DB6C
P 6900 2900
F 0 "U2" H 6450 2050 60  0000 C CNN
F 1 "CY8C4014LQI-412" H 6850 3750 60  0000 C CNN
F 2 "myfootprint:QFN_24" H 6450 3750 60  0001 C CNN
F 3 "" H 6450 3750 60  0000 C CNN
F 4 "CY8C4014LQI-412-ND" H 6900 2900 60  0001 C CNN "DIGIKEY"
	1    6900 2900
	1    0    0    -1  
$EndComp
Text Label 5800 3100 0    60   ~ 0
COIL_DR
NoConn ~ 7650 2750
NoConn ~ 7650 2850
NoConn ~ 6150 2250
NoConn ~ 6150 2350
NoConn ~ 6150 2450
NoConn ~ 6150 2550
NoConn ~ 6150 2650
NoConn ~ 6150 2750
NoConn ~ 6150 2850
$Comp
L LD1117S50CTR U3
U 1 1 57EA006D
P 6400 4650
F 0 "U3" H 6400 4900 50  0000 C CNN
F 1 "LD1117S50CTR" H 6400 4850 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6400 4750 50  0000 C CNN
F 3 "" H 6400 4650 50  0000 C CNN
	1    6400 4650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 57EA0470
P 7100 4850
F 0 "R7" V 7180 4850 50  0000 C CNN
F 1 "120" V 7100 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 4850 50  0001 C CNN
F 3 "" H 7100 4850 50  0000 C CNN
	1    7100 4850
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 57EA04DF
P 7100 5250
F 0 "R8" V 7180 5250 50  0000 C CNN
F 1 "360" V 7100 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 5250 50  0001 C CNN
F 3 "" H 7100 5250 50  0000 C CNN
	1    7100 5250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 57EA056D
P 5750 4900
F 0 "C6" H 5775 5000 50  0000 L CNN
F 1 "10u" H 5775 4800 50  0000 L CNN
F 2 "SMD_Packages:SMD-1210_Pol" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0000 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 57EA05F0
P 7500 4850
F 0 "C7" H 7525 4950 50  0000 L CNN
F 1 "100u" H 7525 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7538 4700 50  0001 C CNN
F 3 "" H 7500 4850 50  0000 C CNN
	1    7500 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 57EA065F
P 6400 5600
F 0 "#PWR020" H 6400 5350 50  0001 C CNN
F 1 "GND" H 6400 5450 50  0000 C CNN
F 2 "" H 6400 5600 50  0000 C CNN
F 3 "" H 6400 5600 50  0000 C CNN
	1    6400 5600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR021
U 1 1 57EA06C8
P 5750 4300
F 0 "#PWR021" H 5750 4150 50  0001 C CNN
F 1 "+12V" H 5750 4440 50  0000 C CNN
F 2 "" H 5750 4300 50  0000 C CNN
F 3 "" H 5750 4300 50  0000 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR022
U 1 1 57EA072A
P 7100 4300
F 0 "#PWR022" H 7100 4150 50  0001 C CNN
F 1 "VCC" H 7100 4450 50  0000 C CNN
F 2 "" H 7100 4300 50  0000 C CNN
F 3 "" H 7100 4300 50  0000 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4600 5750 4600
Wire Wire Line
	5750 4300 5750 4750
Connection ~ 5750 4600
Wire Wire Line
	5750 5050 5750 5500
Wire Wire Line
	5750 5500 7500 5500
Wire Wire Line
	7100 5500 7100 5400
Connection ~ 6400 5500
Wire Wire Line
	7100 5000 7100 5100
Wire Wire Line
	6800 4600 7500 4600
Wire Wire Line
	7100 4300 7100 4700
Connection ~ 7100 4600
Wire Wire Line
	7500 4600 7500 4700
Wire Wire Line
	7500 5500 7500 5000
Connection ~ 7100 5500
Wire Wire Line
	7100 5050 6400 5050
Connection ~ 7100 5050
Wire Wire Line
	6400 5050 6400 4900
Wire Wire Line
	6400 5500 6400 5600
$EndSCHEMATC
