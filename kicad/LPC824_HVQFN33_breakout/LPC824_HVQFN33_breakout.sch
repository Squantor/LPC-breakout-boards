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
P 4500 1550
F 0 "C1" H 4525 1650 50  0000 L CNN
F 1 "100n" H 4525 1450 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 4538 1400 50  0001 C CNN
F 3 "" H 4500 1550 50  0000 C CNN
	1    4500 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1550 4150 1550
Wire Wire Line
	4650 1550 4850 1550
Text Label 4700 1550 0    60   ~ 0
VCC
Text Label 4150 1550 0    60   ~ 0
GND
$Comp
L LPC824M201JHI33 M1
U 1 1 58740BAD
P 4550 2700
F 0 "M1" H 3950 3800 45  0000 L BNN
F 1 "LPC824M201JHI33" H 3950 1600 45  0000 L BNN
F 2 "SquantorIC:SOT617-3" H 4580 2850 20  0001 C CNN
F 3 "" H 4550 2700 60  0000 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3700 4550 4000
Text Label 4550 4000 1    60   ~ 0
GND
Wire Wire Line
	5250 3300 5600 3300
Wire Wire Line
	5250 3200 5600 3200
Wire Wire Line
	5250 3100 5600 3100
Text Label 5300 3300 0    60   ~ 0
VCC
Text Label 5300 3200 0    60   ~ 0
AGND
Text Label 5300 3100 0    60   ~ 0
AREF
Wire Wire Line
	2850 1800 3250 1800
Wire Wire Line
	1950 3700 2350 3700
Wire Wire Line
	2850 3700 3250 3700
Wire Wire Line
	1950 3600 2350 3600
Wire Wire Line
	1950 1800 2350 1800
Wire Wire Line
	3850 1900 3450 1900
Wire Wire Line
	3850 2000 3450 2000
Wire Wire Line
	3850 2100 3450 2100
Wire Wire Line
	3850 2200 3450 2200
Wire Wire Line
	3850 2300 3450 2300
Wire Wire Line
	3850 2400 3450 2400
Wire Wire Line
	3850 2500 3450 2500
Wire Wire Line
	3850 2600 3450 2600
Text Label 3450 1900 0    60   ~ 0
PIO0_13
Text Label 3450 2000 0    60   ~ 0
PIO0_12
Text Label 3450 2100 0    60   ~ 0
PIO0_5
Text Label 3450 2200 0    60   ~ 0
PIO0_4
Text Label 3450 2300 0    60   ~ 0
PIO0_28
Text Label 3450 2400 0    60   ~ 0
PIO0_3
Text Label 3450 2500 0    60   ~ 0
PIO0_2
Text Label 3450 2600 0    60   ~ 0
PIO0_11
Wire Wire Line
	3850 2800 3450 2800
Wire Wire Line
	3850 2900 3450 2900
Wire Wire Line
	3450 3000 3850 3000
Wire Wire Line
	3850 3100 3450 3100
Wire Wire Line
	3850 3200 3450 3200
Wire Wire Line
	3850 3300 3450 3300
Wire Wire Line
	3850 3400 3450 3400
Wire Wire Line
	3850 3500 3450 3500
Wire Wire Line
	2850 1900 3250 1900
Wire Wire Line
	2850 2000 3250 2000
Wire Wire Line
	2850 2100 3250 2100
Wire Wire Line
	2850 2200 3250 2200
Wire Wire Line
	2850 2300 3250 2300
Wire Wire Line
	2850 2400 3250 2400
Wire Wire Line
	2850 2500 3250 2500
Wire Wire Line
	1950 1900 2350 1900
Wire Wire Line
	1950 2000 2350 2000
Wire Wire Line
	2350 2100 1950 2100
Wire Wire Line
	1950 2200 2350 2200
Wire Wire Line
	2350 2300 1950 2300
Wire Wire Line
	2350 2400 1950 2400
Wire Wire Line
	2350 2500 1950 2500
Text Label 2900 1800 0    60   ~ 0
PIO0_12
Text Label 1950 1800 0    60   ~ 0
PIO0_13
Text Label 3450 2800 0    60   ~ 0
PIO0_10
Text Label 3450 2900 0    60   ~ 0
PIO0_16
Text Label 3450 3000 0    60   ~ 0
PIO0_27
Text Label 3450 3100 0    60   ~ 0
PIO0_26
Text Label 3450 3200 0    60   ~ 0
PIO0_25
Text Label 3450 3300 0    60   ~ 0
PIO0_24
Text Label 3450 3400 0    60   ~ 0
PIO0_15
Text Label 3450 3500 0    60   ~ 0
PIO0_1
Text Label 2900 1900 0    60   ~ 0
PIO0_4
Text Label 1950 1900 0    60   ~ 0
PIO0_5
Text Label 2900 2000 0    60   ~ 0
PIO0_3
Text Label 1950 2000 0    60   ~ 0
PIO0_28
Text Label 2900 2100 0    60   ~ 0
PIO0_11
Text Label 1950 2100 0    60   ~ 0
PIO0_2
Text Label 2900 2200 0    60   ~ 0
PIO0_16
Text Label 1950 2200 0    60   ~ 0
PIO0_10
Text Label 2900 2300 0    60   ~ 0
PIO0_26
Text Label 1950 2300 0    60   ~ 0
PIO0_27
Text Label 2900 2400 0    60   ~ 0
PIO0_24
Text Label 1950 2400 0    60   ~ 0
PIO0_25
Text Label 2900 2500 0    60   ~ 0
PIO0_1
Text Label 1950 2500 0    60   ~ 0
PIO0_15
$Comp
L PINS_2X09 J1
U 1 1 58784732
P 2600 2200
F 0 "J1" H 2500 2750 60  0000 C CNN
F 1 "PINS_2X09" H 2600 1650 60  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 2600 2550 60  0001 C CNN
F 3 "" H 2600 2550 60  0001 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
$Comp
L PINS_2X09 J2
U 1 1 587847B0
P 2600 3500
F 0 "J2" H 2500 4050 60  0000 C CNN
F 1 "PINS_2X09" H 2600 2950 60  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 2600 3850 60  0001 C CNN
F 3 "" H 2600 3850 60  0001 C CNN
	1    2600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2600 1950 2600
Wire Wire Line
	2850 2600 3250 2600
Text Label 1950 2600 0    60   ~ 0
GND
Text Label 2900 2600 0    60   ~ 0
GND
Wire Wire Line
	2350 3100 1950 3100
Wire Wire Line
	2350 3500 1950 3500
Wire Wire Line
	2350 3400 1950 3400
Wire Wire Line
	2350 3300 1950 3300
Wire Wire Line
	2350 3200 1950 3200
Wire Wire Line
	2850 3100 3250 3100
Wire Wire Line
	2850 3200 3250 3200
Wire Wire Line
	2850 3600 3250 3600
Wire Wire Line
	2850 3500 3250 3500
Wire Wire Line
	2850 3400 3250 3400
Wire Wire Line
	2850 3300 3250 3300
Wire Wire Line
	2350 3800 1950 3800
Wire Wire Line
	2350 3900 1950 3900
Wire Wire Line
	2850 3900 3250 3900
Wire Wire Line
	2850 3800 3250 3800
Wire Wire Line
	5250 3500 5600 3500
Wire Wire Line
	5250 3400 5600 3400
Text Label 5300 3400 0    60   ~ 0
PIO0_8
Text Label 5300 3500 0    60   ~ 0
PIO0_9
Wire Wire Line
	5250 3000 5600 3000
Wire Wire Line
	5250 2900 5600 2900
Wire Wire Line
	5250 2800 5600 2800
Text Label 5300 3000 0    60   ~ 0
PIO0_7
Text Label 5300 2900 0    60   ~ 0
PIO0_6
Text Label 5300 2800 0    60   ~ 0
PIO0_0
Text Label 1950 3900 0    60   ~ 0
GND
Text Label 2900 3900 0    60   ~ 0
GND
Text Label 1950 3800 0    60   ~ 0
PIO0_9
Text Label 2900 3800 0    60   ~ 0
PIO0_8
Text Label 1950 3700 0    60   ~ 0
VCC
Wire Wire Line
	5250 2600 5600 2600
Wire Wire Line
	5250 2500 5600 2500
Wire Wire Line
	5250 2400 5600 2400
Wire Wire Line
	5250 2300 5600 2300
Wire Wire Line
	5250 2200 5600 2200
Wire Wire Line
	5250 2100 5600 2100
Wire Wire Line
	5250 2000 5600 2000
Wire Wire Line
	5250 1900 5600 1900
Text Label 5300 2600 0    60   ~ 0
PIO0_14
Text Label 5300 2500 0    60   ~ 0
PIO0_23
Text Label 5300 2400 0    60   ~ 0
PIO0_22
Text Label 5300 2300 0    60   ~ 0
PIO0_21
Text Label 5300 2200 0    60   ~ 0
PIO0_20
Text Label 5300 2100 0    60   ~ 0
PIO0_19
Text Label 5300 2000 0    60   ~ 0
PIO0_18
Text Label 5300 1900 0    60   ~ 0
PIO0_17
Text Label 2900 3100 0    60   ~ 0
PIO0_17
Text Label 1950 3100 0    60   ~ 0
PIO0_18
Text Label 2900 3200 0    60   ~ 0
PIO0_19
Text Label 1950 3200 0    60   ~ 0
PIO0_20
Text Label 2900 3300 0    60   ~ 0
PIO0_21
Text Label 1950 3300 0    60   ~ 0
PIO0_22
Text Label 2900 3400 0    60   ~ 0
PIO0_23
Text Label 1950 3400 0    60   ~ 0
PIO0_14
Text Label 2900 3500 0    60   ~ 0
PIO0_0
Text Label 1950 3500 0    60   ~ 0
PIO0_6
Text Label 2900 3600 0    60   ~ 0
PIO0_7
Text Label 1950 3600 0    60   ~ 0
AREF
Text Label 2900 3700 0    60   ~ 0
AGND
$EndSCHEMATC
