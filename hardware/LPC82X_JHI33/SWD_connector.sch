EESchema Schematic File Version 4
LIBS:LPC82X_JHI33-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L SquantorConnectors:JTAG_2X05 J3
U 1 1 5D2859FE
P 3400 2550
F 0 "J3" H 3400 3037 60  0000 C CNN
F 1 "JTAG_2X05" H 3400 2931 60  0000 C CNN
F 2 "SquantorConnectors:Header-0127-2X05-H006" H 3400 2700 60  0001 C CNN
F 3 "" H 3400 2700 60  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2450 3950 2450
Wire Wire Line
	3950 2450 3950 2550
Wire Wire Line
	3900 2750 3950 2750
Connection ~ 3950 2750
Wire Wire Line
	3900 2550 3950 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 3950 2750
Wire Wire Line
	3900 2350 3950 2350
$Comp
L Device:R R4
U 1 1 5D285A0C
P 2700 2350
F 0 "R4" V 2650 2200 50  0000 C CNN
F 1 "100" V 2700 2350 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 2350 50  0001 C CNN
F 3 "~" H 2700 2350 50  0001 C CNN
	1    2700 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D285A12
P 2700 2450
F 0 "R5" V 2650 2300 50  0000 C CNN
F 1 "100" V 2700 2450 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 2450 50  0001 C CNN
F 3 "~" H 2700 2450 50  0001 C CNN
	1    2700 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2350 2850 2350
Wire Wire Line
	2850 2450 2900 2450
Wire Wire Line
	2550 2450 2450 2450
Wire Wire Line
	2550 2350 2450 2350
$Comp
L Device:R R6
U 1 1 5D285A1E
P 2700 2750
F 0 "R6" V 2650 2600 50  0000 C CNN
F 1 "100" V 2700 2750 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 2750 50  0001 C CNN
F 3 "~" H 2700 2750 50  0001 C CNN
	1    2700 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2750 2850 2750
Wire Wire Line
	2550 2750 2450 2750
Text Label 2450 2750 2    50   ~ 0
RESET
$Comp
L Device:R R3
U 1 1 5D285A27
P 2700 2100
F 0 "R3" V 2650 1950 50  0000 C CNN
F 1 "100k" V 2700 2100 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 2100 50  0001 C CNN
F 3 "~" H 2700 2100 50  0001 C CNN
	1    2700 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D285A2D
P 2700 2000
F 0 "R2" V 2650 1850 50  0000 C CNN
F 1 "100k" V 2700 2000 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 2000 50  0001 C CNN
F 3 "~" H 2700 2000 50  0001 C CNN
	1    2700 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2100 2850 2100
Wire Wire Line
	2850 2000 2900 2000
Text Label 2450 2100 2    50   ~ 0
SWDCLK
Text Label 2450 2000 2    50   ~ 0
SWDIO
Wire Wire Line
	2550 2100 2450 2100
Wire Wire Line
	2550 2000 2450 2000
$Comp
L Device:R R1
U 1 1 5D285A39
P 2700 1900
F 0 "R1" V 2650 1750 50  0000 C CNN
F 1 "100K" V 2700 1900 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 2630 1900 50  0001 C CNN
F 3 "~" H 2700 1900 50  0001 C CNN
	1    2700 1900
	0    1    1    0   
$EndComp
Text Label 2450 1900 2    50   ~ 0
RESET
Wire Wire Line
	2450 1900 2550 1900
Wire Wire Line
	2850 1900 2900 1900
Text Label 2900 1900 0    50   ~ 0
VDD
Text Label 2900 2000 0    50   ~ 0
VDD
Text Label 2900 2100 0    50   ~ 0
VSS
Text Label 3900 2200 2    50   ~ 0
VDD
Wire Wire Line
	3950 2200 3900 2200
Wire Wire Line
	3950 2200 3950 2350
Text Label 3900 2950 2    50   ~ 0
VSS
Wire Wire Line
	3900 2950 3950 2950
Wire Wire Line
	3950 2750 3950 2950
NoConn ~ 2900 2650
NoConn ~ 2900 2550
Text Label 2450 2350 2    50   ~ 0
SWDIO
Text Label 2450 2450 2    50   ~ 0
SWDCLK
Text HLabel 1650 2250 0    50   Output ~ 0
RESET
Text Label 1700 2250 0    50   ~ 0
RESET
Text HLabel 1650 2350 0    50   BiDi ~ 0
SWDIO
Text Label 1700 2350 0    50   ~ 0
SWDIO
Text Label 1700 2450 0    50   ~ 0
SWDCLK
Text HLabel 1650 2450 0    50   Output ~ 0
SWDCLK
Wire Wire Line
	1650 2250 1700 2250
Wire Wire Line
	1700 2350 1650 2350
Wire Wire Line
	1650 2450 1700 2450
Text Label 1700 2150 0    50   ~ 0
VDD
Text Label 1700 2050 0    50   ~ 0
VSS
Text HLabel 1650 2150 0    50   Input ~ 0
VDD
Text HLabel 1650 2050 0    50   Input ~ 0
VSS
Wire Wire Line
	1650 2150 1700 2150
Wire Wire Line
	1700 2050 1650 2050
$EndSCHEMATC
