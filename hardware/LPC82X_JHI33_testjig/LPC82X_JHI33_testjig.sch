EESchema Schematic File Version 4
LIBS:LPC82X_JHI33_testjig-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 25
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
F 1 "20190412" H 4000 1650 60  0000 C CNN
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
L Connector_Generic:Conn_02x09_Odd_Even J1
U 1 1 5BD2E6A6
P 3700 2600
F 0 "J1" H 3700 3265 50  0000 C CNN
F 1 "LPC82XJHI33_LEFT" H 3700 3174 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H015" H 3700 2600 50  0001 C CNN
F 3 "~" H 3700 2600 50  0001 C CNN
	1    3700 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J2
U 1 1 5BD2E711
P 3700 3850
F 0 "J2" H 3700 4515 50  0000 C CNN
F 1 "LPC82XJHI33_RIGHT" H 3700 4424 50  0000 C CNN
F 2 "SquantorConnectors:Header-0254-2X09-H015" H 3700 3850 50  0001 C CNN
F 3 "~" H 3700 3850 50  0001 C CNN
	1    3700 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 2200 3400 2200
Wire Wire Line
	3950 2200 3900 2200
Wire Wire Line
	3350 3450 3400 3450
Wire Wire Line
	3900 3450 3950 3450
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
Wire Wire Line
	4950 5050 5000 5050
Wire Wire Line
	5000 5050 5000 5150
Wire Wire Line
	4950 5350 5000 5350
Connection ~ 5000 5350
Wire Wire Line
	4950 5150 5000 5150
Connection ~ 5000 5150
Wire Wire Line
	5000 5150 5000 5350
Wire Wire Line
	4950 4950 5000 4950
$Comp
L Device:R R1
U 1 1 5BD32184
P 3750 4950
F 0 "R1" V 3543 4950 50  0000 C CNN
F 1 "100" V 3634 4950 50  0000 C CNN
F 2 "SquantorRcl:R_0402_hand" V 3680 4950 50  0001 C CNN
F 3 "~" H 3750 4950 50  0001 C CNN
	1    3750 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BD3223D
P 3750 5050
F 0 "R2" V 3865 5050 50  0000 C CNN
F 1 "100" V 3956 5050 50  0000 C CNN
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
Text Label 3500 4950 2    50   ~ 0
PIO0_2
Text Label 3500 5050 2    50   ~ 0
PIO0_3
Wire Wire Line
	3400 2300 3350 2300
Wire Wire Line
	3950 2300 3900 2300
Wire Wire Line
	3400 2400 3350 2400
Wire Wire Line
	3400 2500 3350 2500
Wire Wire Line
	3400 2600 3350 2600
Wire Wire Line
	3400 2700 3350 2700
Wire Wire Line
	3400 2800 3350 2800
Wire Wire Line
	3400 3000 3350 3000
Wire Wire Line
	3900 2400 3950 2400
Wire Wire Line
	3900 2500 3950 2500
Wire Wire Line
	3900 2600 3950 2600
Wire Wire Line
	3900 2700 3950 2700
Wire Wire Line
	3900 2800 3950 2800
Wire Wire Line
	3900 3000 3950 3000
Text Label 3350 2300 2    50   ~ 0
PIO0_28
Text Label 3950 2300 0    50   ~ 0
PIO0_3
Text Label 3350 2400 2    50   ~ 0
PIO0_2
Text Label 3950 2400 0    50   ~ 0
PIO0_11
Text Label 3350 2500 2    50   ~ 0
PIO0_10
Text Label 3950 2500 0    50   ~ 0
PIO0_16
Text Label 3350 2600 2    50   ~ 0
PIO0_27
Text Label 3950 2600 0    50   ~ 0
PIO0_26
Text Label 3350 2700 2    50   ~ 0
PIO0_25
Text Label 3950 2700 0    50   ~ 0
PIO0_24
Text Label 3350 2800 2    50   ~ 0
PIO0_15
Text Label 3950 2800 0    50   ~ 0
PIO0_1
Wire Wire Line
	3350 3550 3400 3550
Wire Wire Line
	3400 3650 3350 3650
Wire Wire Line
	3350 3750 3400 3750
Wire Wire Line
	3400 3850 3350 3850
Wire Wire Line
	3400 3950 3350 3950
Wire Wire Line
	3400 4050 3350 4050
Wire Wire Line
	3400 4150 3350 4150
Wire Wire Line
	3400 4250 3350 4250
Wire Wire Line
	3900 4250 3950 4250
Wire Wire Line
	3950 4150 3900 4150
Wire Wire Line
	3900 4050 3950 4050
Wire Wire Line
	3950 3950 3900 3950
Wire Wire Line
	3900 3850 3950 3850
Wire Wire Line
	3950 3750 3900 3750
Wire Wire Line
	3900 3650 3950 3650
Wire Wire Line
	3950 3550 3900 3550
Text Label 3950 4150 0    50   ~ 0
PIO0_7
Text Label 3350 4150 2    50   ~ 0
PIO0_6
Text Label 3950 4050 0    50   ~ 0
PIO0_0
Text Label 3350 4050 2    50   ~ 0
PIO0_14
Text Label 3950 3950 0    50   ~ 0
PIO0_23
Text Label 3350 3950 2    50   ~ 0
PIO0_22
Text Label 3950 3850 0    50   ~ 0
PIO0_21
Text Label 3350 3850 2    50   ~ 0
PIO0_20
Text Label 3950 3750 0    50   ~ 0
PIO0_19
Text Label 3350 3750 2    50   ~ 0
PIO0_18
Text Label 3950 3650 0    50   ~ 0
PIO0_17
Text Label 3350 3650 2    50   ~ 0
PIO0_13
Text Label 3950 3550 0    50   ~ 0
PIO0_12
Text Label 3350 3550 2    50   ~ 0
PIO0_4
Text Label 3350 2200 2    50   ~ 0
VDD
Text Label 3950 2200 0    50   ~ 0
VDD
Text Label 3350 3000 2    50   ~ 0
VSS
Text Label 3950 3000 0    50   ~ 0
VSS
Text Label 3350 3450 2    50   ~ 0
VSS
Text Label 3950 3450 0    50   ~ 0
VSS
Text Label 3350 4250 2    50   ~ 0
VDD
Text Label 3950 4250 0    50   ~ 0
VDD
Text Label 4950 4800 2    50   ~ 0
VDD
Wire Wire Line
	5000 4800 4950 4800
Wire Wire Line
	5000 4800 5000 4950
Text Label 4950 5550 2    50   ~ 0
VSS
Wire Wire Line
	4950 5550 5000 5550
Wire Wire Line
	5000 5350 5000 5550
NoConn ~ 3950 5250
NoConn ~ 3950 5150
$Sheet
S 10250 600  750  300 
U 5CDBD7BD
F0 "pin test network" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 700 50 
F3 "Digital_stimulus" B L 10250 800 50 
F4 "GPIO" B L 10250 700 50 
$EndSheet
Text Label 11050 700  0    50   ~ 0
VSS
Text Label 10200 800  2    50   ~ 0
Digital_stimulus
Text Label 10200 700  2    50   ~ 0
PIO0_28
Wire Wire Line
	11000 700  11050 700 
Wire Wire Line
	10200 700  10250 700 
Wire Wire Line
	10250 800  10200 800 
$Sheet
S 10250 1100 750  300 
U 5CDD32B9
F0 "sheet5CDD32B9" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 1200 50 
F3 "Digital_stimulus" B L 10250 1300 50 
F4 "GPIO" B L 10250 1200 50 
$EndSheet
Text Label 11050 1200 0    50   ~ 0
VSS
Text Label 10200 1300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 1200 11050 1200
Wire Wire Line
	10200 1200 10250 1200
Wire Wire Line
	10250 1300 10200 1300
Text Label 10200 1200 2    50   ~ 0
PIO0_11
$Sheet
S 10250 1600 750  300 
U 5CDD759A
F0 "sheet5CDD759A" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 1700 50 
F3 "Digital_stimulus" B L 10250 1800 50 
F4 "GPIO" B L 10250 1700 50 
$EndSheet
Text Label 11050 1700 0    50   ~ 0
VSS
Text Label 10200 1800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 1700 11050 1700
Wire Wire Line
	10200 1700 10250 1700
Wire Wire Line
	10250 1800 10200 1800
$Sheet
S 10250 2100 750  300 
U 5CDD75A5
F0 "sheet5CDD75A5" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 2200 50 
F3 "Digital_stimulus" B L 10250 2300 50 
F4 "GPIO" B L 10250 2200 50 
$EndSheet
Text Label 11050 2200 0    50   ~ 0
VSS
Text Label 10200 2300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 2200 11050 2200
Wire Wire Line
	10200 2200 10250 2200
Wire Wire Line
	10250 2300 10200 2300
Text Label 10200 2200 2    50   ~ 0
PIO0_16
Text Label 10200 1700 2    50   ~ 0
PIO0_10
$Sheet
S 10250 2600 750  300 
U 5CDDED1F
F0 "sheet5CDDED1F" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 2700 50 
F3 "Digital_stimulus" B L 10250 2800 50 
F4 "GPIO" B L 10250 2700 50 
$EndSheet
Text Label 11050 2700 0    50   ~ 0
VSS
Text Label 10200 2800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 2700 11050 2700
Wire Wire Line
	10200 2700 10250 2700
Wire Wire Line
	10250 2800 10200 2800
$Sheet
S 10250 3100 750  300 
U 5CDDED2A
F0 "sheet5CDDED2A" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 3200 50 
F3 "Digital_stimulus" B L 10250 3300 50 
F4 "GPIO" B L 10250 3200 50 
$EndSheet
Text Label 11050 3200 0    50   ~ 0
VSS
Text Label 10200 3300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 3200 11050 3200
Wire Wire Line
	10200 3200 10250 3200
Wire Wire Line
	10250 3300 10200 3300
$Sheet
S 10250 3600 750  300 
U 5CDDED35
F0 "sheet5CDDED35" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 3700 50 
F3 "Digital_stimulus" B L 10250 3800 50 
F4 "GPIO" B L 10250 3700 50 
$EndSheet
Text Label 11050 3700 0    50   ~ 0
VSS
Text Label 10200 3800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 3700 11050 3700
Wire Wire Line
	10200 3700 10250 3700
Wire Wire Line
	10250 3800 10200 3800
$Sheet
S 10250 4100 750  300 
U 5CDDED3F
F0 "sheet5CDDED3F" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 4200 50 
F3 "Digital_stimulus" B L 10250 4300 50 
F4 "GPIO" B L 10250 4200 50 
$EndSheet
Text Label 11050 4200 0    50   ~ 0
VSS
Text Label 10200 4300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 4200 11050 4200
Wire Wire Line
	10200 4200 10250 4200
Wire Wire Line
	10250 4300 10200 4300
Text Label 10200 2700 2    50   ~ 0
PIO0_27
Text Label 10200 3200 2    50   ~ 0
PIO0_26
Text Label 10200 3700 2    50   ~ 0
PIO0_25
Text Label 10200 4200 2    50   ~ 0
PIO0_24
$Sheet
S 10250 4600 750  300 
U 5CDEE3E3
F0 "sheet5CDEE3E3" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 4700 50 
F3 "Digital_stimulus" B L 10250 4800 50 
F4 "GPIO" B L 10250 4700 50 
$EndSheet
Text Label 11050 4700 0    50   ~ 0
VSS
Text Label 10200 4800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 4700 11050 4700
Wire Wire Line
	10200 4700 10250 4700
Wire Wire Line
	10250 4800 10200 4800
$Sheet
S 10250 5100 750  300 
U 5CDEE3ED
F0 "sheet5CDEE3ED" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 5200 50 
F3 "Digital_stimulus" B L 10250 5300 50 
F4 "GPIO" B L 10250 5200 50 
$EndSheet
Text Label 11050 5200 0    50   ~ 0
VSS
Text Label 10200 5300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 5200 11050 5200
Wire Wire Line
	10200 5200 10250 5200
Wire Wire Line
	10250 5300 10200 5300
Text Label 10200 4700 2    50   ~ 0
PIO0_15
Text Label 10200 5200 2    50   ~ 0
PIO0_1
$Sheet
S 8550 600  750  300 
U 5CDFF1E1
F0 "sheet5CDFF1E1" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 700 50 
F3 "Digital_stimulus" B L 8550 800 50 
F4 "GPIO" B L 8550 700 50 
$EndSheet
Text Label 9350 700  0    50   ~ 0
VSS
Text Label 8500 800  2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 700  9350 700 
Wire Wire Line
	8500 700  8550 700 
Wire Wire Line
	8550 800  8500 800 
$Sheet
S 8550 1100 750  300 
U 5CDFF1EC
F0 "sheet5CDFF1EC" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 1200 50 
F3 "Digital_stimulus" B L 8550 1300 50 
F4 "GPIO" B L 8550 1200 50 
$EndSheet
Text Label 9350 1200 0    50   ~ 0
VSS
Text Label 8500 1300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 1200 9350 1200
Wire Wire Line
	8500 1200 8550 1200
Wire Wire Line
	8550 1300 8500 1300
$Sheet
S 8550 1600 750  300 
U 5CDFF1F7
F0 "sheet5CDFF1F7" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 1700 50 
F3 "Digital_stimulus" B L 8550 1800 50 
F4 "GPIO" B L 8550 1700 50 
$EndSheet
Text Label 9350 1700 0    50   ~ 0
VSS
Text Label 8500 1800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 1700 9350 1700
Wire Wire Line
	8500 1700 8550 1700
Wire Wire Line
	8550 1800 8500 1800
$Sheet
S 8550 2100 750  300 
U 5CDFF201
F0 "sheet5CDFF201" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 2200 50 
F3 "Digital_stimulus" B L 8550 2300 50 
F4 "GPIO" B L 8550 2200 50 
$EndSheet
Text Label 9350 2200 0    50   ~ 0
VSS
Text Label 8500 2300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 2200 9350 2200
Wire Wire Line
	8500 2200 8550 2200
Wire Wire Line
	8550 2300 8500 2300
$Sheet
S 8550 2600 750  300 
U 5CDFF20D
F0 "sheet5CDFF20D" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 2700 50 
F3 "Digital_stimulus" B L 8550 2800 50 
F4 "GPIO" B L 8550 2700 50 
$EndSheet
Text Label 9350 2700 0    50   ~ 0
VSS
Text Label 8500 2800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 2700 9350 2700
Wire Wire Line
	8500 2700 8550 2700
Wire Wire Line
	8550 2800 8500 2800
$Sheet
S 8550 3100 750  300 
U 5CDFF217
F0 "sheet5CDFF217" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 3200 50 
F3 "Digital_stimulus" B L 8550 3300 50 
F4 "GPIO" B L 8550 3200 50 
$EndSheet
Text Label 9350 3200 0    50   ~ 0
VSS
Text Label 8500 3300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 3200 9350 3200
Wire Wire Line
	8500 3200 8550 3200
Wire Wire Line
	8550 3300 8500 3300
$Sheet
S 8550 3600 750  300 
U 5CDFF221
F0 "sheet5CDFF221" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 3700 50 
F3 "Digital_stimulus" B L 8550 3800 50 
F4 "GPIO" B L 8550 3700 50 
$EndSheet
Text Label 9350 3700 0    50   ~ 0
VSS
Text Label 8500 3800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 3700 9350 3700
Wire Wire Line
	8500 3700 8550 3700
Wire Wire Line
	8550 3800 8500 3800
$Sheet
S 8550 4100 750  300 
U 5CDFF22B
F0 "sheet5CDFF22B" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 4200 50 
F3 "Digital_stimulus" B L 8550 4300 50 
F4 "GPIO" B L 8550 4200 50 
$EndSheet
Text Label 9350 4200 0    50   ~ 0
VSS
Text Label 8500 4300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 4200 9350 4200
Wire Wire Line
	8500 4200 8550 4200
Wire Wire Line
	8550 4300 8500 4300
$Sheet
S 8550 4600 750  300 
U 5CDFF239
F0 "sheet5CDFF239" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 4700 50 
F3 "Digital_stimulus" B L 8550 4800 50 
F4 "GPIO" B L 8550 4700 50 
$EndSheet
Text Label 9350 4700 0    50   ~ 0
VSS
Text Label 8500 4800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 4700 9350 4700
Wire Wire Line
	8500 4700 8550 4700
Wire Wire Line
	8550 4800 8500 4800
$Sheet
S 8550 5100 750  300 
U 5CDFF243
F0 "sheet5CDFF243" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 5200 50 
F3 "Digital_stimulus" B L 8550 5300 50 
F4 "GPIO" B L 8550 5200 50 
$EndSheet
Text Label 9350 5200 0    50   ~ 0
VSS
Text Label 8500 5300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 5200 9350 5200
Wire Wire Line
	8500 5200 8550 5200
Wire Wire Line
	8550 5300 8500 5300
Text Label 8500 700  2    50   ~ 0
PIO0_4
Text Label 8500 1200 2    50   ~ 0
PIO0_12
Text Label 8500 1700 2    50   ~ 0
PIO0_13
Text Label 8500 2200 2    50   ~ 0
PIO0_17
Text Label 8500 2700 2    50   ~ 0
PIO0_18
Text Label 8500 3200 2    50   ~ 0
PIO0_19
Text Label 8500 3700 2    50   ~ 0
PIO0_20
Text Label 8500 4200 2    50   ~ 0
PIO0_21
Text Label 8500 4700 2    50   ~ 0
PIO0_22
Text Label 8500 5200 2    50   ~ 0
PIO0_23
Text Label 8500 5700 2    50   ~ 0
PIO0_14
Text Label 10200 5700 2    50   ~ 0
PIO0_0
Text Label 8500 6200 2    50   ~ 0
PIO0_6
Text Label 10200 6200 2    50   ~ 0
PIO0_7
$Sheet
S 10250 5600 750  300 
U 5CE0C1CD
F0 "sheet5CE0C1CD" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 5700 50 
F3 "Digital_stimulus" B L 10250 5800 50 
F4 "GPIO" B L 10250 5700 50 
$EndSheet
Text Label 11050 5700 0    50   ~ 0
VSS
Text Label 10200 5800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 5700 11050 5700
Wire Wire Line
	10200 5700 10250 5700
Wire Wire Line
	10250 5800 10200 5800
$Sheet
S 10250 6100 750  300 
U 5CE0C1D7
F0 "sheet5CE0C1D7" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 11000 6200 50 
F3 "Digital_stimulus" B L 10250 6300 50 
F4 "GPIO" B L 10250 6200 50 
$EndSheet
Text Label 11050 6200 0    50   ~ 0
VSS
Text Label 10200 6300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	11000 6200 11050 6200
Wire Wire Line
	10200 6200 10250 6200
Wire Wire Line
	10250 6300 10200 6300
$Sheet
S 8550 5600 750  300 
U 5CE123F5
F0 "sheet5CE123F5" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 5700 50 
F3 "Digital_stimulus" B L 8550 5800 50 
F4 "GPIO" B L 8550 5700 50 
$EndSheet
Text Label 9350 5700 0    50   ~ 0
VSS
Text Label 8500 5800 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 5700 9350 5700
Wire Wire Line
	8500 5700 8550 5700
Wire Wire Line
	8550 5800 8500 5800
$Sheet
S 8550 6100 750  300 
U 5CE123FF
F0 "sheet5CE123FF" 50
F1 "pin_test_network.sch" 50
F2 "VSS" I R 9300 6200 50 
F3 "Digital_stimulus" B L 8550 6300 50 
F4 "GPIO" B L 8550 6200 50 
$EndSheet
Text Label 9350 6200 0    50   ~ 0
VSS
Text Label 8500 6300 2    50   ~ 0
Digital_stimulus
Wire Wire Line
	9300 6200 9350 6200
Wire Wire Line
	8500 6200 8550 6200
Wire Wire Line
	8550 6300 8500 6300
NoConn ~ 3900 2900
NoConn ~ 3400 2900
NoConn ~ 3950 5350
$Comp
L Mechanical:MountingHole H?
U 1 1 5CE959EC
P 850 7450
F 0 "H?" H 950 7496 50  0000 L CNN
F 1 "MountingHole" H 950 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 7450 50  0001 C CNN
F 3 "~" H 850 7450 50  0001 C CNN
	1    850  7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5CE970BF
P 850 7250
F 0 "H?" H 950 7296 50  0000 L CNN
F 1 "MountingHole" H 950 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 7250 50  0001 C CNN
F 3 "~" H 850 7250 50  0001 C CNN
	1    850  7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5CE97293
P 850 7050
F 0 "H?" H 950 7096 50  0000 L CNN
F 1 "MountingHole" H 950 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 7050 50  0001 C CNN
F 3 "~" H 850 7050 50  0001 C CNN
	1    850  7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 5CE9748D
P 850 6850
F 0 "H?" H 950 6896 50  0000 L CNN
F 1 "MountingHole" H 950 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 6850 50  0001 C CNN
F 3 "~" H 850 6850 50  0001 C CNN
	1    850  6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
