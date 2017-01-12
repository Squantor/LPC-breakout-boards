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
LIBS:SquantorNxp
LIBS:SquantorConnectors
LIBS:LPC824_HVQFN33_breakout-cache
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
L C C1
U 1 1 58740B30
P 3300 800
F 0 "C1" H 3325 900 50  0000 L CNN
F 1 "C" H 3325 700 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 3338 650 50  0001 C CNN
F 3 "" H 3300 800 50  0000 C CNN
	1    3300 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 800  2950 800 
Wire Wire Line
	3450 800  3650 800 
Text Label 3500 800  0    60   ~ 0
VCC
Text Label 2950 800  0    60   ~ 0
GND
$Comp
L LPC824M201JHI33 M1
U 1 1 58740BAD
P 3350 1950
F 0 "M1" H 2750 3050 45  0000 L BNN
F 1 "LPC824M201JHI33" H 2750 850 45  0000 L BNN
F 2 "SquantorIC:SOT617-3" H 3380 2100 20  0001 C CNN
F 3 "" H 3350 1950 60  0000 C CNN
	1    3350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2950 3350 3250
Text Label 3350 3250 1    60   ~ 0
GND
Wire Wire Line
	4050 2550 4400 2550
Wire Wire Line
	4050 2450 4400 2450
Wire Wire Line
	4050 2350 4400 2350
Text Label 4100 2550 0    60   ~ 0
VCC
Text Label 4100 2450 0    60   ~ 0
AGND
Text Label 4100 2350 0    60   ~ 0
AREF
Wire Wire Line
	1650 1050 2050 1050
Wire Wire Line
	750  2950 1150 2950
Wire Wire Line
	1650 2950 2050 2950
Wire Wire Line
	750  2850 1150 2850
Wire Wire Line
	750  1050 1150 1050
Wire Wire Line
	2650 1150 2250 1150
Wire Wire Line
	2650 1250 2250 1250
Wire Wire Line
	2650 1350 2250 1350
Wire Wire Line
	2650 1450 2250 1450
Wire Wire Line
	2650 1550 2250 1550
Wire Wire Line
	2650 1650 2250 1650
Wire Wire Line
	2650 1750 2250 1750
Wire Wire Line
	2650 1850 2250 1850
Text Label 2250 1150 0    60   ~ 0
PIO0_13
Text Label 2250 1250 0    60   ~ 0
PIO0_12
Text Label 2250 1350 0    60   ~ 0
PIO0_5
Text Label 2250 1450 0    60   ~ 0
PIO0_4
Text Label 2250 1550 0    60   ~ 0
PIO0_28
Text Label 2250 1650 0    60   ~ 0
PIO0_3
Text Label 2250 1750 0    60   ~ 0
PIO0_2
Text Label 2250 1850 0    60   ~ 0
PIO0_11
Wire Wire Line
	2650 2050 2250 2050
Wire Wire Line
	2650 2150 2250 2150
Wire Wire Line
	2250 2250 2650 2250
Wire Wire Line
	2650 2350 2250 2350
Wire Wire Line
	2650 2450 2250 2450
Wire Wire Line
	2650 2550 2250 2550
Wire Wire Line
	2650 2650 2250 2650
Wire Wire Line
	2650 2750 2250 2750
Wire Wire Line
	1650 1150 2050 1150
Wire Wire Line
	1650 1250 2050 1250
Wire Wire Line
	1650 1350 2050 1350
Wire Wire Line
	1650 1450 2050 1450
Wire Wire Line
	1650 1550 2050 1550
Wire Wire Line
	1650 1650 2050 1650
Wire Wire Line
	1650 1750 2050 1750
Wire Wire Line
	750  1150 1150 1150
Wire Wire Line
	750  1250 1150 1250
Wire Wire Line
	1150 1350 750  1350
Wire Wire Line
	750  1450 1150 1450
Wire Wire Line
	1150 1550 750  1550
Wire Wire Line
	1150 1650 750  1650
Wire Wire Line
	1150 1750 750  1750
Text Label 1700 1050 0    60   ~ 0
PIO0_13
Text Label 750  1050 0    60   ~ 0
PIO0_12
Text Label 2250 2050 0    60   ~ 0
PIO0_10
Text Label 2250 2150 0    60   ~ 0
PIO0_16
Text Label 2250 2250 0    60   ~ 0
PIO0_27
Text Label 2250 2350 0    60   ~ 0
PIO0_26
Text Label 2250 2450 0    60   ~ 0
PIO0_25
Text Label 2250 2550 0    60   ~ 0
PIO0_24
Text Label 2250 2650 0    60   ~ 0
PIO0_15
Text Label 2250 2750 0    60   ~ 0
PIO0_1
Text Label 1700 1150 0    60   ~ 0
PIO0_5
Text Label 750  1150 0    60   ~ 0
PIO0_4
Text Label 1700 1250 0    60   ~ 0
PIO0_28
Text Label 750  1250 0    60   ~ 0
PIO0_3
Text Label 1700 1350 0    60   ~ 0
PIO0_2
Text Label 750  1350 0    60   ~ 0
PIO0_11
Text Label 1700 1450 0    60   ~ 0
PIO0_10
Text Label 750  1450 0    60   ~ 0
PIO0_16
Text Label 1700 1550 0    60   ~ 0
PIO0_27
Text Label 750  1550 0    60   ~ 0
PIO0_26
Text Label 1700 1650 0    60   ~ 0
PIO0_25
Text Label 750  1650 0    60   ~ 0
PIO0_24
Text Label 1700 1750 0    60   ~ 0
PIO0_15
Text Label 750  1750 0    60   ~ 0
PIO0_1
$Comp
L PINS_2X09 J?
U 1 1 58784732
P 1400 1450
F 0 "J?" H 1300 2000 60  0000 C CNN
F 1 "PINS_2X09" H 1400 900 60  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 1400 1800 60  0001 C CNN
F 3 "" H 1400 1800 60  0001 C CNN
	1    1400 1450
	1    0    0    -1  
$EndComp
$Comp
L PINS_2X09 J?
U 1 1 587847B0
P 1400 2750
F 0 "J?" H 1300 3300 60  0000 C CNN
F 1 "PINS_2X09" H 1400 2200 60  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 1400 3100 60  0001 C CNN
F 3 "" H 1400 3100 60  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1850 750  1850
Wire Wire Line
	1650 1850 2050 1850
Text Label 750  1850 0    60   ~ 0
GND
Text Label 1700 1850 0    60   ~ 0
GND
Wire Wire Line
	1150 2350 750  2350
Wire Wire Line
	1150 2750 750  2750
Wire Wire Line
	1150 2650 750  2650
Wire Wire Line
	1150 2550 750  2550
Wire Wire Line
	1150 2450 750  2450
Wire Wire Line
	1650 2350 2050 2350
Wire Wire Line
	1650 2450 2050 2450
Wire Wire Line
	1650 2850 2050 2850
Wire Wire Line
	1650 2750 2050 2750
Wire Wire Line
	1650 2650 2050 2650
Wire Wire Line
	1650 2550 2050 2550
Wire Wire Line
	1150 3050 750  3050
Wire Wire Line
	1150 3150 750  3150
Wire Wire Line
	1650 3150 2050 3150
Wire Wire Line
	1650 3050 2050 3050
Wire Wire Line
	4050 2750 4400 2750
Wire Wire Line
	4050 2650 4400 2650
Text Label 4100 2650 0    60   ~ 0
PIO0_8
Text Label 4100 2750 0    60   ~ 0
PIO0_9
Wire Wire Line
	4050 2250 4400 2250
Wire Wire Line
	4050 2150 4400 2150
Wire Wire Line
	4050 2050 4400 2050
Text Label 4100 2250 0    60   ~ 0
PIO0_7
Text Label 4100 2150 0    60   ~ 0
PIO0_6
Text Label 4100 2050 0    60   ~ 0
PIO0_0
Text Label 750  3150 0    60   ~ 0
PIO0_9
Text Label 1700 3150 0    60   ~ 0
PIO0_8
Text Label 750  3050 0    60   ~ 0
VCC
Text Label 1700 3050 0    60   ~ 0
AGND
Text Label 750  2950 0    60   ~ 0
AREF
$EndSCHEMATC
