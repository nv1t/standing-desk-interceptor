EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:CP C-33
U 1 1 5E84F6CF
P 6750 1450
F 0 "C-33" H 6868 1496 50  0000 L CNN
F 1 "CP" H 6868 1405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 6788 1300 50  0001 C CNN
F 3 "~" H 6750 1450 50  0001 C CNN
	1    6750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C-55
U 1 1 5E84FD27
P 5850 1450
F 0 "C-55" H 5968 1496 50  0000 L CNN
F 1 "CP" H 5968 1405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 5888 1300 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5E85107E
P 6300 1300
F 0 "U1" H 6300 1542 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 6300 1451 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Horizontal_TabDown" H 6300 1500 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 6400 1050 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J3
U 1 1 5E851BB2
P 9700 2400
F 0 "J3" H 9370 2404 50  0000 R CNN
F 1 "RJ45" H 9370 2495 50  0000 R CNN
F 2 "Custom-Connectors:MEBP_8-8G" V 9700 2425 50  0001 C CNN
F 3 "~" V 9700 2425 50  0001 C CNN
	1    9700 2400
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J4
U 1 1 5E8543DE
P 9700 3900
F 0 "J4" H 9370 3904 50  0000 R CNN
F 1 "RJ45" H 9370 3995 50  0000 R CNN
F 2 "Custom-Connectors:MEBP_8-8G" V 9700 3925 50  0001 C CNN
F 3 "~" V 9700 3925 50  0001 C CNN
	1    9700 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 1300 6000 1300
Wire Wire Line
	6600 1300 6750 1300
Wire Wire Line
	6750 1300 7250 1300
Connection ~ 6750 1300
NoConn ~ 9300 2100
NoConn ~ 9300 2200
NoConn ~ 9300 2300
NoConn ~ 9300 3600
NoConn ~ 9300 3700
NoConn ~ 9300 3800
Wire Wire Line
	9300 2800 8450 2800
Wire Wire Line
	8450 2800 8450 3900
Wire Wire Line
	8450 4300 9300 4300
Wire Wire Line
	8450 2800 8450 2400
Connection ~ 8450 2800
Wire Wire Line
	9300 2400 8450 2400
Wire Wire Line
	9300 3900 8450 3900
Connection ~ 8450 3900
Wire Wire Line
	8450 3900 8450 4300
Text Label 6950 1300 0    50   ~ 0
3.3V
Text Label 9000 2400 0    50   ~ 0
WAKE
Text Label 9000 3900 0    50   ~ 0
WAKE
$Comp
L power:Earth #PWR0101
U 1 1 5E95AB88
P 5850 1600
F 0 "#PWR0101" H 5850 1350 50  0001 C CNN
F 1 "Earth" H 5850 1450 50  0001 C CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "~" H 5850 1600 50  0001 C CNN
	1    5850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5E95B8D1
P 6300 1600
F 0 "#PWR0102" H 6300 1350 50  0001 C CNN
F 1 "Earth" H 6300 1450 50  0001 C CNN
F 2 "" H 6300 1600 50  0001 C CNN
F 3 "~" H 6300 1600 50  0001 C CNN
	1    6300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 5E95BE36
P 6750 1600
F 0 "#PWR0103" H 6750 1350 50  0001 C CNN
F 1 "Earth" H 6750 1450 50  0001 C CNN
F 2 "" H 6750 1600 50  0001 C CNN
F 3 "~" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0104
U 1 1 5E95C431
P 9300 2700
F 0 "#PWR0104" H 9300 2450 50  0001 C CNN
F 1 "Earth" H 9300 2550 50  0001 C CNN
F 2 "" H 9300 2700 50  0001 C CNN
F 3 "~" H 9300 2700 50  0001 C CNN
	1    9300 2700
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 5E95D01B
P 9300 4200
F 0 "#PWR0105" H 9300 3950 50  0001 C CNN
F 1 "Earth" H 9300 4050 50  0001 C CNN
F 2 "" H 9300 4200 50  0001 C CNN
F 3 "~" H 9300 4200 50  0001 C CNN
	1    9300 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 1300 7250 2250
Wire Wire Line
	7250 2250 6950 2250
Wire Wire Line
	6150 2250 6150 2450
NoConn ~ 6950 3150
NoConn ~ 6950 3950
NoConn ~ 6950 4050
NoConn ~ 6950 4150
NoConn ~ 6950 4250
NoConn ~ 6950 4450
NoConn ~ 6950 4550
NoConn ~ 5550 4550
NoConn ~ 5550 4450
NoConn ~ 5550 4250
NoConn ~ 5550 4150
NoConn ~ 5550 4050
NoConn ~ 5550 3950
NoConn ~ 5550 3750
NoConn ~ 5550 3650
NoConn ~ 5550 3550
NoConn ~ 5550 3450
NoConn ~ 5550 3250
NoConn ~ 5550 3150
NoConn ~ 5550 3050
NoConn ~ 5550 2950
NoConn ~ 5550 2850
NoConn ~ 5550 2750
$Comp
L Switch:SW_Push SW-RST1
U 1 1 5E9D4508
P 6950 2450
F 0 "SW-RST1" V 6904 2598 50  0000 L CNN
F 1 "SW_Push" V 6995 2598 50  0000 L CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 6950 2650 50  0001 C CNN
F 3 "~" H 6950 2650 50  0001 C CNN
	1    6950 2450
	0    1    1    0   
$EndComp
Connection ~ 6950 2250
Wire Wire Line
	6950 2250 6150 2250
Wire Wire Line
	6950 2650 6950 2950
NoConn ~ 6350 2450
$Comp
L power:Earth #PWR0106
U 1 1 5E9D6AD2
P 6250 4850
F 0 "#PWR0106" H 6250 4600 50  0001 C CNN
F 1 "Earth" H 6250 4700 50  0001 C CNN
F 2 "" H 6250 4850 50  0001 C CNN
F 3 "~" H 6250 4850 50  0001 C CNN
	1    6250 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E8B58E2
P 4950 1800
F 0 "H1" H 5050 1846 50  0000 L CNN
F 1 "MountingHole" H 5050 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 4950 1800 50  0001 C CNN
F 3 "~" H 4950 1800 50  0001 C CNN
	1    4950 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E8B5CFD
P 5450 1800
F 0 "H3" H 5550 1846 50  0000 L CNN
F 1 "MountingHole" H 5550 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5450 1800 50  0001 C CNN
F 3 "~" H 5450 1800 50  0001 C CNN
	1    5450 1800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E8B60D4
P 4950 2300
F 0 "H2" H 5050 2346 50  0000 L CNN
F 1 "MountingHole" H 5050 2255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 4950 2300 50  0001 C CNN
F 3 "~" H 4950 2300 50  0001 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E8BC62B
P 5450 2300
F 0 "H4" H 5550 2346 50  0000 L CNN
F 1 "MountingHole" H 5550 2255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 5450 2300 50  0001 C CNN
F 3 "~" H 5450 2300 50  0001 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Omega2+ U2
U 1 1 5E976E24
P 6250 3650
F 0 "U2" H 6250 2361 50  0000 C CNN
F 1 "Omega2+" H 6250 2270 50  0000 C CNN
F 2 "Custom-Connectors:ONION_OMEGA2" H 6250 2150 50  0001 C CNN
F 3 "https://docs.onion.io/omega2-docs/omega2p.html" H 3050 2500 50  0001 C CNN
	1    6250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2500 7550 2500
Wire Wire Line
	7550 2500 7550 3350
Wire Wire Line
	7550 3350 6950 3350
Wire Wire Line
	6950 3450 8350 3450
Wire Wire Line
	8350 3450 8350 4000
Wire Wire Line
	8350 4000 9300 4000
Wire Wire Line
	9300 4100 7200 4100
Wire Wire Line
	7200 4100 7200 3750
Wire Wire Line
	7200 3750 6950 3750
Wire Wire Line
	6950 3650 8750 3650
Wire Wire Line
	8750 3650 8750 2600
Wire Wire Line
	8750 2600 9300 2600
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5EF3C7D3
P 5150 1400
F 0 "J1" H 5068 1075 50  0000 C CNN
F 1 "Conn_01x02" H 5068 1166 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 1400 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1300 5850 1300
Connection ~ 5850 1300
$Comp
L power:Earth #PWR0107
U 1 1 5EF4874D
P 5350 1400
F 0 "#PWR0107" H 5350 1150 50  0001 C CNN
F 1 "Earth" H 5350 1250 50  0001 C CNN
F 2 "" H 5350 1400 50  0001 C CNN
F 3 "~" H 5350 1400 50  0001 C CNN
	1    5350 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
