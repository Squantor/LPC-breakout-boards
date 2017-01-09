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
P 4400 2750
F 0 "C1" H 4425 2850 50  0000 L CNN
F 1 "C" H 4425 2650 50  0000 L CNN
F 2 "SquantorRcl:C_0603" H 4438 2600 50  0001 C CNN
F 3 "" H 4400 2750 50  0000 C CNN
	1    4400 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2750 4050 2750
Wire Wire Line
	4550 2750 4750 2750
Text Label 4600 2750 0    60   ~ 0
VCC
Text Label 4050 2750 0    60   ~ 0
GND
$Comp
L LPC824M201JHI33 M1
U 1 1 58740BAD
P 4450 3900
F 0 "M1" H 3850 5000 45  0000 L BNN
F 1 "LPC824M201JHI33" H 3850 2800 45  0000 L BNN
F 2 "SquantorIC:SOT617-3" H 4480 4050 20  0001 C CNN
F 3 "" H 4450 3900 60  0000 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4900 4450 5200
Text Label 4450 5200 1    60   ~ 0
GND
$EndSCHEMATC
