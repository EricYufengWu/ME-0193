EESchema Schematic File Version 4
LIBS:MicroMod_tinycar-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
L MicroMod_tinycar-rescue:MICROMOD-2222-MicroMod_tinycar_symbol_library J4
U 1 1 605557CA
P 8650 7350
F 0 "J4" H 8650 9636 59  0000 C CNN
F 1 "MICROMOD-2222" H 8650 9531 59  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:M.2-CONNECTOR-E" H 8650 7350 50  0001 C CNN
F 3 "" H 8650 7350 50  0001 C CNN
	1    8650 7350
	1    0    0    -1  
$EndComp
Text GLabel 7550 6250 0    50   Input ~ 0
USB_D+
Text GLabel 7550 6150 0    50   Input ~ 0
USB_D-
$Comp
L MicroMod_tinycar-rescue:SW_Push-MicroMod_tinycar_symbol_library SW2
U 1 1 6056D3C6
P 7250 5550
F 0 "SW2" H 7250 5835 50  0000 C CNN
F 1 "SW_Push" H 7250 5744 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:SW_TL1015AF160QG" H 7250 5750 50  0001 C CNN
F 3 "~" H 7250 5750 50  0001 C CNN
	1    7250 5550
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR019
U 1 1 6056E1D7
P 6900 5750
F 0 "#PWR019" H 6900 5500 50  0001 C CNN
F 1 "GND" H 6905 5577 50  0000 C CNN
F 2 "" H 6900 5750 50  0001 C CNN
F 3 "" H 6900 5750 50  0001 C CNN
	1    6900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5550 6900 5550
Wire Wire Line
	6900 5550 6900 5750
$Comp
L MicroMod_tinycar-rescue:QRE1113GR U4
U 1 1 60598F60
P 13450 6000
F 0 "U4" V 13100 6050 50  0000 C CNN
F 1 "QRE1113GR" V 13200 6050 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:QRE1113GR" H 13050 6550 50  0001 L BNN
F 3 "" H 13450 6000 50  0001 L BNN
F 4 "QRE1113GR" H 13250 6650 50  0001 L BNN "MP"
F 5 "5" H 13450 6000 50  0001 L BNN "PARTREV"
	1    13450 6000
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R5
U 1 1 60599BE5
P 14050 6200
F 0 "R5" V 14100 6050 50  0000 L CNN
F 1 "100" V 13950 6050 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 14050 6200 50  0001 C CNN
F 3 "~" H 14050 6200 50  0001 C CNN
	1    14050 6200
	0    -1   -1   0   
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R7
U 1 1 6059AB65
P 14050 5700
F 0 "R7" V 14100 5550 50  0000 L CNN
F 1 "10K" V 13950 5550 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 14050 5700 50  0001 C CNN
F 3 "~" H 14050 5700 50  0001 C CNN
	1    14050 5700
	0    -1   -1   0   
$EndComp
Text GLabel 14300 5500 2    50   Input ~ 0
Light1_bot
Wire Wire Line
	13750 5900 13750 6000
$Comp
L MicroMod_tinycar-rescue:C_Small-MicroMod_tinycar_symbol_library C2
U 1 1 605CA5D9
P 2950 5800
F 0 "C2" H 3042 5846 50  0000 L CNN
F 1 "1μ" H 3042 5755 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:C_0805_2012Metric" H 2950 5800 50  0001 C CNN
F 3 "~" H 2950 5800 50  0001 C CNN
	1    2950 5800
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:C_Small-MicroMod_tinycar_symbol_library C3
U 1 1 605CB61B
P 4000 5800
F 0 "C3" H 4092 5846 50  0000 L CNN
F 1 "1μ" H 4092 5755 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:C_0805_2012Metric" H 4000 5800 50  0001 C CNN
F 3 "~" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5600 3200 5600
Wire Wire Line
	2950 5600 2950 5700
Wire Wire Line
	3800 5600 4000 5600
Wire Wire Line
	4000 5600 4000 5700
Connection ~ 4000 5600
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR08
U 1 1 605CFE34
P 2950 6150
F 0 "#PWR08" H 2950 5900 50  0001 C CNN
F 1 "GND" H 2955 5977 50  0000 C CNN
F 2 "" H 2950 6150 50  0001 C CNN
F 3 "" H 2950 6150 50  0001 C CNN
	1    2950 6150
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR010
U 1 1 605D12CD
P 3500 6150
F 0 "#PWR010" H 3500 5900 50  0001 C CNN
F 1 "GND" H 3505 5977 50  0000 C CNN
F 2 "" H 3500 6150 50  0001 C CNN
F 3 "" H 3500 6150 50  0001 C CNN
	1    3500 6150
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR015
U 1 1 605D1E17
P 4000 6150
F 0 "#PWR015" H 4000 5900 50  0001 C CNN
F 1 "GND" H 4005 5977 50  0000 C CNN
F 2 "" H 4000 6150 50  0001 C CNN
F 3 "" H 4000 6150 50  0001 C CNN
	1    4000 6150
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:C_Small-MicroMod_tinycar_symbol_library C1
U 1 1 605EA18D
P 1300 8050
F 0 "C1" H 1392 8096 50  0000 L CNN
F 1 "4.7μ" H 1392 8005 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:C_0805_2012Metric" H 1300 8050 50  0001 C CNN
F 3 "~" H 1300 8050 50  0001 C CNN
	1    1300 8050
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:MCP73830LT-0AAI_MYY U1
U 1 1 605EF842
P 3100 7750
F 0 "U1" H 3100 8187 60  0000 C CNN
F 1 "MCP73830LT-0AAI_MYY" H 3100 8081 60  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:MCP73830LT-0AAI&slash_MYY" H 3100 8090 60  0001 C CNN
F 3 "" H 2500 7850 60  0000 C CNN
	1    3100 7750
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R3
U 1 1 605EFCB6
P 2250 7750
F 0 "R3" V 2050 7700 50  0000 L CNN
F 1 "470" V 2150 7700 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 2250 7750 50  0001 C CNN
F 3 "~" H 2250 7750 50  0001 C CNN
	1    2250 7750
	0    -1   -1   0   
$EndComp
$Comp
L MicroMod_tinycar-rescue:C_Small-MicroMod_tinycar_symbol_library C4
U 1 1 605F10F6
P 4400 7850
F 0 "C4" H 4492 7896 50  0000 L CNN
F 1 "4.7μ" H 4492 7805 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:C_0805_2012Metric" H 4400 7850 50  0001 C CNN
F 3 "~" H 4400 7850 50  0001 C CNN
	1    4400 7850
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR01
U 1 1 605F318B
P 1300 7450
F 0 "#PWR01" H 1300 7300 50  0001 C CNN
F 1 "+5V" H 1315 7623 50  0000 C CNN
F 2 "" H 1300 7450 50  0001 C CNN
F 3 "" H 1300 7450 50  0001 C CNN
	1    1300 7450
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+BATT-MicroMod_tinycar_symbol_library #PWR017
U 1 1 605F3A59
P 4400 7450
F 0 "#PWR017" H 4400 7300 50  0001 C CNN
F 1 "+BATT" H 4415 7623 50  0000 C CNN
F 2 "" H 4400 7450 50  0001 C CNN
F 3 "" H 4400 7450 50  0001 C CNN
	1    4400 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7450 1300 7600
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR02
U 1 1 605F72ED
P 1300 8350
F 0 "#PWR02" H 1300 8100 50  0001 C CNN
F 1 "GND" H 1305 8177 50  0000 C CNN
F 2 "" H 1300 8350 50  0001 C CNN
F 3 "" H 1300 8350 50  0001 C CNN
	1    1300 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 8150 1300 8350
Wire Wire Line
	4400 7450 4400 7600
Wire Wire Line
	3700 7600 4400 7600
Connection ~ 4400 7600
Wire Wire Line
	4400 7600 4400 7750
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR016
U 1 1 605FC731
P 4150 8350
F 0 "#PWR016" H 4150 8100 50  0001 C CNN
F 1 "GND" H 4155 8177 50  0000 C CNN
F 2 "" H 4150 8350 50  0001 C CNN
F 3 "" H 4150 8350 50  0001 C CNN
	1    4150 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7750 4150 7750
Wire Wire Line
	4150 7750 4150 7850
Wire Wire Line
	4150 8050 4150 8200
Wire Wire Line
	4400 7950 4400 8200
Wire Wire Line
	4400 8200 4150 8200
Connection ~ 4150 8200
Wire Wire Line
	4150 8200 4150 8350
Wire Wire Line
	3700 7900 3900 7900
Wire Wire Line
	3900 7900 3900 8200
Wire Wire Line
	3900 8200 4150 8200
$Comp
L MicroMod_tinycar-rescue:LED-MicroMod_tinycar_symbol_library D1
U 1 1 6060C182
P 1800 7750
F 0 "D1" H 1793 7966 50  0000 C CNN
F 1 "R_LED" H 1793 7875 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:LED_0805_2012Metric" H 1800 7750 50  0001 C CNN
F 3 "~" H 1800 7750 50  0001 C CNN
	1    1800 7750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 7600 2500 7600
Wire Wire Line
	1300 7600 1300 7750
Connection ~ 1300 7600
Wire Wire Line
	1300 7750 1650 7750
Connection ~ 1300 7750
Wire Wire Line
	1300 7750 1300 7950
Wire Wire Line
	1950 7750 2150 7750
Wire Wire Line
	2350 7750 2500 7750
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R4
U 1 1 6061A155
P 4150 7950
F 0 "R4" H 4000 7900 50  0000 L CNN
F 1 "5K" H 4000 7800 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 4150 7950 50  0001 C CNN
F 3 "~" H 4150 7950 50  0001 C CNN
	1    4150 7950
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+BATT-MicroMod_tinycar_symbol_library #PWR06
U 1 1 6061C9A1
P 2300 4700
F 0 "#PWR06" H 2300 4550 50  0001 C CNN
F 1 "+BATT" H 2315 4873 50  0000 C CNN
F 2 "" H 2300 4700 50  0001 C CNN
F 3 "" H 2300 4700 50  0001 C CNN
	1    2300 4700
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR03
U 1 1 60621EE2
P 1800 4700
F 0 "#PWR03" H 1800 4550 50  0001 C CNN
F 1 "+5V" H 1815 4873 50  0000 C CNN
F 2 "" H 1800 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4700 1800 5050
Wire Wire Line
	1800 5050 2000 5050
Wire Wire Line
	2300 4700 2300 4850
Wire Wire Line
	9550 6550 9750 6550
Wire Wire Line
	9750 6650 9550 6650
Wire Wire Line
	4000 5400 4000 5600
$Comp
L MicroMod_tinycar-rescue:+3V3-MicroMod_tinycar_symbol_library #PWR014
U 1 1 605CE9B9
P 4000 5400
F 0 "#PWR014" H 4000 5250 50  0001 C CNN
F 1 "+3V3" H 4015 5573 50  0000 C CNN
F 2 "" H 4000 5400 50  0001 C CNN
F 3 "" H 4000 5400 50  0001 C CNN
	1    4000 5400
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:SW_SPDT-MicroMod_tinycar_symbol_library SW1
U 1 1 605565F1
P 2600 5500
F 0 "SW1" H 2600 5785 50  0000 C CNN
F 1 "SW_SPDT" H 2600 5694 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:SW_PCM12SMTR" H 2600 5500 50  0001 C CNN
F 3 "~" H 2600 5500 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5600 2950 5600
Connection ~ 2950 5600
Wire Wire Line
	2400 5500 2300 5500
Wire Wire Line
	2300 5500 2300 5250
Wire Wire Line
	13750 5700 13850 5700
Connection ~ 13850 5700
Text GLabel 14350 3200 2    50   Input ~ 0
Light0_bot
Text GLabel 13550 3200 0    50   Input ~ 0
Light1_bot
$Comp
L MicroMod_tinycar-rescue:Conn_02x15_Counter_Clockwise J6
U 1 1 606A3D0D
P 13900 2900
F 0 "J6" H 13950 3815 50  0000 C CNN
F 1 "Conn_02x15_Counter_Clockwise" H 13950 3724 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:Bottom_adapter" H 13900 2900 50  0001 C CNN
F 3 "~" H 13900 2900 50  0001 C CNN
	1    13900 2900
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:DMG2305UX-MicroMod_tinycar_symbol_library Q1
U 1 1 606DFC28
P 2200 5050
F 0 "Q1" H 2406 5096 50  0000 L CNN
F 1 "DMG2305UX-MicroMod_tinycar_symbol_library" H 2406 5005 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:DMG2305UX_SOT-23" H 2200 5550 50  0001 C CIN
F 3 "" H 2200 5050 50  0001 L CNN
	1    2200 5050
	1    0    0    -1  
$EndComp
NoConn ~ 2500 7900
$Comp
L MicroMod_tinycar-rescue:Stepper U6
U 1 1 606EC968
P 14750 4200
F 0 "U6" H 14758 4525 50  0000 C CNN
F 1 "Stepper" H 14758 4434 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:Mini_Stepper" H 14800 4200 50  0001 C CNN
F 3 "" H 14800 4200 50  0001 C CNN
	1    14750 4200
	-1   0    0    1   
$EndComp
$Comp
L MicroMod_tinycar-rescue:Stepper U3
U 1 1 606ECEED
P 13150 4100
F 0 "U3" H 13158 4425 50  0000 C CNN
F 1 "Stepper" H 13158 4334 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:Mini_Stepper" H 13200 4100 50  0001 C CNN
F 3 "" H 13200 4100 50  0001 C CNN
	1    13150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 3200 13700 3200
Wire Wire Line
	14200 3200 14350 3200
Wire Wire Line
	1800 5050 1800 5500
Connection ~ 1800 5050
$Comp
L MicroMod_tinycar-rescue:D_Schottky_Small D2
U 1 1 60746FD5
P 2050 5500
F 0 "D2" H 2050 5750 50  0000 C CNN
F 1 "D_Schottky_Small" H 2050 5650 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:D_0805_2012Metric" V 2050 5500 50  0001 C CNN
F 3 "~" V 2050 5500 50  0001 C CNN
	1    2050 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 5500 1950 5500
Wire Wire Line
	2150 5500 2300 5500
Connection ~ 2300 5500
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR011
U 1 1 60754928
P 3750 8350
F 0 "#PWR011" H 3750 8100 50  0001 C CNN
F 1 "GND" H 3755 8177 50  0000 C CNN
F 2 "" H 3750 8350 50  0001 C CNN
F 3 "" H 3750 8350 50  0001 C CNN
	1    3750 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 8100 3750 8350
Wire Wire Line
	3700 8100 3750 8100
Text GLabel 9750 5750 2    50   Input ~ 0
A0+_top
Text GLabel 9750 5550 2    50   Input ~ 0
B0-_top
Text GLabel 9750 5650 2    50   Input ~ 0
B0+_top
Text GLabel 9750 5850 2    50   Input ~ 0
A0-_top
Wire Wire Line
	9550 5550 9750 5550
Wire Wire Line
	9750 5650 9550 5650
Wire Wire Line
	9550 5750 9750 5750
Wire Wire Line
	9750 5850 9550 5850
Text GLabel 9750 5350 2    50   Input ~ 0
B1-_top
Text GLabel 9750 5450 2    50   Input ~ 0
B1+_top
Text GLabel 7550 7650 0    50   Input ~ 0
A1-_top
Text GLabel 7550 7750 0    50   Input ~ 0
A1+_top
Wire Wire Line
	9550 5450 9750 5450
Wire Wire Line
	9550 5350 9750 5350
Wire Wire Line
	7450 5550 7750 5550
Wire Wire Line
	7550 6150 7750 6150
Wire Wire Line
	7550 6250 7750 6250
Wire Wire Line
	7550 7650 7750 7650
Wire Wire Line
	7750 7750 7550 7750
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR022
U 1 1 607C75CC
P 7550 9250
F 0 "#PWR022" H 7550 9000 50  0001 C CNN
F 1 "GND" H 7555 9077 50  0000 C CNN
F 2 "" H 7550 9250 50  0001 C CNN
F 3 "" H 7550 9250 50  0001 C CNN
	1    7550 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 9050 7550 9250
Wire Wire Line
	7750 9050 7550 9050
$Comp
L MicroMod_tinycar-rescue:+3V3-MicroMod_tinycar_symbol_library #PWR020
U 1 1 6080E715
P 7450 5200
F 0 "#PWR020" H 7450 5050 50  0001 C CNN
F 1 "+3V3" H 7465 5373 50  0000 C CNN
F 2 "" H 7450 5200 50  0001 C CNN
F 3 "" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5200 7450 5350
Wire Wire Line
	7450 5350 7750 5350
Wire Wire Line
	8500 9850 8500 10050
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR024
U 1 1 6056B5C3
P 8500 10050
F 0 "#PWR024" H 8500 9800 50  0001 C CNN
F 1 "GND" H 8505 9877 50  0000 C CNN
F 2 "" H 8500 10050 50  0001 C CNN
F 3 "" H 8500 10050 50  0001 C CNN
	1    8500 10050
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:STAND-OFF-REFLOW2.5MM_TALL-MicroMod_tinycar_symbol_library H1
U 1 1 605509A1
P 8500 9750
F 0 "H1" H 8580 9771 59  0000 L CNN
F 1 "STAND-OFF-REFLOW2.5MM_TALL" H 8580 9666 59  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:STAND-OFF-REFLOW-M2.5" H 8500 9750 50  0001 C CNN
F 3 "" H 8500 9750 50  0001 C CNN
	1    8500 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1750 3100 1750
Wire Wire Line
	3250 1650 3250 1750
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR09
U 1 1 605C55A3
P 3250 1650
F 0 "#PWR09" H 3250 1500 50  0001 C CNN
F 1 "+5V" H 3265 1823 50  0000 C CNN
F 2 "" H 3250 1650 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:USB_B_Micro J1
U 1 1 6059274E
P 2800 1950
F 0 "J1" H 2857 2417 50  0000 C CNN
F 1 "USB_B_Micro" H 2857 2326 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:USB_Micro-B_Molex_47346-0001" H 2950 1900 50  0001 C CNN
F 3 "" H 2950 1900 50  0001 C CNN
	1    2800 1950
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR07
U 1 1 6056AC10
P 2800 2600
F 0 "#PWR07" H 2800 2350 50  0001 C CNN
F 1 "GND" H 2805 2427 50  0000 C CNN
F 2 "" H 2800 2600 50  0001 C CNN
F 3 "" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1950 3200 1950
Wire Wire Line
	3100 2050 3200 2050
Text GLabel 3200 2050 2    50   Input ~ 0
USB_D-
Text GLabel 3200 1950 2    50   Input ~ 0
USB_D+
NoConn ~ 3100 2150
$Comp
L MicroMod_tinycar-rescue:Conn_02x15_Counter_Clockwise J5
U 1 1 608DDEF4
P 9800 2050
F 0 "J5" H 9850 2900 50  0000 C CNN
F 1 "Conn_02x15_Counter_Clockwise" H 9850 1150 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:Top_adapter" H 9800 2050 50  0001 C CNN
F 3 "~" H 9800 2050 50  0001 C CNN
	1    9800 2050
	1    0    0    -1  
$EndComp
Text Notes 7000 3150 0    50   ~ 0
To Bottom Board
Text Notes 9600 3100 0    50   ~ 0
To Top Board(s)
Wire Notes Line
	500  3750 11750 3750
Wire Notes Line
	11750 500  11750 11200
Text Notes 600  650  0    50   ~ 0
USB Interface
Text Notes 600  3950 0    50   ~ 0
Power Regulation
Text Notes 5700 650  0    50   ~ 0
Board to Board Connection
Text Notes 5700 3950 0    50   ~ 0
MicroMod Connection
Text Notes 11950 650  0    50   ~ 0
Lower Board
$Comp
L MicroMod_tinycar-rescue:+3V3-MicroMod_tinycar_symbol_library #PWR026
U 1 1 609486B2
P 9450 1200
F 0 "#PWR026" H 9450 1050 50  0001 C CNN
F 1 "+3V3" H 9465 1373 50  0000 C CNN
F 2 "" H 9450 1200 50  0001 C CNN
F 3 "" H 9450 1200 50  0001 C CNN
	1    9450 1200
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR027
U 1 1 60948E43
P 10650 1550
F 0 "#PWR027" H 10650 1300 50  0001 C CNN
F 1 "GND" H 10655 1377 50  0000 C CNN
F 2 "" H 10650 1550 50  0001 C CNN
F 3 "" H 10650 1550 50  0001 C CNN
	1    10650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1200 9450 1350
Wire Wire Line
	9450 1350 9600 1350
Wire Wire Line
	10650 1350 10650 1450
Connection ~ 10650 1450
Wire Wire Line
	10650 1450 10650 1550
Text GLabel 7550 8050 0    50   Input ~ 0
SDA
Text GLabel 7550 7950 0    50   Input ~ 0
SCL
Text GLabel 7550 8150 0    50   Input ~ 0
I2C_INT
Wire Wire Line
	10100 1350 10650 1350
Wire Wire Line
	10100 1450 10650 1450
Text GLabel 9750 6050 2    50   Input ~ 0
SCK
Text GLabel 9750 6150 2    50   Input ~ 0
SOPI
Text GLabel 9750 6250 2    50   Input ~ 0
SIPO
Text GLabel 9750 6350 2    50   Input ~ 0
CS
$Comp
L MicroMod_tinycar-rescue:+BATT-MicroMod_tinycar_symbol_library #PWR04
U 1 1 605BD6F9
P 1900 9350
F 0 "#PWR04" H 1900 9200 50  0001 C CNN
F 1 "+BATT" H 1915 9523 50  0000 C CNN
F 2 "" H 1900 9350 50  0001 C CNN
F 3 "" H 1900 9350 50  0001 C CNN
	1    1900 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 9500 1900 9350
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR021
U 1 1 605D3DF7
P 7450 5900
F 0 "#PWR021" H 7450 5750 50  0001 C CNN
F 1 "+5V" H 7465 6073 50  0000 C CNN
F 2 "" H 7450 5900 50  0001 C CNN
F 3 "" H 7450 5900 50  0001 C CNN
	1    7450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6050 7450 6050
Wire Wire Line
	7450 6050 7450 5900
NoConn ~ 7750 5850
NoConn ~ 7750 5750
NoConn ~ 7750 5450
Text GLabel 9750 6850 2    50   Input ~ 0
PWM1
Text GLabel 9750 6750 2    50   Input ~ 0
PWM0
Text GLabel 7550 6550 0    50   Input ~ 0
USBHOST_D+
Text GLabel 7550 6450 0    50   Input ~ 0
USBHOST_D-
Text GLabel 9750 7750 2    50   Input ~ 0
RX1
Text GLabel 9750 7650 2    50   Input ~ 0
TX1
Text GLabel 9750 6650 2    50   Input ~ 0
Light1_top
Text GLabel 9750 6550 2    50   Input ~ 0
Light0_top
$Comp
L MicroMod_tinycar-rescue:Conn_01x02 J2
U 1 1 60727513
P 4300 9750
F 0 "J2" H 4378 9741 50  0000 L CNN
F 1 "Conn_01x02" H 4378 9650 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal" H 4300 9750 50  0001 C CNN
F 3 "~" H 4300 9750 50  0001 C CNN
	1    4300 9750
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR013
U 1 1 60727FC3
P 3800 10050
F 0 "#PWR013" H 3800 9800 50  0001 C CNN
F 1 "GND" H 3805 9877 50  0000 C CNN
F 2 "" H 3800 10050 50  0001 C CNN
F 3 "" H 3800 10050 50  0001 C CNN
	1    3800 10050
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+BATT-MicroMod_tinycar_symbol_library #PWR012
U 1 1 6072864A
P 3800 9550
F 0 "#PWR012" H 3800 9400 50  0001 C CNN
F 1 "+BATT" H 3815 9723 50  0000 C CNN
F 2 "" H 3800 9550 50  0001 C CNN
F 3 "" H 3800 9550 50  0001 C CNN
	1    3800 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 9750 3800 9750
Wire Wire Line
	3800 9750 3800 9550
Wire Wire Line
	4100 9850 3800 9850
Wire Wire Line
	3800 9850 3800 10050
Wire Wire Line
	14350 2200 14350 2300
Connection ~ 14350 2300
Wire Wire Line
	13550 2200 13700 2200
Wire Wire Line
	13550 2200 13550 2300
Wire Wire Line
	13550 2300 13700 2300
Wire Wire Line
	14200 2200 14350 2200
Wire Wire Line
	14200 2300 14350 2300
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R1
U 1 1 6078D534
P 1900 9600
F 0 "R1" H 2000 9600 50  0000 L CNN
F 1 "10K" H 1950 9700 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 1900 9600 50  0001 C CNN
F 3 "~" H 1900 9600 50  0001 C CNN
	1    1900 9600
	-1   0    0    1   
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R2
U 1 1 6078E5FD
P 1900 10000
F 0 "R2" H 2000 10000 50  0000 L CNN
F 1 "5K" H 2000 10100 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 1900 10000 50  0001 C CNN
F 3 "~" H 1900 10000 50  0001 C CNN
	1    1900 10000
	-1   0    0    1   
$EndComp
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR05
U 1 1 6079FE01
P 1900 10250
F 0 "#PWR05" H 1900 10000 50  0001 C CNN
F 1 "GND" H 1905 10077 50  0000 C CNN
F 2 "" H 1900 10250 50  0001 C CNN
F 3 "" H 1900 10250 50  0001 C CNN
	1    1900 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 9700 1900 9800
Wire Wire Line
	1900 10100 1900 10250
Text GLabel 2150 9800 2    50   Input ~ 0
VBATT_3
Wire Wire Line
	1900 9800 2150 9800
Connection ~ 1900 9800
Wire Wire Line
	1900 9800 1900 9900
Text GLabel 7550 8550 0    50   Input ~ 0
VBATT_3
Wire Wire Line
	7550 8550 7750 8550
Text GLabel 7550 7150 0    50   Input ~ 0
SWDCK
Text GLabel 7550 7050 0    50   Input ~ 0
SWDIO
Wire Wire Line
	2800 2450 2800 2600
Wire Wire Line
	2700 2450 2800 2450
Wire Wire Line
	2700 2350 2700 2450
Connection ~ 2800 2450
Wire Wire Line
	2800 2350 2800 2450
NoConn ~ 2800 5400
$Comp
L MicroMod_tinycar-rescue:AP7333-SOT23R U2
U 1 1 6087DAFE
P 3500 5600
F 0 "U2" H 3500 5865 50  0000 C CNN
F 1 "AP7333-SOT23R" H 3500 5774 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:AP7333_SOT-23" H 3500 5600 50  0001 C CNN
F 3 "" H 3500 5600 50  0001 C CNN
	1    3500 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5950 3500 6150
Wire Wire Line
	2950 5900 2950 6150
Wire Wire Line
	4000 5900 4000 6150
Text GLabel 13400 2200 0    50   Input ~ 0
3V3_bot
Wire Wire Line
	13550 2200 13400 2200
Connection ~ 13550 2200
Text GLabel 14500 2300 2    50   Input ~ 0
GND_bot
Wire Wire Line
	14350 2300 14500 2300
Text GLabel 14300 6200 2    50   Input ~ 0
3V3_bot
Text GLabel 14300 5700 2    50   Input ~ 0
3V3_bot
Text GLabel 14300 6000 2    50   Input ~ 0
GND_bot
Wire Wire Line
	13850 5700 13950 5700
Connection ~ 13750 6000
Wire Wire Line
	13750 6000 14300 6000
Wire Wire Line
	13750 6200 13950 6200
Wire Wire Line
	14150 6200 14300 6200
Wire Wire Line
	14150 5700 14300 5700
Wire Wire Line
	13850 5500 14300 5500
Wire Wire Line
	13850 5500 13850 5700
$Comp
L MicroMod_tinycar-rescue:QRE1113GR U5
U 1 1 6093A663
P 13450 7750
F 0 "U5" V 13100 7800 50  0000 C CNN
F 1 "QRE1113GR" V 13200 7800 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:QRE1113GR" H 13050 8300 50  0001 L BNN
F 3 "" H 13450 7750 50  0001 L BNN
F 4 "QRE1113GR" H 13250 8400 50  0001 L BNN "MP"
F 5 "5" H 13450 7750 50  0001 L BNN "PARTREV"
	1    13450 7750
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R8
U 1 1 6093A669
P 14050 7950
F 0 "R8" V 14100 7800 50  0000 L CNN
F 1 "100" V 13950 7800 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 14050 7950 50  0001 C CNN
F 3 "~" H 14050 7950 50  0001 C CNN
	1    14050 7950
	0    -1   -1   0   
$EndComp
$Comp
L MicroMod_tinycar-rescue:R_Small-MicroMod_tinycar_symbol_library R6
U 1 1 6093A66F
P 14050 7450
F 0 "R6" V 14100 7300 50  0000 L CNN
F 1 "10K" V 13950 7300 50  0000 L CNN
F 2 "MicroMod_tinycar_footprint_library:R_0805_2012Metric" H 14050 7450 50  0001 C CNN
F 3 "~" H 14050 7450 50  0001 C CNN
	1    14050 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13750 7650 13750 7750
Wire Wire Line
	13750 7450 13850 7450
Connection ~ 13850 7450
Text GLabel 14300 7950 2    50   Input ~ 0
3V3_bot
Text GLabel 14300 7450 2    50   Input ~ 0
3V3_bot
Text GLabel 14300 7750 2    50   Input ~ 0
GND_bot
Wire Wire Line
	13850 7450 13950 7450
Connection ~ 13750 7750
Wire Wire Line
	13750 7750 14300 7750
Wire Wire Line
	13750 7950 13950 7950
Wire Wire Line
	14150 7950 14300 7950
Wire Wire Line
	14150 7450 14300 7450
Wire Wire Line
	13850 7250 14300 7250
Wire Wire Line
	13850 7250 13850 7450
NoConn ~ 10100 2350
NoConn ~ 10100 2450
NoConn ~ 10100 2550
NoConn ~ 10100 2650
NoConn ~ 10100 2750
NoConn ~ 9600 2750
NoConn ~ 9600 2650
NoConn ~ 9600 2550
NoConn ~ 7750 6750
NoConn ~ 7750 6850
NoConn ~ 7750 7350
NoConn ~ 7750 7450
NoConn ~ 7750 7550
NoConn ~ 9550 9050
NoConn ~ 9550 8950
NoConn ~ 9550 8850
NoConn ~ 9550 8750
NoConn ~ 9550 8650
NoConn ~ 9550 8550
NoConn ~ 9550 8450
NoConn ~ 9550 8350
NoConn ~ 9550 8250
NoConn ~ 9550 8150
NoConn ~ 9550 8050
NoConn ~ 9550 7950
NoConn ~ 9550 7550
NoConn ~ 9550 7450
NoConn ~ 9550 7050
NoConn ~ 9550 6950
NoConn ~ 13700 2400
NoConn ~ 13700 2500
NoConn ~ 13700 2600
NoConn ~ 13700 2700
NoConn ~ 13700 2800
NoConn ~ 13700 2900
NoConn ~ 13700 3000
NoConn ~ 13700 3100
NoConn ~ 14200 3100
NoConn ~ 14200 3000
NoConn ~ 14200 2900
NoConn ~ 14200 2800
NoConn ~ 14200 2700
NoConn ~ 14200 2600
NoConn ~ 14200 2500
NoConn ~ 14200 2400
NoConn ~ 9600 2450
NoConn ~ 9600 2350
Text GLabel 13550 3500 0    50   Input ~ 0
A0+
Text GLabel 13550 3600 0    50   Input ~ 0
A0-
Text GLabel 13550 3300 0    50   Input ~ 0
B0-
Text GLabel 13550 3400 0    50   Input ~ 0
B0+
Text GLabel 13500 4000 2    50   Input ~ 0
A0+
Text GLabel 13500 4100 2    50   Input ~ 0
A0-
Text GLabel 13500 4300 2    50   Input ~ 0
B0-
Text GLabel 13500 4200 2    50   Input ~ 0
B0+
Wire Wire Line
	13550 3300 13700 3300
Wire Wire Line
	13700 3400 13550 3400
Wire Wire Line
	13700 3500 13550 3500
Wire Wire Line
	13700 3600 13550 3600
Wire Wire Line
	13350 4200 13500 4200
Wire Wire Line
	13350 4300 13500 4300
Wire Wire Line
	13500 4000 13350 4000
Wire Wire Line
	13350 4100 13500 4100
Text GLabel 14350 3600 2    50   Input ~ 0
A1+
Text GLabel 14350 3500 2    50   Input ~ 0
A1-
Text GLabel 14350 3400 2    50   Input ~ 0
B1-
Text GLabel 14350 3300 2    50   Input ~ 0
B1+
Text GLabel 14400 4300 0    50   Input ~ 0
A1+
Text GLabel 14400 4000 0    50   Input ~ 0
B1-
Text GLabel 14400 4100 0    50   Input ~ 0
B1+
Text GLabel 14400 4200 0    50   Input ~ 0
A1-
Wire Wire Line
	14400 4000 14550 4000
Wire Wire Line
	14550 4100 14400 4100
Wire Wire Line
	14400 4200 14550 4200
Wire Wire Line
	14550 4300 14400 4300
Wire Wire Line
	14200 3600 14350 3600
Wire Wire Line
	14350 3500 14200 3500
Wire Wire Line
	14200 3400 14350 3400
Wire Wire Line
	14350 3300 14200 3300
NoConn ~ 7750 8250
NoConn ~ 7750 8350
Wire Wire Line
	9550 6350 9750 6350
Wire Wire Line
	9550 6250 9750 6250
Wire Wire Line
	9550 6150 9750 6150
Wire Wire Line
	9550 6050 9750 6050
Wire Wire Line
	9550 6750 9750 6750
Wire Wire Line
	9750 6850 9550 6850
Text GLabel 14300 7250 2    50   Input ~ 0
Light0_bot
Wire Wire Line
	7550 7950 7750 7950
Wire Wire Line
	7750 8050 7550 8050
Wire Wire Line
	7550 8150 7750 8150
Wire Notes Line
	5550 500  5550 11200
Text GLabel 10250 2150 2    50   Input ~ 0
SDA
Text GLabel 10250 2050 2    50   Input ~ 0
SCL
Text GLabel 10250 1950 2    50   Input ~ 0
I2C_INT
Text GLabel 9450 2150 0    50   Input ~ 0
PWM0
Wire Wire Line
	9600 2150 9450 2150
Text GLabel 10250 1550 2    50   Input ~ 0
SWDIO
Text GLabel 10250 1650 2    50   Input ~ 0
SWDCK
Wire Wire Line
	9600 2250 8700 2250
Wire Wire Line
	8700 2100 8700 2250
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR0103
U 1 1 608FA848
P 8700 2100
F 0 "#PWR0103" H 8700 1950 50  0001 C CNN
F 1 "+5V" H 8715 2273 50  0000 C CNN
F 2 "" H 8700 2100 50  0001 C CNN
F 3 "" H 8700 2100 50  0001 C CNN
	1    8700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2300 6150 2300
Wire Wire Line
	6900 2100 7050 2100
Wire Wire Line
	7050 2000 6900 2000
Wire Wire Line
	6900 1900 7050 1900
Wire Wire Line
	7050 1800 6900 1800
Wire Wire Line
	6150 2150 6150 2300
$Comp
L MicroMod_tinycar-rescue:+5V-MicroMod_tinycar_symbol_library #PWR0101
U 1 1 60BE9921
P 6150 2150
F 0 "#PWR0101" H 6150 2000 50  0001 C CNN
F 1 "+5V" H 6165 2323 50  0000 C CNN
F 2 "" H 6150 2150 50  0001 C CNN
F 3 "" H 6150 2150 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
Text GLabel 7700 1700 2    50   Input ~ 0
SWDCK
Text GLabel 7700 1600 2    50   Input ~ 0
SWDIO
Wire Wire Line
	7700 2300 7550 2300
Wire Wire Line
	6900 2200 7050 2200
Text GLabel 6900 2200 0    50   Input ~ 0
PWM0
Text GLabel 7700 2300 2    50   Input ~ 0
PWM1
Text GLabel 6900 1800 0    50   Input ~ 0
CS
Text GLabel 6900 2100 0    50   Input ~ 0
SIPO
Text GLabel 6900 2000 0    50   Input ~ 0
SOPI
Text GLabel 6900 1900 0    50   Input ~ 0
SCK
Text GLabel 7700 2000 2    50   Input ~ 0
I2C_INT
Text GLabel 7700 2100 2    50   Input ~ 0
SCL
Text GLabel 7700 2200 2    50   Input ~ 0
SDA
Wire Wire Line
	7550 1500 8100 1500
Wire Wire Line
	7550 1400 8100 1400
Wire Wire Line
	8100 1400 8100 1500
Connection ~ 8100 1500
Wire Wire Line
	8100 1600 8100 1500
Wire Wire Line
	6900 1500 7050 1500
Wire Wire Line
	6900 1400 6900 1500
Wire Wire Line
	6900 1400 7050 1400
Connection ~ 6900 1400
Wire Wire Line
	6900 1250 6900 1400
$Comp
L MicroMod_tinycar-rescue:GND-MicroMod_tinycar_symbol_library #PWR023
U 1 1 60949E6F
P 8100 1600
F 0 "#PWR023" H 8100 1350 50  0001 C CNN
F 1 "GND" H 8105 1427 50  0000 C CNN
F 2 "" H 8100 1600 50  0001 C CNN
F 3 "" H 8100 1600 50  0001 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:Conn_02x15_Counter_Clockwise J3
U 1 1 606B93F8
P 7250 2100
F 0 "J3" H 7300 2950 50  0000 C CNN
F 1 "Conn_02x15_Counter_Clockwise" H 7300 1200 50  0000 C CNN
F 2 "MicroMod_tinycar_footprint_library:Bottom_adapter" H 7250 2100 50  0001 C CNN
F 3 "~" H 7250 2100 50  0001 C CNN
	1    7250 2100
	1    0    0    -1  
$EndComp
$Comp
L MicroMod_tinycar-rescue:+3V3-MicroMod_tinycar_symbol_library #PWR018
U 1 1 6093CB87
P 6900 1250
F 0 "#PWR018" H 6900 1100 50  0001 C CNN
F 1 "+3V3" H 6915 1423 50  0000 C CNN
F 2 "" H 6900 1250 50  0001 C CNN
F 3 "" H 6900 1250 50  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 7050 2800
Wire Wire Line
	7050 2700 6900 2700
Wire Wire Line
	6900 2600 7050 2600
Wire Wire Line
	7050 2500 6900 2500
Wire Wire Line
	7550 2800 7700 2800
Wire Wire Line
	7550 2700 7700 2700
Wire Wire Line
	7550 2600 7700 2600
Wire Wire Line
	7550 2500 7700 2500
Text GLabel 7700 2500 2    50   Input ~ 0
B1+_top
Text GLabel 7700 2600 2    50   Input ~ 0
B1-_top
Text GLabel 7700 2800 2    50   Input ~ 0
A1+_top
Text GLabel 7700 2700 2    50   Input ~ 0
A1-_top
Text GLabel 6900 2800 0    50   Input ~ 0
A0-_top
Text GLabel 6900 2600 0    50   Input ~ 0
B0+_top
Text GLabel 6900 2500 0    50   Input ~ 0
B0-_top
Text GLabel 6900 2700 0    50   Input ~ 0
A0+_top
Wire Wire Line
	7550 2400 7700 2400
Wire Wire Line
	6900 2400 7050 2400
Text GLabel 6900 2400 0    50   Input ~ 0
Light1_top
Text GLabel 7700 2400 2    50   Input ~ 0
Light0_top
Connection ~ 9450 1350
Wire Wire Line
	9450 2050 9600 2050
Wire Wire Line
	9600 1950 9450 1950
Wire Wire Line
	9450 1850 9600 1850
Wire Wire Line
	9600 1750 9450 1750
Text GLabel 9450 1750 0    50   Input ~ 0
CS
Text GLabel 9450 2050 0    50   Input ~ 0
SIPO
Text GLabel 9450 1950 0    50   Input ~ 0
SOPI
Text GLabel 9450 1850 0    50   Input ~ 0
SCK
Wire Wire Line
	9450 1450 9600 1450
Wire Wire Line
	9450 1350 9450 1450
Wire Wire Line
	7550 2000 7700 2000
Wire Wire Line
	7700 2100 7550 2100
Wire Wire Line
	7550 2200 7700 2200
Wire Wire Line
	10100 1950 10250 1950
Wire Wire Line
	10250 2050 10100 2050
Wire Wire Line
	10100 2150 10250 2150
Wire Wire Line
	9550 7650 9750 7650
Wire Wire Line
	9750 7750 9550 7750
Text GLabel 10250 1850 2    50   Input ~ 0
RX1
Text GLabel 10250 1750 2    50   Input ~ 0
TX1
Text GLabel 7700 1900 2    50   Input ~ 0
RX1
Text GLabel 7700 1800 2    50   Input ~ 0
TX1
Wire Wire Line
	10250 1750 10100 1750
Wire Wire Line
	10100 1850 10250 1850
Wire Wire Line
	7700 1800 7550 1800
Wire Wire Line
	7550 1900 7700 1900
Wire Wire Line
	7550 1600 7700 1600
Wire Wire Line
	7700 1700 7550 1700
Wire Wire Line
	10100 1550 10250 1550
Wire Wire Line
	10250 1650 10100 1650
Wire Wire Line
	7550 7050 7750 7050
Wire Wire Line
	7750 7150 7550 7150
$EndSCHEMATC
