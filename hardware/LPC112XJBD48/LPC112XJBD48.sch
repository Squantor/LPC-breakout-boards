EESchema Schematic File Version 4
LIBS:LPC112XJBD48-cache
EELAYER 29 0
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
P 4000 1650
F 0 "N2" H 4000 1750 60  0000 C CNN
F 1 "20190512" H 4000 1650 60  0000 C CNN
F 2 "SquantorLabels:Label_version" H 4000 1650 60  0001 C CNN
F 3 "" H 4000 1650 60  0001 C CNN
	1    4000 1650
	1    0    0    -1  
$EndComp
$Comp
L SquantorLabels:OHWLOGO N1
U 1 1 5A135869
P 4000 1300
F 0 "N1" H 4000 1450 60  0000 C CNN
F 1 "OHWLOGO" H 4000 1150 60  0000 C CNN
F 2 "Symbols:OSHW-Symbol_6.7x6mm_SilkScreen" H 4000 1300 60  0001 C CNN
F 3 "" H 4000 1300 60  0001 C CNN
	1    4000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BD2C78F
P 9000 5900
F 0 "C6" H 8900 6000 50  0000 L CNN
F 1 "100n" H 8800 5800 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 9038 5750 50  0001 C CNN
F 3 "~" H 9000 5900 50  0001 C CNN
	1    9000 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BD2C956
P 8750 5900
F 0 "C3" H 8650 6000 50  0000 L CNN
F 1 "1u" H 8650 5800 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 8788 5750 50  0001 C CNN
F 3 "~" H 8750 5900 50  0001 C CNN
	1    8750 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5BD2CA8D
P 8600 5700
F 0 "FB2" V 8550 5600 50  0000 C CNN
F 1 "600" V 8550 5850 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 8530 5700 50  0001 C CNN
F 3 "~" H 8600 5700 50  0001 C CNN
	1    8600 5700
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5BD2CAEC
P 8600 6100
F 0 "FB3" V 8650 5950 50  0000 C CNN
F 1 "600" V 8650 6200 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 8530 6100 50  0001 C CNN
F 3 "~" H 8600 6100 50  0001 C CNN
	1    8600 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5700 8750 5700
Wire Wire Line
	8750 5750 8750 5700
Connection ~ 8750 5700
Wire Wire Line
	8750 6050 8750 6100
Connection ~ 8750 6100
Wire Wire Line
	8750 6100 8700 6100
$Comp
L power:VSS #PWR0101
U 1 1 5BD2CC6A
P 7950 6100
F 0 "#PWR0101" H 7950 5950 50  0001 C CNN
F 1 "VSS" V 7968 6228 50  0000 L CNN
F 2 "" H 7950 6100 50  0001 C CNN
F 3 "" H 7950 6100 50  0001 C CNN
	1    7950 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5BD2CE0D
P 9000 5400
F 0 "C5" H 8900 5500 50  0000 L CNN
F 1 "100n" H 8800 5300 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 9038 5250 50  0001 C CNN
F 3 "~" H 9000 5400 50  0001 C CNN
	1    9000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5BD2CE7B
P 8600 5200
F 0 "FB1" V 8363 5200 50  0000 C CNN
F 1 "600" V 8454 5200 50  0000 C CNN
F 2 "SquantorRcl:C_0402" V 8530 5200 50  0001 C CNN
F 3 "~" H 8600 5200 50  0001 C CNN
	1    8600 5200
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR0103
U 1 1 5BD2CEDF
P 7950 5600
F 0 "#PWR0103" H 7950 5450 50  0001 C CNN
F 1 "VSS" V 7968 5728 50  0000 L CNN
F 2 "" H 7950 5600 50  0001 C CNN
F 3 "" H 7950 5600 50  0001 C CNN
	1    7950 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 5200 8450 5200
Wire Wire Line
	8750 5250 8750 5200
Connection ~ 8750 5200
Wire Wire Line
	8750 5550 8750 5600
Wire Wire Line
	8500 5700 8450 5700
Wire Wire Line
	8500 6100 7950 6100
$Comp
L power:VDD #PWR0105
U 1 1 5BD2E947
P 7500 800
F 0 "#PWR0105" H 7500 650 50  0001 C CNN
F 1 "VDD" V 7518 927 50  0000 L CNN
F 2 "" H 7500 800 50  0001 C CNN
F 3 "" H 7500 800 50  0001 C CNN
	1    7500 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0106
U 1 1 5BD2EA16
P 8100 800
F 0 "#PWR0106" H 8100 650 50  0001 C CNN
F 1 "VDD" V 8117 928 50  0000 L CNN
F 2 "" H 8100 800 50  0001 C CNN
F 3 "" H 8100 800 50  0001 C CNN
	1    8100 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 800  7550 800 
Wire Wire Line
	8100 800  8050 800 
$Comp
L power:VSS #PWR0107
U 1 1 5BD2F356
P 7500 2700
F 0 "#PWR0107" H 7500 2550 50  0001 C CNN
F 1 "VSS" V 7518 2828 50  0000 L CNN
F 2 "" H 7500 2700 50  0001 C CNN
F 3 "" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0108
U 1 1 5BD2F409
P 8100 2700
F 0 "#PWR0108" H 8100 2550 50  0001 C CNN
F 1 "VSS" V 8117 2828 50  0000 L CNN
F 2 "" H 8100 2700 50  0001 C CNN
F 3 "" H 8100 2700 50  0001 C CNN
	1    8100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2700 7550 2700
Wire Wire Line
	8050 2700 8100 2700
$Comp
L SquantorConnectors:JTAG_2X05 J3
U 1 1 5BD303CB
P 4450 5150
F 0 "J3" H 4450 5637 60  0000 C CNN
F 1 "JTAG_2X05" H 4450 5531 60  0000 C CNN
F 2 "SquantorConnectors:Header-0127-2X05-H006" H 4450 5300 60  0001 C CNN
F 3 "" H 4450 5300 60  0001 C CNN
	1    4450 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0109
U 1 1 5BD30506
P 5000 5400
F 0 "#PWR0109" H 5000 5250 50  0001 C CNN
F 1 "VSS" H 5018 5573 50  0000 C CNN
F 2 "" H 5000 5400 50  0001 C CNN
F 3 "" H 5000 5400 50  0001 C CNN
	1    5000 5400
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0110
U 1 1 5BD3053E
P 5000 4900
F 0 "#PWR0110" H 5000 4750 50  0001 C CNN
F 1 "VDD" H 5017 5073 50  0000 C CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "" H 5000 4900 50  0001 C CNN
	1    5000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5050 5000 5050
Wire Wire Line
	5000 5050 5000 5150
Wire Wire Line
	4950 5350 5000 5350
Connection ~ 5000 5350
Wire Wire Line
	5000 5350 5000 5400
Wire Wire Line
	4950 5150 5000 5150
Connection ~ 5000 5150
Wire Wire Line
	5000 5150 5000 5350
Wire Wire Line
	4950 4950 5000 4950
Wire Wire Line
	5000 4950 5000 4900
$Comp
L Device:R R1
U 1 1 5BD32184
P 3750 4950
F 0 "R1" V 3700 4800 50  0000 C CNN
F 1 "100" V 3750 4950 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 4950 50  0001 C CNN
F 3 "~" H 3750 4950 50  0001 C CNN
	1    3750 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BD3223D
P 3750 5050
F 0 "R2" V 3700 4900 50  0000 C CNN
F 1 "100" V 3750 5050 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 5050 50  0001 C CNN
F 3 "~" H 3750 5050 50  0001 C CNN
	1    3750 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 4950 3900 4950
Wire Wire Line
	3900 5050 3950 5050
Wire Wire Line
	3600 5050 3500 5050
Wire Wire Line
	3600 4950 3500 4950
$Comp
L Device:R R3
U 1 1 5BD34D15
P 3750 5350
F 0 "R3" V 3700 5200 50  0000 C CNN
F 1 "100" V 3750 5350 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 5350 50  0001 C CNN
F 3 "~" H 3750 5350 50  0001 C CNN
	1    3750 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5350 3900 5350
Wire Wire Line
	3600 5350 3500 5350
Text Label 3500 5350 2    50   ~ 0
RESET
Wire Wire Line
	7550 2100 7500 2100
Wire Wire Line
	8050 2100 8100 2100
$Comp
L power:VSS #PWR0115
U 1 1 5BDB8CCF
P 7500 2100
F 0 "#PWR0115" H 7500 1950 50  0001 C CNN
F 1 "VSS" V 7518 2228 50  0000 L CNN
F 2 "" H 7500 2100 50  0001 C CNN
F 3 "" H 7500 2100 50  0001 C CNN
	1    7500 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0116
U 1 1 5BDB8D06
P 8100 2100
F 0 "#PWR0116" H 8100 1950 50  0001 C CNN
F 1 "VSS" V 8117 2228 50  0000 L CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 4000 7500 4000
Wire Wire Line
	8050 4000 8100 4000
$Comp
L power:VDD #PWR0117
U 1 1 5BE0F6C3
P 8100 4000
F 0 "#PWR0117" H 8100 3850 50  0001 C CNN
F 1 "VDD" V 8117 4128 50  0000 L CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0118
U 1 1 5BE0F73C
P 7500 4000
F 0 "#PWR0118" H 7500 3850 50  0001 C CNN
F 1 "VDD" V 7518 4127 50  0000 L CNN
F 2 "" H 7500 4000 50  0001 C CNN
F 3 "" H 7500 4000 50  0001 C CNN
	1    7500 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BE10538
P 10900 5800
F 0 "C4" H 11015 5846 50  0000 L CNN
F 1 "18p" H 11015 5755 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 10938 5650 50  0001 C CNN
F 3 "~" H 10900 5800 50  0001 C CNN
	1    10900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BE10822
P 10500 5800
F 0 "C1" H 10615 5846 50  0000 L CNN
F 1 "18p" H 10615 5755 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 10538 5650 50  0001 C CNN
F 3 "~" H 10500 5800 50  0001 C CNN
	1    10500 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0119
U 1 1 5BE1086A
P 10500 6000
F 0 "#PWR0119" H 10500 5850 50  0001 C CNN
F 1 "VSS" H 10518 6173 50  0000 C CNN
F 2 "" H 10500 6000 50  0001 C CNN
F 3 "" H 10500 6000 50  0001 C CNN
	1    10500 6000
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR0120
U 1 1 5BE10924
P 10900 6000
F 0 "#PWR0120" H 10900 5850 50  0001 C CNN
F 1 "VSS" H 10918 6173 50  0000 C CNN
F 2 "" H 10900 6000 50  0001 C CNN
F 3 "" H 10900 6000 50  0001 C CNN
	1    10900 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 5950 10500 6000
Wire Wire Line
	10900 5950 10900 6000
Wire Wire Line
	10550 5400 10500 5400
Wire Wire Line
	10500 5400 10500 5650
Wire Wire Line
	10850 5400 10900 5400
Wire Wire Line
	10900 5400 10900 5650
Wire Wire Line
	10500 5400 10450 5400
Connection ~ 10500 5400
Wire Wire Line
	10900 5400 10950 5400
Connection ~ 10900 5400
$Comp
L power:VSS #PWR0121
U 1 1 5BE44749
P 10700 5650
F 0 "#PWR0121" H 10700 5500 50  0001 C CNN
F 1 "VSS" H 10600 5650 50  0000 C CNN
F 2 "" H 10700 5650 50  0001 C CNN
F 3 "" H 10700 5650 50  0001 C CNN
	1    10700 5650
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR0122
U 1 1 5BE44786
P 10700 5150
F 0 "#PWR0122" H 10700 5000 50  0001 C CNN
F 1 "VSS" H 10800 5150 50  0000 C CNN
F 2 "" H 10700 5150 50  0001 C CNN
F 3 "" H 10700 5150 50  0001 C CNN
	1    10700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 5200 10700 5150
Wire Wire Line
	10700 5650 10700 5600
$Comp
L Device:R R7
U 1 1 5BECCB56
P 3750 4700
F 0 "R7" V 3700 4550 50  0000 C CNN
F 1 "100k" V 3750 4700 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 4700 50  0001 C CNN
F 3 "~" H 3750 4700 50  0001 C CNN
	1    3750 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5BECCC51
P 3750 4600
F 0 "R6" V 3700 4450 50  0000 C CNN
F 1 "100k" V 3750 4600 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 4600 50  0001 C CNN
F 3 "~" H 3750 4600 50  0001 C CNN
	1    3750 4600
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR0123
U 1 1 5BECCC9B
P 3950 4700
F 0 "#PWR0123" H 3950 4550 50  0001 C CNN
F 1 "VSS" V 3967 4828 50  0000 L CNN
F 2 "" H 3950 4700 50  0001 C CNN
F 3 "" H 3950 4700 50  0001 C CNN
	1    3950 4700
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0124
U 1 1 5BECCD37
P 3950 4600
F 0 "#PWR0124" H 3950 4450 50  0001 C CNN
F 1 "VDD" V 3967 4728 50  0000 L CNN
F 2 "" H 3950 4600 50  0001 C CNN
F 3 "" H 3950 4600 50  0001 C CNN
	1    3950 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 4700 3900 4700
Wire Wire Line
	3900 4600 3950 4600
Wire Wire Line
	3600 4700 3500 4700
Wire Wire Line
	3600 4600 3500 4600
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5BE1D5EF
P 10700 5400
F 0 "Y1" H 10500 5600 50  0000 L CNN
F 1 "12MHz" H 10950 5200 50  0000 L CNN
F 2 "SquantorCrystal:Crystal_3225_4" H 10700 5400 50  0001 C CNN
F 3 "~" H 10700 5400 50  0001 C CNN
	1    10700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5BD6A440
P 7800 4500
F 0 "C7" V 8052 4500 50  0000 C CNN
F 1 "10u" V 7961 4500 50  0000 C CNN
F 2 "SquantorRcl:C_0603" H 7838 4350 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7800 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0125
U 1 1 5BD6A894
P 7600 4500
F 0 "#PWR0125" H 7600 4350 50  0001 C CNN
F 1 "VSS" V 7617 4628 50  0000 L CNN
F 2 "" H 7600 4500 50  0001 C CNN
F 3 "" H 7600 4500 50  0001 C CNN
	1    7600 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0126
U 1 1 5BD6A935
P 8000 4500
F 0 "#PWR0126" H 8000 4350 50  0001 C CNN
F 1 "VDD" V 8017 4628 50  0000 L CNN
F 2 "" H 8000 4500 50  0001 C CNN
F 3 "" H 8000 4500 50  0001 C CNN
	1    8000 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4500 7650 4500
Wire Wire Line
	7950 4500 8000 4500
$Comp
L Device:R R4
U 1 1 5BD88002
P 3750 4500
F 0 "R4" V 3700 4350 50  0000 C CNN
F 1 "100K" V 3750 4500 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 4500 50  0001 C CNN
F 3 "~" H 3750 4500 50  0001 C CNN
	1    3750 4500
	0    1    1    0   
$EndComp
Text Label 3500 4500 2    50   ~ 0
RESET
$Comp
L power:VDD #PWR0111
U 1 1 5BD880D2
P 3950 4500
F 0 "#PWR0111" H 3950 4350 50  0001 C CNN
F 1 "VDD" V 3967 4628 50  0000 L CNN
F 2 "" H 3950 4500 50  0001 C CNN
F 3 "" H 3950 4500 50  0001 C CNN
	1    3950 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 4500 3600 4500
Wire Wire Line
	3900 4500 3950 4500
$Comp
L power:VDD #PWR0102
U 1 1 5BDA8246
P 7950 5200
F 0 "#PWR0102" H 7950 5050 50  0001 C CNN
F 1 "VDD" V 7968 5327 50  0000 L CNN
F 2 "" H 7950 5200 50  0001 C CNN
F 3 "" H 7950 5200 50  0001 C CNN
	1    7950 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 5700 8450 5200
$Comp
L SquantorSpecial:SolderJumper_2way_1conn SJ1
U 1 1 5BDC2411
P 8200 5200
F 0 "SJ1" H 8150 5100 50  0000 L CNN
F 1 "SolderJumper_2way_1conn" H 8050 5350 50  0000 L CNN
F 2 "SquantorSpecial:solder_jumper_2way_conn" H 8200 5200 50  0001 C CNN
F 3 "" H 8200 5200 50  0001 C CNN
	1    8200 5200
	-1   0    0    1   
$EndComp
$Comp
L SquantorNxp:LPC1125JBD48_303 U1
U 1 1 5C8600BA
P 9850 5650
F 0 "U1" H 9850 6250 50  0000 C CNN
F 1 "LPC1125JBD48_303" H 9850 5050 50  0000 C CNN
F 2 "SquantorIC:SOT313-2-NXP" H 9200 5550 50  0001 C CNN
F 3 "" H 9200 5550 50  0001 C CNN
	1    9850 5650
	1    0    0    -1  
$EndComp
$Comp
L SquantorNxp:LPC1125JBD48_303 U1
U 2 1 5C860201
P 10150 3550
F 0 "U1" H 10050 4800 50  0000 L CNN
F 1 "LPC1125JBD48_303" H 9800 2200 50  0000 L CNN
F 2 "SquantorIC:SOT313-2-NXP" H 9500 3450 50  0001 C CNN
F 3 "" H 9500 3450 50  0001 C CNN
	2    10150 3550
	1    0    0    -1  
$EndComp
$Comp
L SquantorNxp:LPC1125JBD48_303 U1
U 3 1 5C860303
P 10250 1350
F 0 "U1" H 10150 2150 50  0000 L CNN
F 1 "LPC1125JBD48_303" H 9850 550 50  0000 L CNN
F 2 "SquantorIC:SOT313-2-NXP" H 9600 1250 50  0001 C CNN
F 3 "" H 9600 1250 50  0001 C CNN
	3    10250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5200 8450 5200
Connection ~ 8450 5200
Wire Wire Line
	7950 5200 8000 5200
Wire Wire Line
	9400 5300 9400 5200
Wire Wire Line
	9400 5200 9450 5200
Wire Wire Line
	9400 5300 9450 5300
Wire Wire Line
	9450 5500 9400 5500
Wire Wire Line
	9400 5500 9400 5600
Connection ~ 8750 5600
Wire Wire Line
	9450 5400 9400 5400
Wire Wire Line
	9400 5400 9400 5500
Connection ~ 9400 5500
$Comp
L Device:C C2
U 1 1 5BD2CE41
P 8750 5400
F 0 "C2" H 8650 5500 50  0000 L CNN
F 1 "1u" H 8650 5300 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 8788 5250 50  0001 C CNN
F 3 "~" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C8EB85B
P 9250 5400
F 0 "C10" H 9150 5500 50  0000 L CNN
F 1 "100n" H 9050 5300 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 9288 5250 50  0001 C CNN
F 3 "~" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5600 9000 5600
Wire Wire Line
	8750 5200 9000 5200
Connection ~ 9400 5200
Wire Wire Line
	9000 5250 9000 5200
Connection ~ 9000 5200
Wire Wire Line
	9000 5200 9250 5200
Wire Wire Line
	9000 5550 9000 5600
Connection ~ 9000 5600
Wire Wire Line
	9000 5600 9250 5600
Wire Wire Line
	9250 5600 9250 5550
Connection ~ 9250 5600
Wire Wire Line
	9250 5600 9400 5600
Wire Wire Line
	9250 5250 9250 5200
Connection ~ 9250 5200
Wire Wire Line
	9250 5200 9400 5200
$Comp
L Device:C C11
U 1 1 5C915A75
P 9250 5900
F 0 "C11" H 9150 6000 50  0000 L CNN
F 1 "100n" H 9050 5800 50  0000 L CNN
F 2 "SquantorRcl:C_0402" H 9288 5750 50  0001 C CNN
F 3 "~" H 9250 5900 50  0001 C CNN
	1    9250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5800 9350 5800
Wire Wire Line
	9350 5800 9350 6100
Connection ~ 9350 6100
Wire Wire Line
	9350 6100 9450 6100
Wire Wire Line
	9250 6050 9250 6100
Connection ~ 9250 6100
Wire Wire Line
	9250 6100 9350 6100
Wire Wire Line
	9000 6050 9000 6100
Connection ~ 9000 6100
Wire Wire Line
	9000 6100 9250 6100
Wire Wire Line
	9000 5750 9000 5700
Connection ~ 9000 5700
Wire Wire Line
	9000 5700 9250 5700
Wire Wire Line
	9250 5750 9250 5700
Connection ~ 9250 5700
Wire Wire Line
	9250 5700 9400 5700
Wire Wire Line
	9450 6000 9400 6000
Wire Wire Line
	9400 6000 9400 5700
Connection ~ 9400 5700
Wire Wire Line
	9400 5700 9450 5700
Wire Wire Line
	9250 700  9200 700 
Wire Wire Line
	9250 800  9200 800 
Wire Wire Line
	9250 900  9200 900 
Wire Wire Line
	9250 1000 9200 1000
Wire Wire Line
	9100 2450 9050 2450
Wire Wire Line
	9100 3450 9050 3450
Wire Wire Line
	9100 3950 9050 3950
Text Label 9050 2450 2    50   ~ 0
RESET
Text Label 9050 3450 2    50   ~ 0
PIO0_10
Text Label 9050 3950 2    50   ~ 0
PIO1_3
Text Label 3500 5050 2    50   ~ 0
PIO0_10
Text Label 3500 4700 2    50   ~ 0
PIO0_10
Text Label 3500 4950 2    50   ~ 0
PIO1_3
Text Label 3500 4600 2    50   ~ 0
PIO1_3
Wire Wire Line
	10250 5300 10450 5300
Wire Wire Line
	10450 5300 10450 5400
Wire Wire Line
	10250 5200 10450 5200
Wire Wire Line
	10450 5200 10450 5000
Wire Wire Line
	10450 5000 10950 5000
Wire Wire Line
	10950 5000 10950 5400
Text Label 10950 5000 0    50   ~ 0
XTALIN
Text Label 10300 5300 0    50   ~ 0
XTALOUT
Wire Wire Line
	9250 1100 9200 1100
Wire Wire Line
	9250 1200 9200 1200
Wire Wire Line
	9250 1300 9200 1300
Wire Wire Line
	9250 1400 9200 1400
Wire Wire Line
	9250 1500 9200 1500
Wire Wire Line
	9250 1600 9200 1600
Wire Wire Line
	9250 1700 9200 1700
Wire Wire Line
	9250 1800 9200 1800
Wire Wire Line
	9250 1900 9200 1900
Wire Wire Line
	9250 2000 9200 2000
Wire Wire Line
	9100 2550 9050 2550
Wire Wire Line
	9100 2650 9050 2650
Wire Wire Line
	9100 2750 9050 2750
Wire Wire Line
	9100 2850 9050 2850
Wire Wire Line
	9100 2950 9050 2950
Wire Wire Line
	9100 3050 9050 3050
Wire Wire Line
	9100 3150 9050 3150
Wire Wire Line
	9100 3250 9050 3250
Wire Wire Line
	9100 3350 9050 3350
Wire Wire Line
	9100 3550 9050 3550
Wire Wire Line
	9100 3650 9050 3650
Wire Wire Line
	9100 3750 9050 3750
Wire Wire Line
	9100 3850 9050 3850
Wire Wire Line
	9100 4050 9050 4050
Wire Wire Line
	9050 4150 9100 4150
Wire Wire Line
	9100 4250 9050 4250
Wire Wire Line
	9050 4350 9100 4350
Wire Wire Line
	9100 4450 9050 4450
Wire Wire Line
	9050 4550 9100 4550
Wire Wire Line
	9100 4650 9050 4650
Wire Wire Line
	9100 4750 9050 4750
Text Label 9200 700  2    50   ~ 0
PIO2_0
Text Label 9200 800  2    50   ~ 0
PIO2_1
Text Label 9200 900  2    50   ~ 0
PIO2_2
Text Label 9200 1000 2    50   ~ 0
PIO2_3
Text Label 9200 1100 2    50   ~ 0
PIO2_4
Text Label 9200 1200 2    50   ~ 0
PIO2_5
Text Label 9200 1300 2    50   ~ 0
PIO2_6
Text Label 9200 1400 2    50   ~ 0
PIO2_7
Text Label 9200 1500 2    50   ~ 0
PIO2_8
Text Label 9200 1600 2    50   ~ 0
PIO2_9
Text Label 9200 1700 2    50   ~ 0
PIO3_0
Text Label 9200 1800 2    50   ~ 0
PIO3_3
Text Label 9200 1900 2    50   ~ 0
PIO3_4
Text Label 9200 2000 2    50   ~ 0
PIO3_5
Text Label 9050 2550 2    50   ~ 0
PIO0_1
Text Label 9050 2650 2    50   ~ 0
PIO0_2
Text Label 9050 2750 2    50   ~ 0
PIO0_3
Text Label 9050 2850 2    50   ~ 0
PIO0_4
Text Label 9050 2950 2    50   ~ 0
PIO0_5
Text Label 9050 3050 2    50   ~ 0
PIO0_6
Text Label 9050 3150 2    50   ~ 0
PIO0_7
Text Label 9050 3250 2    50   ~ 0
PIO0_8
Text Label 9050 3350 2    50   ~ 0
PIO0_9
Text Label 9050 3550 2    50   ~ 0
PIO0_11
Text Label 9050 3650 2    50   ~ 0
PIO1_0
Text Label 9050 3750 2    50   ~ 0
PIO1_1
Text Label 9050 3850 2    50   ~ 0
PIO1_2
Text Label 9050 4050 2    50   ~ 0
PIO1_4
Text Label 9050 4150 2    50   ~ 0
PIO1_5
Text Label 9050 4250 2    50   ~ 0
PIO1_6
Text Label 9050 4350 2    50   ~ 0
PIO1_7
Text Label 9050 4450 2    50   ~ 0
PIO1_8
Text Label 9050 4550 2    50   ~ 0
PIO1_9
Text Label 9050 4650 2    50   ~ 0
PIO1_10
Text Label 9050 4750 2    50   ~ 0
PIO1_11
Text Label 7500 900  2    50   ~ 0
PIO2_6
Text Label 8100 900  0    50   ~ 0
PIO2_0
Text Label 7500 1000 2    50   ~ 0
RESET
Text Label 8100 1000 0    50   ~ 0
PIO0_1
Text Label 8100 1100 0    50   ~ 0
PIO1_8
Text Label 7500 1200 2    50   ~ 0
PIO0_2
Text Label 8100 1200 0    50   ~ 0
PIO2_7
Text Label 7500 1300 2    50   ~ 0
PIO2_8
Text Label 8100 1500 0    50   ~ 0
PIO0_5
Text Label 8100 1400 0    50   ~ 0
PIO0_3
Text Label 7500 1500 2    50   ~ 0
PIO0_4
Text Label 7500 1400 2    50   ~ 0
PIO2_1
Text Label 7500 1800 2    50   ~ 0
PIO2_5
Text Label 7500 1700 2    50   ~ 0
PIO3_4
Text Label 8100 1700 0    50   ~ 0
PIO2_4
Text Label 8100 1600 0    50   ~ 0
PIO1_9
Text Label 7500 2000 2    50   ~ 0
PIO0_7
Text Label 7500 1900 2    50   ~ 0
PIO3_5
Text Label 8100 2000 0    50   ~ 0
PIO2_9
Text Label 8100 1900 0    50   ~ 0
PIO0_6
$Comp
L power:VSS #PWR0104
U 1 1 5D050897
P 8100 1800
F 0 "#PWR0104" H 8100 1650 50  0001 C CNN
F 1 "VSS" V 8117 1928 50  0000 L CNN
F 2 "" H 8100 1800 50  0001 C CNN
F 3 "" H 8100 1800 50  0001 C CNN
	1    8100 1800
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR0112
U 1 1 5D05F8D0
P 7500 1600
F 0 "#PWR0112" H 7500 1450 50  0001 C CNN
F 1 "VSS" V 7517 1728 50  0000 L CNN
F 2 "" H 7500 1600 50  0001 C CNN
F 3 "" H 7500 1600 50  0001 C CNN
	1    7500 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0113
U 1 1 5D070797
P 8100 1300
F 0 "#PWR0113" H 8100 1150 50  0001 C CNN
F 1 "VSS" V 8117 1428 50  0000 L CNN
F 2 "" H 8100 1300 50  0001 C CNN
F 3 "" H 8100 1300 50  0001 C CNN
	1    8100 1300
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR0114
U 1 1 5D096707
P 7500 1100
F 0 "#PWR0114" H 7500 950 50  0001 C CNN
F 1 "VSS" V 7517 1228 50  0000 L CNN
F 2 "" H 7500 1100 50  0001 C CNN
F 3 "" H 7500 1100 50  0001 C CNN
	1    7500 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 900  7500 900 
Wire Wire Line
	7500 1000 7550 1000
Wire Wire Line
	7550 1100 7500 1100
Wire Wire Line
	7500 1200 7550 1200
Wire Wire Line
	7550 1300 7500 1300
Wire Wire Line
	7500 1400 7550 1400
Wire Wire Line
	7550 1500 7500 1500
Wire Wire Line
	7500 1600 7550 1600
Wire Wire Line
	7550 1700 7500 1700
Wire Wire Line
	7500 1800 7550 1800
Wire Wire Line
	7550 1900 7500 1900
Wire Wire Line
	7500 2000 7550 2000
Wire Wire Line
	8050 2000 8100 2000
Wire Wire Line
	8100 1900 8050 1900
Wire Wire Line
	8050 1800 8100 1800
Wire Wire Line
	8100 1700 8050 1700
Wire Wire Line
	8050 1600 8100 1600
Wire Wire Line
	8100 1500 8050 1500
Wire Wire Line
	8050 1400 8100 1400
Wire Wire Line
	8100 1200 8050 1200
Wire Wire Line
	8050 1300 8100 1300
Wire Wire Line
	8100 1100 8050 1100
Wire Wire Line
	8050 1000 8100 1000
Wire Wire Line
	8100 900  8050 900 
Text Label 7500 2800 2    50   ~ 0
PIO3_3
Text Label 8100 2800 0    50   ~ 0
PIO1_7
Text Label 7500 2900 2    50   ~ 0
PIO1_6
Text Label 8100 2900 0    50   ~ 0
PIO1_5
$Comp
L power:VSS #PWR0127
U 1 1 5D1884AD
P 7500 3000
F 0 "#PWR0127" H 7500 2850 50  0001 C CNN
F 1 "VSS" V 7517 3128 50  0000 L CNN
F 2 "" H 7500 3000 50  0001 C CNN
F 3 "" H 7500 3000 50  0001 C CNN
	1    7500 3000
	0    -1   -1   0   
$EndComp
Text Label 8100 3000 0    50   ~ 0
PIO1_11
Text Label 7500 3100 2    50   ~ 0
PIO1_4
Text Label 8100 3100 0    50   ~ 0
PIO1_3
Text Label 7500 3200 2    50   ~ 0
PIO2_3
$Comp
L power:VSS #PWR0128
U 1 1 5D18A33B
P 8100 3200
F 0 "#PWR0128" H 8100 3050 50  0001 C CNN
F 1 "VSS" V 8117 3328 50  0000 L CNN
F 2 "" H 8100 3200 50  0001 C CNN
F 3 "" H 8100 3200 50  0001 C CNN
	1    8100 3200
	0    1    1    0   
$EndComp
Text Label 7500 3300 2    50   ~ 0
PIO3_0
Text Label 8100 3300 0    50   ~ 0
PIO1_2
Text Label 7500 3400 2    50   ~ 0
PIO1_1
Text Label 8100 3400 0    50   ~ 0
PIO1_0
$Comp
L power:VSS #PWR0129
U 1 1 5D190344
P 7500 3500
F 0 "#PWR0129" H 7500 3350 50  0001 C CNN
F 1 "VSS" V 7517 3628 50  0000 L CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	0    -1   -1   0   
$EndComp
Text Label 8100 3500 0    50   ~ 0
PIO0_11
Text Label 7500 3600 2    50   ~ 0
PIO1_10
Text Label 8100 3600 0    50   ~ 0
PIO0_10
Text Label 7500 3700 2    50   ~ 0
PIO0_9
$Comp
L power:VSS #PWR0130
U 1 1 5D191747
P 8100 3700
F 0 "#PWR0130" H 8100 3550 50  0001 C CNN
F 1 "VSS" V 8117 3828 50  0000 L CNN
F 2 "" H 8100 3700 50  0001 C CNN
F 3 "" H 8100 3700 50  0001 C CNN
	1    8100 3700
	0    1    1    0   
$EndComp
Text Label 7500 3800 2    50   ~ 0
PIO0_8
Text Label 8100 3800 0    50   ~ 0
PIO2_2
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J1
U 1 1 5D199898
P 7750 1400
F 0 "J1" H 7800 2217 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 7800 2126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 7750 1400 50  0001 C CNN
F 3 "~" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x14_Odd_Even J2
U 1 1 5D1B657A
P 7750 3300
F 0 "J2" H 7800 4117 50  0000 C CNN
F 1 "Conn_02x14_Odd_Even" H 7800 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x14_P2.54mm_Vertical" H 7750 3300 50  0001 C CNN
F 3 "~" H 7750 3300 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR0131
U 1 1 5D1DAA7E
P 7500 3900
F 0 "#PWR0131" H 7500 3750 50  0001 C CNN
F 1 "VSS" V 7517 4028 50  0000 L CNN
F 2 "" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0001 C CNN
	1    7500 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0132
U 1 1 5D1DB04D
P 8100 3900
F 0 "#PWR0132" H 8100 3750 50  0001 C CNN
F 1 "VSS" V 8117 4028 50  0000 L CNN
F 2 "" H 8100 3900 50  0001 C CNN
F 3 "" H 8100 3900 50  0001 C CNN
	1    8100 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3900 7550 3900
Wire Wire Line
	7550 3800 7500 3800
Wire Wire Line
	7500 3700 7550 3700
Wire Wire Line
	7550 3600 7500 3600
Wire Wire Line
	7500 3500 7550 3500
Wire Wire Line
	7550 3400 7500 3400
Wire Wire Line
	7550 3300 7500 3300
Wire Wire Line
	7500 3200 7550 3200
Wire Wire Line
	7550 3100 7500 3100
Wire Wire Line
	7500 3000 7550 3000
Wire Wire Line
	7550 2900 7500 2900
Wire Wire Line
	7500 2800 7550 2800
Wire Wire Line
	8050 2800 8100 2800
Wire Wire Line
	8100 2900 8050 2900
Wire Wire Line
	8050 3000 8100 3000
Wire Wire Line
	8100 3100 8050 3100
Wire Wire Line
	8050 3200 8100 3200
Wire Wire Line
	8100 3300 8050 3300
Wire Wire Line
	8050 3400 8100 3400
Wire Wire Line
	8100 3500 8050 3500
Wire Wire Line
	8050 3600 8100 3600
Wire Wire Line
	8100 3700 8050 3700
Wire Wire Line
	8050 3800 8100 3800
Wire Wire Line
	8100 3900 8050 3900
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D2FC1AB
P 8750 5200
F 0 "#FLG0101" H 8750 5275 50  0001 C CNN
F 1 "PWR_FLAG" H 8750 5373 50  0000 C CNN
F 2 "" H 8750 5200 50  0001 C CNN
F 3 "~" H 8750 5200 50  0001 C CNN
	1    8750 5200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D2FD5C4
P 9400 5700
F 0 "#FLG0102" H 9400 5775 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 5873 50  0000 C CNN
F 2 "" H 9400 5700 50  0001 C CNN
F 3 "~" H 9400 5700 50  0001 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D2FDBEE
P 9350 6100
F 0 "#FLG0103" H 9350 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 9350 6273 50  0000 C CNN
F 2 "" H 9350 6100 50  0001 C CNN
F 3 "~" H 9350 6100 50  0001 C CNN
	1    9350 6100
	-1   0    0    1   
$EndComp
NoConn ~ 3950 5150
NoConn ~ 3950 5250
Wire Wire Line
	8750 5700 9000 5700
Wire Wire Line
	8750 6100 9000 6100
Wire Wire Line
	8700 5200 8750 5200
Wire Wire Line
	7950 5600 8750 5600
$EndSCHEMATC
