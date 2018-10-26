EESchema Schematic File Version 4
LIBS:LPC82X_JHI33-cache
EELAYER 26 0
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
L SquantorLabels:VYYYYMMDD N2
U 1 1 5A1357A5
P 850 7700
F 0 "N2" H 850 7800 60  0000 C CNN
F 1 "20181026" H 850 7700 60  0000 C CNN
F 2 "SquantorLabels:Label_version" H 850 7700 60  0001 C CNN
F 3 "" H 850 7700 60  0001 C CNN
	1    850  7700
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:OHWLOGO N1
U 1 1 5A135869
P 850 7350
F 0 "N1" H 850 7500 60  0000 C CNN
F 1 "OHWLOGO" H 850 7200 60  0000 C CNN
F 2 "Symbols:OSHW-Symbol_6.7x6mm_SilkScreen" H 850 7350 60  0001 C CNN
F 3 "" H 850 7350 60  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
$Comp
L SquantorNxp:LPC824M201JHI33 U1
U 1 1 5BD2C0FE
P 10950 4750
F 0 "U1" H 11127 4792 45  0000 L CNN
F 1 "LPC824M201JHI33" H 11127 4708 45  0000 L CNN
F 2 "SquantorIC:SOT617-3" H 11500 3850 20  0001 C CNN
F 3 "" H 10300 4650 60  0000 C CNN
	1    10950 4750
	1    0    0    -1  
$EndComp
$Comp
L SquantorNxp:LPC824M201JHI33 U1
U 2 1 5BD2C2D1
P 10500 1450
F 0 "U1" H 11219 1492 45  0000 L CNN
F 1 "LPC824M201JHI33" H 11219 1408 45  0000 L CNN
F 2 "SquantorIC:SOT617-3" H 11050 550 20  0001 C CNN
F 3 "" H 9850 1350 60  0000 C CNN
	2    10500 1450
	1    0    0    -1  
$EndComp
$Comp
L SquantorNxp:LPC824M201JHI33 U1
U 3 1 5BD2C34E
P 10550 3100
F 0 "U1" H 11169 3142 45  0000 L CNN
F 1 "LPC824M201JHI33" H 11169 3058 45  0000 L CNN
F 2 "SquantorIC:SOT617-3" H 11100 2200 20  0001 C CNN
F 3 "" H 9900 3000 60  0000 C CNN
	3    10550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BD2C78F
P 10450 5000
F 0 "C?" H 10565 5046 50  0000 L CNN
F 1 "100n" H 10565 4955 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 10488 4850 50  0001 C CNN
F 3 "~" H 10450 5000 50  0001 C CNN
	1    10450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BD2C956
P 10150 5000
F 0 "C?" H 10265 5046 50  0000 L CNN
F 1 "1u" H 10265 4955 50  0000 L CNN
F 2 "SquantorRcl:C_0805" H 10188 4850 50  0001 C CNN
F 3 "~" H 10150 5000 50  0001 C CNN
	1    10150 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5BD2CA8D
P 10000 4800
F 0 "FB?" V 9763 4800 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 9854 4800 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 9930 4800 50  0001 C CNN
F 3 "~" H 10000 4800 50  0001 C CNN
	1    10000 4800
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5BD2CAEC
P 10000 5200
F 0 "FB?" V 9763 5200 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 9854 5200 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 9930 5200 50  0001 C CNN
F 3 "~" H 10000 5200 50  0001 C CNN
	1    10000 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 4800 10150 4800
Wire Wire Line
	10700 4900 10650 4900
Wire Wire Line
	10650 4900 10650 5200
Wire Wire Line
	10650 5200 10450 5200
Wire Wire Line
	10150 4850 10150 4800
Connection ~ 10150 4800
Wire Wire Line
	10150 4800 10450 4800
Wire Wire Line
	10150 5150 10150 5200
Connection ~ 10150 5200
Wire Wire Line
	10150 5200 10100 5200
Wire Wire Line
	10450 5200 10450 5150
Connection ~ 10450 5200
Wire Wire Line
	10450 5200 10150 5200
Wire Wire Line
	10450 4850 10450 4800
Connection ~ 10450 4800
Wire Wire Line
	10450 4800 10700 4800
$Comp
L power:VSS #PWR?
U 1 1 5BD2CC6A
P 9850 5200
F 0 "#PWR?" H 9850 5050 50  0001 C CNN
F 1 "VSS" V 9868 5328 50  0000 L CNN
F 2 "" H 9850 5200 50  0001 C CNN
F 3 "" H 9850 5200 50  0001 C CNN
	1    9850 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD2CDC5
P 9850 4800
F 0 "#PWR?" H 9850 4650 50  0001 C CNN
F 1 "VDD" V 9868 4927 50  0000 L CNN
F 2 "" H 9850 4800 50  0001 C CNN
F 3 "" H 9850 4800 50  0001 C CNN
	1    9850 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5BD2CE0D
P 10450 4500
F 0 "C?" H 10565 4546 50  0000 L CNN
F 1 "100n" H 10565 4455 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 10488 4350 50  0001 C CNN
F 3 "~" H 10450 4500 50  0001 C CNN
	1    10450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BD2CE41
P 10150 4500
F 0 "C?" H 10265 4546 50  0000 L CNN
F 1 "1u" H 10265 4455 50  0000 L CNN
F 2 "SquantorRcl:C_0805" H 10188 4350 50  0001 C CNN
F 3 "~" H 10150 4500 50  0001 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5BD2CE7B
P 10000 4300
F 0 "FB?" V 9763 4300 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 9854 4300 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 9930 4300 50  0001 C CNN
F 3 "~" H 10000 4300 50  0001 C CNN
	1    10000 4300
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5BD2CEDF
P 9850 4700
F 0 "#PWR?" H 9850 4550 50  0001 C CNN
F 1 "VSS" V 9868 4828 50  0000 L CNN
F 2 "" H 9850 4700 50  0001 C CNN
F 3 "" H 9850 4700 50  0001 C CNN
	1    9850 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD2CF02
P 9850 4300
F 0 "#PWR?" H 9850 4150 50  0001 C CNN
F 1 "VDD" V 9868 4427 50  0000 L CNN
F 2 "" H 9850 4300 50  0001 C CNN
F 3 "" H 9850 4300 50  0001 C CNN
	1    9850 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10700 4600 10650 4600
Wire Wire Line
	10650 4600 10650 4300
Wire Wire Line
	10650 4300 10450 4300
Wire Wire Line
	9900 4300 9850 4300
Wire Wire Line
	10150 4350 10150 4300
Connection ~ 10150 4300
Wire Wire Line
	10150 4300 10100 4300
Wire Wire Line
	10450 4350 10450 4300
Connection ~ 10450 4300
Wire Wire Line
	10450 4300 10150 4300
Wire Wire Line
	10700 4700 10450 4700
Wire Wire Line
	10150 4650 10150 4700
Connection ~ 10150 4700
Wire Wire Line
	10150 4700 9850 4700
Wire Wire Line
	10450 4650 10450 4700
Connection ~ 10450 4700
Wire Wire Line
	10450 4700 10150 4700
Wire Wire Line
	9900 4800 9850 4800
Wire Wire Line
	9900 5200 9850 5200
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J?
U 1 1 5BD2E6A6
P 1350 1150
F 0 "J?" H 1400 1767 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 1400 1676 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 1350 1150 50  0001 C CNN
F 3 "~" H 1350 1150 50  0001 C CNN
	1    1350 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J?
U 1 1 5BD2E711
P 1350 2300
F 0 "J?" H 1400 2917 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 1400 2826 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H010" H 1350 2300 50  0001 C CNN
F 3 "~" H 1350 2300 50  0001 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD2E947
P 1100 750
F 0 "#PWR?" H 1100 600 50  0001 C CNN
F 1 "VDD" V 1118 877 50  0000 L CNN
F 2 "" H 1100 750 50  0001 C CNN
F 3 "" H 1100 750 50  0001 C CNN
	1    1100 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD2EA16
P 1700 750
F 0 "#PWR?" H 1700 600 50  0001 C CNN
F 1 "VDD" V 1717 878 50  0000 L CNN
F 2 "" H 1700 750 50  0001 C CNN
F 3 "" H 1700 750 50  0001 C CNN
	1    1700 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 750  1150 750 
Wire Wire Line
	1700 750  1650 750 
$Comp
L power:VSS #PWR?
U 1 1 5BD2F356
P 1100 1900
F 0 "#PWR?" H 1100 1750 50  0001 C CNN
F 1 "VSS" V 1118 2028 50  0000 L CNN
F 2 "" H 1100 1900 50  0001 C CNN
F 3 "" H 1100 1900 50  0001 C CNN
	1    1100 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5BD2F409
P 1700 1900
F 0 "#PWR?" H 1700 1750 50  0001 C CNN
F 1 "VSS" V 1717 2028 50  0000 L CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1900 1150 1900
Wire Wire Line
	1650 1900 1700 1900
$Comp
L SquantorConnectors:JTAG_2X05 J?
U 1 1 5BD303CB
P 2300 3600
F 0 "J?" H 2300 4087 60  0000 C CNN
F 1 "JTAG_2X05" H 2300 3981 60  0000 C CNN
F 2 "" H 2300 3750 60  0001 C CNN
F 3 "" H 2300 3750 60  0001 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5BD30506
P 2850 3850
F 0 "#PWR?" H 2850 3700 50  0001 C CNN
F 1 "VSS" H 2868 4023 50  0000 C CNN
F 2 "" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
	1    2850 3850
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD3053E
P 2850 3350
F 0 "#PWR?" H 2850 3200 50  0001 C CNN
F 1 "VDD" H 2867 3523 50  0000 C CNN
F 2 "" H 2850 3350 50  0001 C CNN
F 3 "" H 2850 3350 50  0001 C CNN
	1    2850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3500 2850 3500
Wire Wire Line
	2850 3500 2850 3600
Wire Wire Line
	2800 3800 2850 3800
Connection ~ 2850 3800
Wire Wire Line
	2850 3800 2850 3850
Wire Wire Line
	2800 3600 2850 3600
Connection ~ 2850 3600
Wire Wire Line
	2850 3600 2850 3800
Wire Wire Line
	2800 3400 2850 3400
Wire Wire Line
	2850 3400 2850 3350
$Comp
L Device:R R?
U 1 1 5BD32184
P 1600 3400
F 0 "R?" V 1550 3250 50  0000 C CNN
F 1 "100" V 1600 3400 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1530 3400 50  0001 C CNN
F 3 "~" H 1600 3400 50  0001 C CNN
	1    1600 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BD3223D
P 1600 3500
F 0 "R?" V 1550 3350 50  0000 C CNN
F 1 "100" V 1600 3500 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1530 3500 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
	1    1600 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 3400 1750 3400
Wire Wire Line
	1750 3500 1800 3500
Wire Wire Line
	1450 3500 1400 3500
Wire Wire Line
	1450 3400 1400 3400
Text Label 1400 3400 2    50   ~ 0
PIO0_2
Text Label 1400 3500 2    50   ~ 0
PIO0_3
$Comp
L Device:R R?
U 1 1 5BD34D15
P 1600 3800
F 0 "R?" V 1550 3650 50  0000 C CNN
F 1 "100" V 1600 3800 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1530 3800 50  0001 C CNN
F 3 "~" H 1600 3800 50  0001 C CNN
	1    1600 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 3800 1750 3800
Wire Wire Line
	1450 3800 1400 3800
Text Label 1400 3800 2    50   ~ 0
RESET
$Comp
L SquantorButtons:2pin_tact_switch S?
U 1 1 5BD368FA
P 1850 4600
F 0 "S?" H 1600 4700 60  0000 C CNN
F 1 "2pin_tact_switch" H 1850 4831 60  0000 C CNN
F 2 "SquantorButtons:TD-85XU" H 1850 4600 60  0001 C CNN
F 3 "" H 1850 4600 60  0001 C CNN
	1    1850 4600
	1    0    0    -1  
$EndComp
$Comp
L SquantorButtons:2pin_tact_switch S?
U 1 1 5BD36EE3
P 1850 5100
F 0 "S?" H 1600 5200 60  0000 C CNN
F 1 "2pin_tact_switch" H 1850 5331 60  0000 C CNN
F 2 "SquantorButtons:TD-85XU" H 1850 5100 60  0001 C CNN
F 3 "" H 1850 5100 60  0001 C CNN
	1    1850 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR?
U 1 1 5BD37111
P 2150 5100
F 0 "#PWR?" H 2150 4950 50  0001 C CNN
F 1 "VSS" V 2167 5228 50  0000 L CNN
F 2 "" H 2150 5100 50  0001 C CNN
F 3 "" H 2150 5100 50  0001 C CNN
	1    2150 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 4600 1550 4600
Wire Wire Line
	1500 5100 1550 5100
Wire Wire Line
	2100 5100 2150 5100
$Comp
L power:VSS #PWR?
U 1 1 5BD3B4EF
P 2150 4600
F 0 "#PWR?" H 2150 4450 50  0001 C CNN
F 1 "VSS" V 2167 4728 50  0000 L CNN
F 2 "" H 2150 4600 50  0001 C CNN
F 3 "" H 2150 4600 50  0001 C CNN
	1    2150 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4600 2150 4600
$Comp
L power:VDD #PWR?
U 1 1 5BD3C37E
P 2200 4300
F 0 "#PWR?" H 2200 4150 50  0001 C CNN
F 1 "VDD" V 2217 4428 50  0000 L CNN
F 2 "" H 2200 4300 50  0001 C CNN
F 3 "" H 2200 4300 50  0001 C CNN
	1    2200 4300
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD3C3F2
P 2200 4800
F 0 "#PWR?" H 2200 4650 50  0001 C CNN
F 1 "VDD" V 2217 4928 50  0000 L CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BD3C425
P 1850 4300
F 0 "R?" V 1800 4150 50  0000 C CNN
F 1 "47K" V 1850 4300 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1780 4300 50  0001 C CNN
F 3 "~" H 1850 4300 50  0001 C CNN
	1    1850 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BD3C4B4
P 1850 4800
F 0 "R?" V 1800 4650 50  0000 C CNN
F 1 "47K" V 1850 4800 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 1780 4800 50  0001 C CNN
F 3 "~" H 1850 4800 50  0001 C CNN
	1    1850 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4300 2000 4300
Wire Wire Line
	1700 4300 1550 4300
Wire Wire Line
	1550 4300 1550 4600
Connection ~ 1550 4600
Wire Wire Line
	1550 4600 1500 4600
Wire Wire Line
	2200 4800 2000 4800
Wire Wire Line
	1700 4800 1550 4800
Wire Wire Line
	1550 4800 1550 5100
Connection ~ 1550 5100
Wire Wire Line
	1550 5100 1600 5100
Text Label 1500 4600 2    50   ~ 0
RESET
Text Label 1500 5100 2    50   ~ 0
PIO0_12
Text Label 9800 1200 2    50   ~ 0
RESET
Wire Wire Line
	9850 1200 9800 1200
Wire Wire Line
	9850 1000 9800 1000
Wire Wire Line
	9850 900  9800 900 
Text Label 9800 1900 2    50   ~ 0
PIO0_12
Wire Wire Line
	9850 1900 9800 1900
Wire Wire Line
	9850 700  9800 700 
Wire Wire Line
	9850 800  9800 800 
Wire Wire Line
	9850 1100 9800 1100
Wire Wire Line
	9850 1300 9800 1300
Wire Wire Line
	9850 1400 9800 1400
Wire Wire Line
	9850 1500 9800 1500
Wire Wire Line
	9800 1600 9850 1600
Wire Wire Line
	9850 1700 9800 1700
Wire Wire Line
	9850 1800 9800 1800
Wire Wire Line
	9850 2000 9800 2000
Wire Wire Line
	9850 2100 9800 2100
Wire Wire Line
	9850 2200 9800 2200
Wire Wire Line
	9950 2500 9900 2500
Wire Wire Line
	9950 2600 9900 2600
Wire Wire Line
	9950 2700 9900 2700
Wire Wire Line
	9950 2800 9900 2800
Wire Wire Line
	9950 2900 9900 2900
Wire Wire Line
	9950 3000 9900 3000
Wire Wire Line
	9950 3100 9900 3100
Wire Wire Line
	9950 3200 9900 3200
Wire Wire Line
	9950 3300 9900 3300
Wire Wire Line
	9950 3400 9900 3400
Wire Wire Line
	9950 3500 9900 3500
Wire Wire Line
	9950 3600 9900 3600
Wire Wire Line
	9950 3700 9900 3700
Text Label 9800 700  2    50   ~ 0
PIO0_0
Text Label 9800 800  2    50   ~ 0
PIO0_1
Text Label 9800 1100 2    50   ~ 0
PIO0_4
Text Label 9800 900  2    50   ~ 0
PIO0_2
Text Label 9800 1000 2    50   ~ 0
PIO0_3
Text Label 9800 1300 2    50   ~ 0
PIO0_6
Text Label 9800 1400 2    50   ~ 0
PIO0_7
Text Label 9800 1500 2    50   ~ 0
PIO0_8
Text Label 9800 1600 2    50   ~ 0
PIO0_9
Text Label 9800 1700 2    50   ~ 0
PIO0_10
Text Label 9800 1800 2    50   ~ 0
PIO0_11
Text Label 9800 2000 2    50   ~ 0
PIO0_13
Text Label 9800 2100 2    50   ~ 0
PIO0_14
Text Label 9800 2200 2    50   ~ 0
PIO0_15
Text Label 9900 2500 2    50   ~ 0
PIO0_16
Text Label 9900 2600 2    50   ~ 0
PIO0_17
Text Label 9900 2700 2    50   ~ 0
PIO0_18
Text Label 9900 2800 2    50   ~ 0
PIO0_19
Text Label 9900 2900 2    50   ~ 0
PIO0_20
Text Label 9900 3000 2    50   ~ 0
PIO0_21
Text Label 9900 3100 2    50   ~ 0
PIO0_22
Text Label 9900 3200 2    50   ~ 0
PIO0_23
Text Label 9900 3300 2    50   ~ 0
PIO0_24
Text Label 9900 3400 2    50   ~ 0
PIO0_25
Text Label 9900 3500 2    50   ~ 0
PIO0_26
Text Label 9900 3600 2    50   ~ 0
PIO0_27
Text Label 9900 3700 2    50   ~ 0
PIO0_28
$EndSCHEMATC
