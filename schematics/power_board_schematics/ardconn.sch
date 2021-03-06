EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "RLCS power board"
Date "2017-09-24"
Rev "A"
Comp "Waterloo Rocketry"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  3150 0    60   ~ 0
Arduino Pins 14 - 21
Text Notes 4750 900  0    60   ~ 0
Arduino Pins 22 - 53
Text Notes 2650 1000 0    60   ~ 0
Arduino Pins A0 - A7
Text Notes 2600 1950 0    60   ~ 0
Arduino Pins A8 - A15
Text Notes 700  2100 0    60   ~ 0
Arduino Pins 8 - 13 \n+ some others\n
Text Notes 700  950  0    60   ~ 0
Arudino Pins 0 - 7
Text Notes 850  6200 0    60   ~ 0
All Arduino connections put on this sheet\nso they can be reordered without screwing\nup the main sheet\n\n(this doesn't include power out)
$Comp
L custom:conn_22_to_53 J14
U 1 1 5E7AFC08
P 8050 2200
F 0 "J14" H 8050 3239 60  0000 C CNN
F 1 "conn_22_to_53" H 8050 3133 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x18_P2.54mm_Vertical" H 8000 3250 60  0001 C CNN
F 3 "" H 8000 3250 60  0001 C CNN
	1    8050 2200
	1    0    0    -1  
$EndComp
$Comp
L custom:Conn_0_to_7 J8
U 1 1 5E7B26E9
P 2000 1100
F 0 "J8" H 1937 1597 60  0000 C CNN
F 1 "Conn_0_to_7" H 1937 1491 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1900 1800 60  0001 C CNN
F 3 "" H 1900 1800 60  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
$Comp
L custom:conn_8_to_13 J9
U 1 1 5E7B5F51
P 2000 2250
F 0 "J9" H 1862 2847 60  0000 C CNN
F 1 "conn_8_to_13" H 1862 2741 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 2000 3150 60  0001 C CNN
F 3 "" H 2000 3150 60  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L custom:Conn_14_to_21 J10
U 1 1 5E7B8C25
P 2050 3350
F 0 "J10" H 1912 3847 60  0000 C CNN
F 1 "Conn_14_to_21" H 1912 3741 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1950 4250 60  0001 C CNN
F 3 "" H 1950 4250 60  0001 C CNN
	1    2050 3350
	1    0    0    -1  
$EndComp
$Comp
L custom:conn_A0_to_A7 J13
U 1 1 5E7C0D80
P 4500 1250
F 0 "J13" H 4112 1847 60  0000 C CNN
F 1 "conn_A0_to_A7" H 4112 1741 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4500 1850 60  0001 C CNN
F 3 "" H 4500 1850 60  0001 C CNN
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L custom:conn_A8_to_A15 J12
U 1 1 5E7C1AAF
P 4400 2250
F 0 "J12" H 3962 2847 60  0000 C CNN
F 1 "conn_A8_to_A15" H 3962 2741 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4450 2850 60  0001 C CNN
F 3 "" H 4450 2850 60  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1400 7400 1050
Wire Wire Line
	7400 1400 7800 1400
Wire Wire Line
	8700 1400 8300 1400
Wire Wire Line
	8700 1400 8700 1050
Wire Wire Line
	8750 2800 9000 2800
$Comp
L power:GND #PWR027
U 1 1 5EBCBE4C
P 7750 3250
F 0 "#PWR027" H 7750 3000 50  0001 C CNN
F 1 "GND" H 7755 3077 50  0000 C CNN
F 2 "" H 7750 3250 50  0001 C CNN
F 3 "" H 7750 3250 50  0001 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3100 7750 3250
$Comp
L power:GND #PWR028
U 1 1 5EBD1205
P 8350 3250
F 0 "#PWR028" H 8350 3000 50  0001 C CNN
F 1 "GND" H 8355 3077 50  0000 C CNN
F 2 "" H 8350 3250 50  0001 C CNN
F 3 "" H 8350 3250 50  0001 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3100 8350 3250
$Comp
L power:+5V #PWR026
U 1 1 5ECC7808
P 7400 1050
F 0 "#PWR026" H 7400 900 50  0001 C CNN
F 1 "+5V" H 7415 1223 50  0000 C CNN
F 2 "" H 7400 1050 50  0001 C CNN
F 3 "" H 7400 1050 50  0001 C CNN
	1    7400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5ECC83F1
P 8700 1050
F 0 "#PWR029" H 8700 900 50  0001 C CNN
F 1 "+5V" H 8715 1223 50  0000 C CNN
F 2 "" H 8700 1050 50  0001 C CNN
F 3 "" H 8700 1050 50  0001 C CNN
	1    8700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3100 7800 3100
Wire Wire Line
	8700 3100 9000 3100
Wire Wire Line
	8300 2600 8750 2600
Wire Wire Line
	8750 2600 8750 2800
Wire Wire Line
	8300 2500 8800 2500
Wire Wire Line
	8800 2600 9000 2600
Wire Wire Line
	8800 2500 8800 2600
Wire Wire Line
	8300 2300 8800 2300
Wire Wire Line
	8800 2200 9000 2200
Wire Wire Line
	8800 2300 8800 2200
Wire Wire Line
	8300 2200 8750 2200
Wire Wire Line
	8750 2000 9000 2000
Wire Wire Line
	8750 2200 8750 2000
Wire Wire Line
	8300 2400 9000 2400
Wire Wire Line
	7800 2200 7350 2200
Wire Wire Line
	7300 2300 7300 2200
Wire Wire Line
	7800 2300 7300 2300
Wire Wire Line
	7300 2500 7300 2600
Wire Wire Line
	7800 2500 7300 2500
Wire Wire Line
	7350 2600 7350 2800
Wire Wire Line
	7800 2600 7350 2600
Wire Wire Line
	8300 3100 8350 3100
Wire Wire Line
	9000 3300 8650 3300
Wire Wire Line
	2150 3800 2450 3800
Wire Wire Line
	7150 1750 7500 1750
Text GLabel 7100 2600 0    60   Input ~ 0
Sevenseg_D1
Text GLabel 9000 2000 2    60   Input ~ 0
Sevenseg_A
Text GLabel 7100 2000 0    60   Input ~ 0
Sevenseg_C
Text GLabel 7100 2800 0    60   Input ~ 0
Sevenseg_D
Text GLabel 9000 2800 2    60   Input ~ 0
Sevenseg_F
Text GLabel 8850 1750 2    60   Input ~ 0
ARD_CON_SD_WP
Text GLabel 9000 3300 2    60   Input ~ 0
ARD_CON_SD_SS
Text GLabel 9000 3100 2    60   Input ~ 0
ARD_CON_SD_MOSI
Text GLabel 7150 1750 0    60   Input ~ 0
ARD_CON_SD_CD
Wire Wire Line
	7350 2200 7350 2000
Text GLabel 7100 2200 0    60   Input ~ 0
Sevenseg_D2
Text GLabel 7100 2400 0    60   Input ~ 0
Sevenseg_E
Text GLabel 9000 2200 2    60   Input ~ 0
Sevenseg_DP
Text GLabel 9000 2600 2    60   Input ~ 0
Sevenseg_G
Text GLabel 9000 2400 2    60   Input ~ 0
Sevenseg_B
Wire Wire Line
	7350 2800 7100 2800
Wire Wire Line
	7300 2600 7100 2600
Wire Wire Line
	7300 2200 7100 2200
Wire Wire Line
	7800 2400 7100 2400
Wire Wire Line
	7350 2000 7100 2000
Wire Wire Line
	2500 3650 2300 3650
Wire Wire Line
	2300 3650 2300 3700
Wire Wire Line
	2150 3700 2300 3700
Text GLabel 2500 3650 2    60   Input ~ 0
ARD_CON_SDA
Wire Wire Line
	5250 3250 5250 3650
$Comp
L custom:conn_power J11
U 1 1 5ED49DCC
P 4350 3000
F 0 "J11" H 4237 3197 60  0000 C CNN
F 1 "conn_power" H 4237 3091 60  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4350 3200 60  0001 C CNN
F 3 "" H 4350 3200 60  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3250 5250 3250
Wire Wire Line
	4700 3250 4450 3250
Wire Wire Line
	5250 3650 4450 3650
$Comp
L Switch:SW_Push S1
U 1 1 5EB5D71A
P 4900 3250
F 0 "S1" H 4900 3535 50  0000 C CNN
F 1 "SW_Push" H 4900 3444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
Text GLabel 2450 3800 2    60   Input ~ 0
ARD_CON_SCL
Text Notes 2800 3150 0    60   ~ 0
Arduino Pins Power
Wire Wire Line
	7500 1750 7500 2000
Wire Wire Line
	7500 2000 7800 2000
Wire Wire Line
	8850 1750 8550 1750
Wire Wire Line
	8550 1750 8550 2000
Wire Wire Line
	8550 2000 8300 2000
Wire Wire Line
	8700 2900 8700 3100
Wire Wire Line
	8650 3300 8650 3000
Wire Wire Line
	8650 3000 8300 3000
Wire Wire Line
	8300 2900 8700 2900
Wire Wire Line
	7450 2900 7450 3000
Wire Wire Line
	7450 3000 7250 3000
Wire Wire Line
	7800 2900 7450 2900
Text GLabel 7250 3000 0    60   Input ~ 0
ARD_CON_SD_MISO
Text GLabel 7200 3200 0    60   Input ~ 0
ARD_CON_SD_SCK
Wire Wire Line
	7800 3000 7500 3000
Wire Wire Line
	7500 3000 7500 3200
Wire Wire Line
	7500 3200 7200 3200
$EndSCHEMATC
