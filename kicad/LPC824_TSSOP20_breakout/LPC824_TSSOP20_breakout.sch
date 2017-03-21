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
P 2600 2700
F 0 "M1" H 2000 3650 45  0000 L BNN
F 1 "LPC824M201JDH20" H 2000 2400 45  0000 L BNN
F 2 "SquantorIC:SOT360" H 2630 2850 20  0001 C CNN
F 3 "" H 2600 2700 60  0000 C CNN
	1    2600 2700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 587404D2
P 1000 1000
F 0 "C1" H 1025 1100 50  0000 L CNN
F 1 "100n" H 1025 900 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 1038 850 50  0001 C CNN
F 3 "" H 1000 1000 50  0000 C CNN
	1    1000 1000
	1    0    0    -1  
$EndComp
$Comp
L PINS_1X10 J1
U 1 1 587405C9
P 850 2350
F 0 "J1" H 800 2950 60  0000 C CNN
F 1 "PINS_1X10" H 850 1750 60  0000 C CNN
F 2 "SquantorConnectors:SquantorConnectors-1X10_SMALL" H 850 2800 60  0001 C CNN
F 3 "" H 850 2800 60  0001 C CNN
	1    850  2350
	1    0    0    -1  
$EndComp
$Comp
L PINS_1X10 J2
U 1 1 58740670
P 4100 2350
F 0 "J2" H 4050 2950 60  0000 C CNN
F 1 "PINS_1X10" H 4100 1750 60  0000 C CNN
F 2 "SquantorConnectors:SquantorConnectors-1X10_SMALL" H 4100 2800 60  0001 C CNN
F 3 "" H 4100 2800 60  0001 C CNN
	1    4100 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1900 1900 1900
Wire Wire Line
	1050 2000 1900 2000
Wire Wire Line
	1050 2100 1900 2100
Wire Wire Line
	1050 2200 1900 2200
Wire Wire Line
	1050 2300 1900 2300
Wire Wire Line
	1050 2400 1900 2400
Wire Wire Line
	1050 2500 1900 2500
Wire Wire Line
	1050 2600 1900 2600
Wire Wire Line
	1050 2700 1900 2700
Wire Wire Line
	1050 2800 1900 2800
Wire Wire Line
	3300 1900 3900 1900
Wire Wire Line
	3300 2000 3900 2000
Wire Wire Line
	3300 2100 3900 2100
Wire Wire Line
	3300 2200 3900 2200
Wire Wire Line
	3300 2300 3900 2300
Wire Wire Line
	3300 2400 3900 2400
Wire Wire Line
	3300 2500 3900 2500
Wire Wire Line
	3300 2600 3900 2600
Wire Wire Line
	3300 2700 3900 2700
Wire Wire Line
	3900 2800 3300 2800
Wire Wire Line
	1000 700  1000 850 
Wire Wire Line
	1000 1150 1000 1350
Text Label 1000 1350 1    60   ~ 0
GND
Text Label 1000 700  1    60   ~ 0
VCC
Text Label 3450 1900 0    60   ~ 0
PIO0_14
Text Label 3450 2000 0    60   ~ 0
PIO0_0
Text Label 3450 2100 0    60   ~ 0
AVCC
Text Label 3450 2200 0    60   ~ 0
AGND
Text Label 3450 2300 0    60   ~ 0
VCC
Text Label 3450 2400 0    60   ~ 0
GND
Text Label 3450 2500 0    60   ~ 0
PIO0_8
Text Label 3450 2600 0    60   ~ 0
PIO0_9
Text Label 3450 2700 0    60   ~ 0
PIO0_1
Text Label 3450 2800 0    60   ~ 0
PIO0_15
Text Label 1100 1900 0    60   ~ 0
PIO0_23
Text Label 1100 2000 0    60   ~ 0
PIO0_17
Text Label 1100 2100 0    60   ~ 0
PIO0_13
Text Label 1100 2200 0    60   ~ 0
PIO0_12
Text Label 1100 2300 0    60   ~ 0
PIO0_5
Text Label 1100 2400 0    60   ~ 0
PIO0_4
Text Label 1100 2500 0    60   ~ 0
PIO0_3
Text Label 1100 2600 0    60   ~ 0
PIO0_2
Text Label 1100 2700 0    60   ~ 0
PIO0_11
Text Label 1100 2800 0    60   ~ 0
PIO0_10
$Comp
L C C2
U 1 1 58D17C4B
P 750 1000
F 0 "C2" H 775 1100 50  0000 L CNN
F 1 "10n" H 775 900 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 788 850 50  0001 C CNN
F 3 "" H 750 1000 50  0000 C CNN
	1    750  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  850  750  800 
Wire Wire Line
	750  800  1200 800 
Connection ~ 1000 800 
Wire Wire Line
	750  1150 750  1200
Wire Wire Line
	750  1200 1200 1200
Connection ~ 1000 1200
$Comp
L C C3
U 1 1 58D17FF1
P 1700 1000
F 0 "C3" H 1725 1100 50  0000 L CNN
F 1 "100n" H 1725 900 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 1738 850 50  0001 C CNN
F 3 "" H 1700 1000 50  0000 C CNN
	1    1700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 700  1700 850 
Wire Wire Line
	1700 1150 1700 1350
Text Label 1700 1350 1    60   ~ 0
AGND
Text Label 1700 700  1    60   ~ 0
AVCC
$Comp
L C C4
U 1 1 58D18098
P 2050 1000
F 0 "C4" H 2075 1100 50  0000 L CNN
F 1 "10u" H 2075 900 50  0000 L CNN
F 2 "SquantorRcl:C_0805" H 2088 850 50  0001 C CNN
F 3 "" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 800  2050 850 
Wire Wire Line
	1500 800  2050 800 
Connection ~ 1700 800 
Wire Wire Line
	2050 1200 2050 1150
Wire Wire Line
	1500 1200 2050 1200
Connection ~ 1700 1200
$Comp
L R R2
U 1 1 58D18208
P 1350 1200
F 0 "R2" V 1430 1200 50  0000 C CNN
F 1 "0" V 1350 1200 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1280 1200 50  0001 C CNN
F 3 "" H 1350 1200 50  0001 C CNN
	1    1350 1200
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58D1824F
P 1350 800
F 0 "R1" V 1430 800 50  0000 C CNN
F 1 "0" V 1350 800 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 1280 800 50  0001 C CNN
F 3 "" H 1350 800 50  0001 C CNN
	1    1350 800 
	0    1    1    0   
$EndComp
$Comp
L JTAG_2X05 J3
U 1 1 58D19614
P 3450 1200
F 0 "J3" H 3450 1550 60  0000 C CNN
F 1 "JTAG_2X05" H 3450 850 60  0000 C CNN
F 2 "SquantorConnectors:Header-0127-2X05-SMD" H 3450 1350 60  0001 C CNN
F 3 "" H 3450 1350 60  0001 C CNN
	1    3450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1000 4300 1000
Wire Wire Line
	3950 1100 4150 1100
Wire Wire Line
	4150 1100 4150 1400
Wire Wire Line
	3950 1400 4300 1400
Connection ~ 4150 1400
Wire Wire Line
	3950 1200 4150 1200
Connection ~ 4150 1200
Text Label 4300 1000 0    60   ~ 0
VCC
Text Label 4300 1400 0    60   ~ 0
GND
Wire Wire Line
	2400 1000 2950 1000
Text Label 2400 1000 0    60   ~ 0
PIO0_2
Wire Wire Line
	2400 1100 2950 1100
Text Label 2400 1100 0    60   ~ 0
PIO0_3
$Comp
L R R6
U 1 1 58D1A649
P 3000 750
F 0 "R6" V 3080 750 50  0000 C CNN
F 1 "10K" V 3000 750 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 2930 750 50  0001 C CNN
F 3 "" H 3000 750 50  0001 C CNN
	1    3000 750 
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 58D1A6AE
P 3000 600
F 0 "R5" V 3080 600 50  0000 C CNN
F 1 "10K" V 3000 600 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 2930 600 50  0001 C CNN
F 3 "" H 3000 600 50  0001 C CNN
	1    3000 600 
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 600  3350 600 
Wire Wire Line
	3150 750  3350 750 
Text Label 3200 600  0    60   ~ 0
VCC
Text Label 3200 750  0    60   ~ 0
GND
Wire Wire Line
	2850 750  2800 750 
Wire Wire Line
	2800 750  2800 1100
Connection ~ 2800 1100
Wire Wire Line
	2850 600  2750 600 
Wire Wire Line
	2750 600  2750 1000
Connection ~ 2750 1000
Wire Wire Line
	2950 1400 2400 1400
Text Label 2400 1400 0    60   ~ 0
PIO0_5
$Comp
L 2pin_tact_switch S1
U 1 1 58D1B11C
P 2850 3350
F 0 "S1" H 2850 3600 60  0000 C CNN
F 1 "2pin_tact_switch" H 2850 3250 60  0000 C CNN
F 2 "SquantorButtons:TD-85XU" H 2850 3350 60  0001 C CNN
F 3 "" H 2850 3350 60  0001 C CNN
	1    2850 3350
	1    0    0    -1  
$EndComp
$Comp
L 2pin_tact_switch S2
U 1 1 58D1B1A1
P 2850 3800
F 0 "S2" H 2850 4050 60  0000 C CNN
F 1 "2pin_tact_switch" H 2850 3700 60  0000 C CNN
F 2 "SquantorButtons:TD-85XU" H 2850 3800 60  0001 C CNN
F 3 "" H 2850 3800 60  0001 C CNN
	1    2850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3350 3250 3350
Wire Wire Line
	3100 3800 3250 3800
Text Label 3250 3350 0    60   ~ 0
GND
Text Label 3250 3800 0    60   ~ 0
GND
Wire Wire Line
	1700 3350 2600 3350
Wire Wire Line
	1700 3800 2600 3800
$Comp
L R R4
U 1 1 58D1C06B
P 2300 3650
F 0 "R4" V 2380 3650 50  0000 C CNN
F 1 "10k" V 2300 3650 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 2230 3650 50  0001 C CNN
F 3 "" H 2300 3650 50  0001 C CNN
	1    2300 3650
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58D1C0F0
P 2300 3200
F 0 "R3" V 2380 3200 50  0000 C CNN
F 1 "100k" V 2300 3200 50  0000 C CNN
F 2 "SquantorRcl:R_0603_hand" V 2230 3200 50  0001 C CNN
F 3 "" H 2300 3200 50  0001 C CNN
	1    2300 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3200 2100 3200
Wire Wire Line
	2100 3200 2100 3350
Connection ~ 2100 3350
Wire Wire Line
	2150 3650 2100 3650
Wire Wire Line
	2100 3650 2100 3800
Connection ~ 2100 3800
Wire Wire Line
	2450 3650 2500 3650
Wire Wire Line
	2450 3200 2500 3200
Text Label 2500 3200 0    60   ~ 0
VCC
Text Label 2500 3650 0    60   ~ 0
VCC
Text Label 1700 3350 0    60   ~ 0
PIO0_5
Text Label 1700 3800 0    60   ~ 0
PIO0_12
$EndSCHEMATC
