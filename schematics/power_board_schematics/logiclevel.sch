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
LIBS:custom
LIBS:rlcs_power-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "RLCS power board"
Date "2017-09-24"
Rev "A"
Comp "Waterloo Rocketry"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6100 3400 0    60   ~ 0
Bidirectional Logic Level shifter\nStolen shamlessly from a sparkfun design\nhttps://www.sparkfun.com/products/12009
$Comp
L BSS138 Q1
U 1 1 59B5DA65
P 5600 3500
AR Path="/59B5D8D3/59B5DA65" Ref="Q1"  Part="1" 
AR Path="/59B5E10D/59B5DA65" Ref="Q2"  Part="1" 
AR Path="/59B5E16A/59B5DA65" Ref="Q3"  Part="1" 
F 0 "Q3" H 5800 3575 50  0000 L CNN
F 1 "BSS138" H 5800 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23_HandSoldering" H 5800 3425 50  0001 L CIN
F 3 "" H 5600 3500 50  0001 L CNN
	1    5600 3500
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 59B5DAB4
P 5300 3200
AR Path="/59B5D8D3/59B5DAB4" Ref="R12"  Part="1" 
AR Path="/59B5E10D/59B5DAB4" Ref="R16"  Part="1" 
AR Path="/59B5E16A/59B5DAB4" Ref="R20"  Part="1" 
F 0 "R20" V 5380 3200 50  0000 C CNN
F 1 "10K" V 5300 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 3200 50  0001 C CNN
F 3 "" H 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 59B5DADA
P 5850 3200
AR Path="/59B5D8D3/59B5DADA" Ref="R15"  Part="1" 
AR Path="/59B5E10D/59B5DADA" Ref="R19"  Part="1" 
AR Path="/59B5E16A/59B5DADA" Ref="R23"  Part="1" 
F 0 "R23" V 5930 3200 50  0000 C CNN
F 1 "10K" V 5850 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 3200 50  0001 C CNN
F 3 "" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 59B5DB62
P 5300 2850
AR Path="/59B5D8D3/59B5DB62" Ref="#PWR027"  Part="1" 
AR Path="/59B5E10D/59B5DB62" Ref="#PWR030"  Part="1" 
AR Path="/59B5E16A/59B5DB62" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5300 2700 50  0001 C CNN
F 1 "+3V3" H 5300 2990 50  0000 C CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "" H 5300 2850 50  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 59B5DB7F
P 5850 2850
AR Path="/59B5D8D3/59B5DB7F" Ref="#PWR028"  Part="1" 
AR Path="/59B5E10D/59B5DB7F" Ref="#PWR031"  Part="1" 
AR Path="/59B5E16A/59B5DB7F" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5850 2700 50  0001 C CNN
F 1 "+5V" H 5850 2990 50  0000 C CNN
F 2 "" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3350 5300 4350
Wire Wire Line
	5100 3600 5400 3600
Wire Wire Line
	5550 2950 5550 3300
Wire Wire Line
	5300 2850 5300 3050
Wire Wire Line
	5300 2950 5550 2950
Connection ~ 5300 2950
Wire Wire Line
	5850 3050 5850 2850
Wire Wire Line
	5850 3350 5850 4250
Wire Wire Line
	5800 3600 6050 3600
Text HLabel 5100 3600 0    60   BiDi ~ 0
3v3side
Text HLabel 6050 3600 2    60   BiDi ~ 0
5vside
Connection ~ 5850 3600
Connection ~ 5300 3600
$Comp
L R R14
U 1 1 59C6BC70
P 5600 4250
AR Path="/59B5D8D3/59C6BC70" Ref="R14"  Part="1" 
AR Path="/59B5E10D/59C6BC70" Ref="R18"  Part="1" 
AR Path="/59B5E16A/59C6BC70" Ref="R22"  Part="1" 
F 0 "R22" V 5680 4250 50  0000 C CNN
F 1 "10K" V 5600 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5530 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 4250
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 59C6BCC3
P 5300 4500
AR Path="/59B5D8D3/59C6BCC3" Ref="R13"  Part="1" 
AR Path="/59B5E10D/59C6BCC3" Ref="R17"  Part="1" 
AR Path="/59B5E16A/59C6BCC3" Ref="R21"  Part="1" 
F 0 "R21" V 5380 4500 50  0000 C CNN
F 1 "20K" V 5300 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 4500 50  0001 C CNN
F 3 "" H 5300 4500 50  0001 C CNN
	1    5300 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR029
U 1 1 59C6BCFE
P 5300 4750
AR Path="/59B5D8D3/59C6BCFE" Ref="#PWR029"  Part="1" 
AR Path="/59B5E10D/59C6BCFE" Ref="#PWR032"  Part="1" 
AR Path="/59B5E16A/59C6BCFE" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5300 4500 50  0001 C CNN
F 1 "GND" H 5300 4600 50  0000 C CNN
F 2 "" H 5300 4750 50  0001 C CNN
F 3 "" H 5300 4750 50  0001 C CNN
	1    5300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4750 5300 4650
Wire Wire Line
	5300 4250 5450 4250
Connection ~ 5300 4250
Wire Wire Line
	5850 4250 5750 4250
Text Notes 5400 4650 0    60   ~ 0
voltage divider backup\nDO NOT POPULATE BOTH THE BIDIRECTIONAL \nSHIFTER AND THE DIVIDER
Text Notes 5400 4850 0    60   ~ 0
(for some of the pins, we can probably get away with just a divider)\n
$EndSCHEMATC
