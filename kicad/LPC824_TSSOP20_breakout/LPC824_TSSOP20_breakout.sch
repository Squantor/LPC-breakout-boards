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
LIBS:SquantorButtons
LIBS:SquantorConnectors
LIBS:SquantorCrystal
LIBS:SquantorNxp
LIBS:LPC824_TSSOP20_breakout-cache
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
L LPC824M201JDH20 M1
U 1 1 58740428
P 3100 2700
F 0 "M1" H 2500 3650 45  0000 L BNN
F 1 "LPC824M201JDH20" H 2500 2400 45  0000 L BNN
F 2 "SquantorIC:SOT360" H 3130 2850 20  0001 C CNN
F 3 "" H 3100 2700 60  0000 C CNN
	1    3100 2700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 587404D2
P 2950 1200
F 0 "C1" H 2975 1300 50  0000 L CNN
F 1 "100n" H 2975 1100 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 2988 1050 50  0001 C CNN
F 3 "" H 2950 1200 50  0000 C CNN
	1    2950 1200
	1    0    0    -1  
$EndComp
$Comp
L PINS_1X10 J1
U 1 1 587405C9
P 1350 2350
F 0 "J1" H 1300 2950 60  0000 C CNN
F 1 "PINS_1X10" H 1350 1750 60  0000 C CNN
F 2 "SquantorConnectors:SquantorConnectors-1X10_SMALL" H 1350 2800 60  0001 C CNN
F 3 "" H 1350 2800 60  0001 C CNN
	1    1350 2350
	1    0    0    -1  
$EndComp
$Comp
L PINS_1X10 J2
U 1 1 58740670
P 4600 2350
F 0 "J2" H 4550 2950 60  0000 C CNN
F 1 "PINS_1X10" H 4600 1750 60  0000 C CNN
F 2 "SquantorConnectors:SquantorConnectors-1X10_SMALL" H 4600 2800 60  0001 C CNN
F 3 "" H 4600 2800 60  0001 C CNN
	1    4600 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1900 2400 1900
Wire Wire Line
	1550 2000 2400 2000
Wire Wire Line
	1550 2100 2400 2100
Wire Wire Line
	1550 2200 2400 2200
Wire Wire Line
	1550 2300 2400 2300
Wire Wire Line
	1550 2400 2400 2400
Wire Wire Line
	1550 2500 2400 2500
Wire Wire Line
	1550 2600 2400 2600
Wire Wire Line
	1550 2700 2400 2700
Wire Wire Line
	1550 2800 2400 2800
Wire Wire Line
	3800 1900 4400 1900
Wire Wire Line
	3800 2000 4400 2000
Wire Wire Line
	3800 2100 4400 2100
Wire Wire Line
	3800 2200 4400 2200
Wire Wire Line
	3800 2300 4400 2300
Wire Wire Line
	3800 2400 4400 2400
Wire Wire Line
	3800 2500 4400 2500
Wire Wire Line
	3800 2600 4400 2600
Wire Wire Line
	3800 2700 4400 2700
Wire Wire Line
	4400 2800 3800 2800
Wire Wire Line
	2950 1050 2950 900 
Wire Wire Line
	2950 1350 2950 1550
Text Label 2950 1550 1    60   ~ 0
GND
Text Label 2950 900  1    60   ~ 0
VCC
Text Label 3950 1900 0    60   ~ 0
PIO0_14
Text Label 3950 2000 0    60   ~ 0
PIO0_0
Text Label 3950 2100 0    60   ~ 0
AVCC
Text Label 3950 2200 0    60   ~ 0
AGND
Text Label 3950 2300 0    60   ~ 0
VCC
Text Label 3950 2400 0    60   ~ 0
GND
Text Label 3950 2500 0    60   ~ 0
PIO0_8
Text Label 3950 2600 0    60   ~ 0
PIO0_9
Text Label 3950 2700 0    60   ~ 0
PIO0_1
Text Label 3950 2800 0    60   ~ 0
PIO0_15
Text Label 1600 1900 0    60   ~ 0
PIO0_23
Text Label 1600 2000 0    60   ~ 0
PIO0_17
Text Label 1600 2100 0    60   ~ 0
PIO0_13
Text Label 1600 2200 0    60   ~ 0
PIO0_12
Text Label 1600 2300 0    60   ~ 0
PIO0_5
Text Label 1600 2400 0    60   ~ 0
PIO0_4
Text Label 1600 2500 0    60   ~ 0
PIO0_3
Text Label 1600 2600 0    60   ~ 0
PIO0_2
Text Label 1600 2700 0    60   ~ 0
PIO0_11
Text Label 1600 2800 0    60   ~ 0
PIO0_10
$Comp
L C C?
U 1 1 58D17C4B
P 2700 1200
F 0 "C?" H 2725 1300 50  0000 L CNN
F 1 "10n" H 2725 1100 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 2738 1050 50  0001 C CNN
F 3 "" H 2700 1200 50  0000 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1050 2700 1000
Wire Wire Line
	2700 1000 3150 1000
Connection ~ 2950 1000
Wire Wire Line
	2700 1350 2700 1400
Wire Wire Line
	2700 1400 3150 1400
Connection ~ 2950 1400
$Comp
L C C?
U 1 1 58D17FF1
P 3650 1200
F 0 "C?" H 3675 1300 50  0000 L CNN
F 1 "100n" H 3675 1100 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 3688 1050 50  0001 C CNN
F 3 "" H 3650 1200 50  0000 C CNN
	1    3650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1050 3650 900 
Wire Wire Line
	3650 1350 3650 1550
Text Label 3650 1550 1    60   ~ 0
AGND
Text Label 3650 900  1    60   ~ 0
AVCC
$Comp
L C C?
U 1 1 58D18098
P 4000 1200
F 0 "C?" H 4025 1300 50  0000 L CNN
F 1 "10u" H 4025 1100 50  0000 L CNN
F 2 "SquantorRcl:C_0805" H 4038 1050 50  0001 C CNN
F 3 "" H 4000 1200 50  0001 C CNN
	1    4000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1000 4000 1050
Wire Wire Line
	3450 1000 4000 1000
Connection ~ 3650 1000
Wire Wire Line
	4000 1400 4000 1350
Wire Wire Line
	3450 1400 4000 1400
Connection ~ 3650 1400
$Comp
L R R?
U 1 1 58D18208
P 3300 1400
F 0 "R?" V 3380 1400 50  0000 C CNN
F 1 "0" V 3300 1400 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 3230 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 58D1824F
P 3300 1000
F 0 "R?" V 3380 1000 50  0000 C CNN
F 1 "0" V 3300 1000 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 3230 1000 50  0001 C CNN
F 3 "" H 3300 1000 50  0001 C CNN
	1    3300 1000
	0    1    1    0   
$EndComp
$EndSCHEMATC
