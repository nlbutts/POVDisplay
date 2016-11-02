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
Sheet 2 4
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
L PWR_FLAG #FLG01
U 1 1 57E830AD
P 9450 1350
F 0 "#FLG01" H 9450 1445 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 1530 50  0000 C CNN
F 2 "" H 9450 1350 50  0000 C CNN
F 3 "" H 9450 1350 50  0000 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 57E830CB
P 9900 1350
F 0 "#FLG02" H 9900 1445 50  0001 C CNN
F 1 "PWR_FLAG" H 9900 1530 50  0000 C CNN
F 2 "" H 9900 1350 50  0000 C CNN
F 3 "" H 9900 1350 50  0000 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 57E83102
P 9900 1550
F 0 "#PWR03" H 9900 1400 50  0001 C CNN
F 1 "VCC" H 9900 1700 50  0000 C CNN
F 2 "" H 9900 1550 50  0000 C CNN
F 3 "" H 9900 1550 50  0000 C CNN
	1    9900 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 57E83120
P 9450 1550
F 0 "#PWR04" H 9450 1300 50  0001 C CNN
F 1 "GND" H 9450 1400 50  0000 C CNN
F 2 "" H 9450 1550 50  0000 C CNN
F 3 "" H 9450 1550 50  0000 C CNN
	1    9450 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 57E86040
P 7600 2200
F 0 "#PWR05" H 7600 2050 50  0001 C CNN
F 1 "VCC" H 7600 2350 50  0000 C CNN
F 2 "" H 7600 2200 50  0000 C CNN
F 3 "" H 7600 2200 50  0000 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57E8605E
P 5700 4100
F 0 "#PWR06" H 5700 3850 50  0001 C CNN
F 1 "GND" H 5700 3950 50  0000 C CNN
F 2 "" H 5700 4100 50  0000 C CNN
F 3 "" H 5700 4100 50  0000 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR07
U 1 1 57E8619B
P 4300 2450
F 0 "#PWR07" H 4300 2300 50  0001 C CNN
F 1 "+12V" H 4300 2590 50  0000 C CNN
F 2 "" H 4300 2450 50  0000 C CNN
F 3 "" H 4300 2450 50  0000 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L TVS D5
U 1 1 57E89157
P 4300 3600
F 0 "D5" H 4300 3750 50  0000 C CNN
F 1 "TVS" H 4300 3450 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 4300 3600 50  0001 C CNN
F 3 "" H 4300 3600 50  0000 C CNN
F 4 "732-9779-1-ND" H 4300 3600 60  0001 C CNN "DIGIKEY"
	1    4300 3600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 57E8A33E
P 7100 3200
F 0 "R4" V 7180 3200 50  0000 C CNN
F 1 "13k" V 7100 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 3200 50  0001 C CNN
F 3 "" H 7100 3200 50  0000 C CNN
	1    7100 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 57E8AB6F
P 6300 3600
F 0 "R3" V 6380 3600 50  0000 C CNN
F 1 "4.3k" V 6300 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 3600 50  0001 C CNN
F 3 "" H 6300 3600 50  0000 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 57E8BBF6
P 1750 6300
F 0 "P1" H 1750 6450 50  0000 C CNN
F 1 "CONN_01X02" V 1850 6300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 1750 6300 50  0001 C CNN
F 3 "" H 1750 6300 50  0000 C CNN
	1    1750 6300
	-1   0    0    1   
$EndComp
Text Label 2000 6250 0    60   ~ 0
GND
Text Label 2000 6350 0    60   ~ 0
12V
$Comp
L GND #PWR08
U 1 1 57E8C888
P 2800 6450
F 0 "#PWR08" H 2800 6200 50  0001 C CNN
F 1 "GND" H 2800 6300 50  0000 C CNN
F 2 "" H 2800 6450 50  0000 C CNN
F 3 "" H 2800 6450 50  0000 C CNN
	1    2800 6450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 57E8D032
P 10300 1350
F 0 "#FLG09" H 10300 1445 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 1530 50  0000 C CNN
F 2 "" H 10300 1350 50  0000 C CNN
F 3 "" H 10300 1350 50  0000 C CNN
	1    10300 1350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR010
U 1 1 57E8D088
P 10300 1600
F 0 "#PWR010" H 10300 1450 50  0001 C CNN
F 1 "+12V" H 10300 1740 50  0000 C CNN
F 2 "" H 10300 1600 50  0000 C CNN
F 3 "" H 10300 1600 50  0000 C CNN
	1    10300 1600
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 57EC6C01
P 4600 3000
F 0 "C4" H 4625 3100 50  0000 L CNN
F 1 "1.5u" H 4625 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4638 2850 50  0001 C CNN
F 3 "" H 4600 3000 50  0000 C CNN
F 4 "445-12701-1-ND" H 4600 3000 60  0001 C CNN "DIGIKEY"
	1    4600 3000
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 57EC6E54
P 5100 3300
F 0 "C6" H 5125 3400 50  0000 L CNN
F 1 "8.2n" H 5125 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5138 3150 50  0001 C CNN
F 3 "" H 5100 3300 50  0000 C CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 57EC6EE3
P 4850 3300
F 0 "C5" H 4875 3400 50  0000 L CNN
F 1 "56p" H 4875 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4888 3150 50  0001 C CNN
F 3 "" H 4850 3300 50  0000 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57EC6F7C
P 5100 3700
F 0 "R2" V 5180 3700 50  0000 C CNN
F 1 "11k" V 5100 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5030 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0000 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
$Comp
L D D6
U 1 1 57EC7A47
P 6600 2750
F 0 "D6" H 6600 2850 50  0000 C CNN
F 1 "STPS2L40" H 6600 2650 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 6600 2750 50  0001 C CNN
F 3 "" H 6600 2750 50  0000 C CNN
F 4 "497-5574-1-ND" H 6600 2750 60  0001 C CNN "DIGIKEY"
	1    6600 2750
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 57EC7AE6
P 7100 2600
F 0 "L1" V 7050 2600 50  0000 C CNN
F 1 "82u" V 7200 2600 50  0000 C CNN
F 2 "KicadLibrary:TDK_inductor_12.95x9.4x8.08" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0000 C CNN
F 4 "495-2686-1-ND" V 7100 2600 60  0001 C CNN "Digikey"
	1    7100 2600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 57E8A3BD
P 4300 3050
F 0 "R1" V 4380 3050 50  0000 C CNN
F 1 "0" V 4300 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4230 3050 50  0001 C CNN
F 3 "" H 4300 3050 50  0000 C CNN
	1    4300 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57EC8C6C
P 6600 3000
F 0 "#PWR011" H 6600 2750 50  0001 C CNN
F 1 "GND" H 6600 2850 50  0000 C CNN
F 2 "" H 6600 3000 50  0000 C CNN
F 3 "" H 6600 3000 50  0000 C CNN
	1    6600 3000
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 57EC9160
P 7800 2850
F 0 "C7" H 7825 2950 50  0000 L CNN
F 1 "22u" H 7825 2750 50  0000 L CNN
F 2 "SMD_Packages:SMD-1210_Pol" H 7838 2700 50  0001 C CNN
F 3 "" H 7800 2850 50  0000 C CNN
F 4 "478-9063-1-ND" H 7800 2850 60  0001 C CNN "DIGIKEY"
	1    7800 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6250 2750
NoConn ~ 5500 3300
$Comp
L TEST_1P W3
U 1 1 57ED72C1
P 7800 2150
F 0 "W3" H 7800 2420 50  0000 C CNN
F 1 "VCC" H 7800 2350 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8000 2150 50  0001 C CNN
F 3 "" H 8000 2150 50  0000 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 58127C99
P 1200 1450
F 0 "W2" H 1200 1720 50  0000 C CNN
F 1 "POS_COIL" H 1200 1650 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 1400 1450 50  0001 C CNN
F 3 "" H 1400 1450 50  0000 C CNN
	1    1200 1450
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 58127DE7
P 750 1450
F 0 "W1" H 750 1720 50  0000 C CNN
F 1 "NEG_COIL" H 750 1650 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965_Pad" H 950 1450 50  0001 C CNN
F 3 "" H 950 1450 50  0000 C CNN
	1    750  1450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG012
U 1 1 581282A9
P 2550 6050
F 0 "#FLG012" H 2550 6145 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 6230 50  0000 C CNN
F 2 "" H 2550 6050 50  0000 C CNN
F 3 "" H 2550 6050 50  0000 C CNN
	1    2550 6050
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5812931F
P 2150 1300
F 0 "D1" H 2150 1400 50  0000 C CNN
F 1 "D" H 2150 1200 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 2150 1300 50  0001 C CNN
F 3 "" H 2150 1300 50  0000 C CNN
F 4 "497-5574-1-ND" H 2150 1300 60  0001 C CNN "DIGIKEY"
	1    2150 1300
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5812943E
P 1200 1750
F 0 "C1" H 1225 1850 50  0000 L CNN
F 1 "100n" H 1225 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 1238 1600 50  0001 C CNN
F 3 "" H 1200 1750 50  0000 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR013
U 1 1 58129D79
P 2900 1200
F 0 "#PWR013" H 2900 1050 50  0001 C CNN
F 1 "+12V" H 2900 1340 50  0000 C CNN
F 2 "" H 2900 1200 50  0000 C CNN
F 3 "" H 2900 1200 50  0000 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5812A4E7
P 2900 2400
F 0 "#PWR014" H 2900 2150 50  0001 C CNN
F 1 "GND" H 2900 2250 50  0000 C CNN
F 2 "" H 2900 2400 50  0000 C CNN
F 3 "" H 2900 2400 50  0000 C CNN
	1    2900 2400
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5812ADCA
P 3200 1600
F 0 "C2" H 3225 1700 50  0000 L CNN
F 1 "10u" H 3225 1500 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.8" H 3200 1600 50  0001 C CNN
F 3 "" H 3200 1600 50  0000 C CNN
F 4 "PCE5022CT-ND" H 3200 1600 60  0001 C CNN "DIGIKEY"
	1    3200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1350 9450 1550
Wire Wire Line
	9900 1350 9900 1550
Wire Wire Line
	4300 2600 5150 2600
Wire Wire Line
	4300 2450 4300 2900
Connection ~ 4300 2600
Wire Wire Line
	4300 3200 4300 3300
Wire Wire Line
	4300 3900 4300 4000
Wire Wire Line
	4600 2600 4600 2850
Connection ~ 4600 2600
Wire Wire Line
	4600 3150 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	6300 4000 6300 3750
Wire Wire Line
	1950 6250 2800 6250
Wire Wire Line
	1950 6350 2550 6350
Wire Wire Line
	2800 6250 2800 6450
Wire Wire Line
	10300 1600 10300 1350
Wire Wire Line
	4850 2800 5150 2800
Wire Wire Line
	5100 2800 5100 3150
Wire Wire Line
	5100 3450 5100 3550
Wire Wire Line
	5100 4000 5100 3850
Connection ~ 5100 4000
Wire Wire Line
	4850 4000 4850 3450
Connection ~ 4850 4000
Wire Wire Line
	4850 3150 4850 2800
Connection ~ 5100 2800
Wire Wire Line
	5700 3300 5700 4100
Connection ~ 5700 4000
Wire Wire Line
	6250 2900 6300 2900
Wire Wire Line
	6300 2900 6300 3450
Connection ~ 6300 4000
Wire Wire Line
	6950 3200 6300 3200
Connection ~ 6300 3200
Wire Wire Line
	7600 3200 7250 3200
Wire Wire Line
	7600 2200 7600 3200
Wire Wire Line
	7400 2600 8250 2600
Connection ~ 7600 2600
Wire Wire Line
	5900 3300 5900 3400
Wire Wire Line
	5900 3400 5700 3400
Connection ~ 5700 3400
Wire Wire Line
	4300 4000 8250 4000
Wire Wire Line
	6600 3000 6600 2900
Wire Wire Line
	6250 2600 6800 2600
Connection ~ 6600 2600
Wire Wire Line
	7800 4000 7800 3000
Wire Wire Line
	7800 2150 7800 2700
Connection ~ 7800 2600
Wire Wire Line
	2550 6050 2550 6900
Wire Wire Line
	1200 1450 1200 1600
Wire Wire Line
	750  1900 1750 1900
Wire Wire Line
	750  1900 750  1450
Wire Wire Line
	1200 1550 1800 1550
Wire Wire Line
	1450 1300 1450 1550
Connection ~ 1200 1550
Connection ~ 1200 1900
Wire Wire Line
	2000 1300 1450 1300
Wire Wire Line
	2000 1900 1800 1900
Wire Wire Line
	1800 1900 1800 1550
Connection ~ 1450 1550
Wire Wire Line
	2000 1600 1750 1600
Wire Wire Line
	1750 1600 1750 2200
Wire Wire Line
	2900 1300 2900 1200
Wire Wire Line
	2300 1600 2450 1600
Wire Wire Line
	2450 1600 2450 1300
Connection ~ 2450 1300
Wire Wire Line
	2900 1900 2900 2400
Wire Wire Line
	2300 1900 3600 1900
Wire Wire Line
	2300 2200 2450 2200
Wire Wire Line
	2450 2200 2450 1900
Connection ~ 2450 1900
Wire Wire Line
	1750 2200 2000 2200
Connection ~ 1750 1900
Wire Wire Line
	3200 1300 3200 1450
Connection ~ 2900 1300
Wire Wire Line
	3600 1300 3600 1450
Connection ~ 3200 1300
Connection ~ 2900 1900
Connection ~ 3200 1900
Wire Wire Line
	3200 1900 3200 1750
Wire Wire Line
	3600 1900 3600 1750
Text GLabel 8250 2600 2    60   Input ~ 0
VCC
Text GLabel 8250 4000 2    60   Input ~ 0
GND
Connection ~ 7800 4000
$Comp
L CP C8
U 1 1 581798AC
P 8050 2850
F 0 "C8" H 8075 2950 50  0000 L CNN
F 1 "22u" H 8075 2750 50  0000 L CNN
F 2 "SMD_Packages:SMD-1210_Pol" H 8088 2700 50  0001 C CNN
F 3 "" H 8050 2850 50  0000 C CNN
F 4 "478-9063-1-ND" H 8050 2850 60  0001 C CNN "DIGIKEY"
	1    8050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3000 8050 4000
Connection ~ 8050 4000
Wire Wire Line
	8050 2700 8050 2600
Connection ~ 8050 2600
Connection ~ 3600 1300
Wire Wire Line
	2300 1300 3800 1300
Text GLabel 3800 1300 2    60   Input ~ 0
PWR
$Comp
L D D2
U 1 1 5817F74C
P 2150 1600
F 0 "D2" H 2150 1700 50  0000 C CNN
F 1 "D" H 2150 1500 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 2150 1600 50  0001 C CNN
F 3 "" H 2150 1600 50  0000 C CNN
F 4 "497-5574-1-ND" H 2150 1600 60  0001 C CNN "DIGIKEY"
	1    2150 1600
	-1   0    0    1   
$EndComp
$Comp
L D D3
U 1 1 5817F7DB
P 2150 1900
F 0 "D3" H 2150 2000 50  0000 C CNN
F 1 "D" H 2150 1800 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 2150 1900 50  0001 C CNN
F 3 "" H 2150 1900 50  0000 C CNN
F 4 "497-5574-1-ND" H 2150 1900 60  0001 C CNN "DIGIKEY"
	1    2150 1900
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 5817F83E
P 2150 2200
F 0 "D4" H 2150 2300 50  0000 C CNN
F 1 "D" H 2150 2100 50  0000 C CNN
F 2 "Diodes_SMD:SMB_Handsoldering" H 2150 2200 50  0001 C CNN
F 3 "" H 2150 2200 50  0000 C CNN
F 4 "497-5574-1-ND" H 2150 2200 60  0001 C CNN "DIGIKEY"
	1    2150 2200
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 5817FAC1
P 3600 1600
F 0 "C3" H 3625 1700 50  0000 L CNN
F 1 "10u" H 3625 1500 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.8" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0000 C CNN
F 4 "PCE5022CT-ND" H 3600 1600 60  0001 C CNN "DIGIKEY"
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L A5970AD U1
U 1 1 58180601
P 5700 2700
F 0 "U1" H 5300 2200 60  0000 C CNN
F 1 "A5970AD" H 5550 3000 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 5700 2700 60  0001 C CNN
F 3 "" H 5700 2700 60  0000 C CNN
F 4 "497-10183-1-ND" H 5700 2700 60  0001 C CNN "DIGIKEY"
	1    5700 2700
	1    0    0    -1  
$EndComp
Text GLabel 2700 6900 2    60   Input ~ 0
PWR
Wire Wire Line
	2550 6900 2700 6900
Connection ~ 2550 6350
$EndSCHEMATC
