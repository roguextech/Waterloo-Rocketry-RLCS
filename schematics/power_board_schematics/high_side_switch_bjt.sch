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
Sheet 5 7
Title "RLCS power board"
Date "2017-09-24"
Rev "A"
Comp "Waterloo Rocketry"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Q_NPN_BEC Q4
U 1 1 59C530B6
P 5450 4200
AR Path="/59C52EA7/59C530B6" Ref="Q4"  Part="1" 
AR Path="/59C54642/59C530B6" Ref="Q6"  Part="1" 
F 0 "Q6" H 5650 4250 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5650 4150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5650 4300 50  0001 C CNN
F 3 "" H 5450 4200 50  0001 C CNN
	1    5450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5100 4200
$Comp
L +5V #PWR33
U 1 1 59C53227
P 5550 3850
AR Path="/59C52EA7/59C53227" Ref="#PWR33"  Part="1" 
AR Path="/59C54642/59C53227" Ref="#PWR34"  Part="1" 
F 0 "#PWR34" H 5550 3700 50  0001 C CNN
F 1 "+5V" H 5550 3990 50  0000 C CNN
F 2 "" H 5550 3850 50  0001 C CNN
F 3 "" H 5550 3850 50  0001 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3850 5550 4000
Text HLabel 5550 4800 3    60   Output ~ 0
LOAD_HIGH
Text HLabel 5100 4200 0    60   Input ~ 0
INPUT
Wire Wire Line
	5550 4400 5550 4800
$EndSCHEMATC
