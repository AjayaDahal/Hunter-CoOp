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
LIBS:2N3904
LIBS:C320C104M5U5TA
LIBS:lm324_line
LIBS:lm324_line-cache
LIBS:ARDUINO_NANO
LIBS:EC2-5NU
LIBS:sw_push_small_h
LIBS:switch_dpdt
LIBS:switch_spdt
LIBS:switches
LIBS:TMH1215D
LIBS:03 Pnematic Tester-cache
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
L ARDUINO_NANO TB1
U 1 1 5E5EBA26
P 7275 4275
F 0 "TB1" H 6775 5675 50  0000 L BNN
F 1 "ARDUINO_NANO" H 6775 2775 50  0000 L BNN
F 2 "ARDUINO_NANO_New:SHIELD_ARDUINO_NANO" H 7275 4275 50  0001 L BNN
F 3 "ARDUINO" H 7275 4275 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 7275 4275 50  0001 L BNN "Field4"
	1    7275 4275
	1    0    0    -1  
$EndComp
$Comp
L EC2-5NU K1
U 1 1 5E5EBABA
P 2750 2425
F 0 "K1" H 2550 2755 50  0000 L BNN
F 1 "EC2-24NU" H 2550 2025 50  0000 L BNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 2750 2425 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2750 2425 50  0001 L BNN
F 4 "9.4mm" H 2750 2425 50  0001 L BNN "Field4"
F 5 "Kemet" H 2750 2425 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2750 2425 50  0001 L BNN "Field6"
	1    2750 2425
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 5E5EC06A
P 3750 2475
F 0 "Q1" H 3350 2775 50  0000 L BNN
F 1 "2N3904" H 3350 2175 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3750 2475 50  0001 L BNN
F 3 "February 2003" H 3750 2475 50  0001 L BNN
F 4 "STMicroelectronics" H 3750 2475 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3750 2475 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3750 2475 50  0001 L BNN "Field6"
	1    3750 2475
	-1   0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5E5EC389
P 2725 1900
F 0 "D1" H 2725 2000 50  0000 C CNN
F 1 "D" H 2725 1800 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 2725 1900 50  0001 C CNN
F 3 "" H 2725 1900 50  0001 C CNN
	1    2725 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 5E5EE528
P 3650 2700
F 0 "#PWR2" H 3650 2450 50  0001 C CNN
F 1 "GND" H 3650 2550 50  0000 C CNN
F 2 "" H 3650 2700 50  0001 C CNN
F 3 "" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
NoConn ~ 2450 2425
NoConn ~ 3050 2425
NoConn ~ 3050 2525
NoConn ~ 3050 2625
$Comp
L EC2-5NU K2
U 1 1 5E5EE9BF
P 2750 4100
F 0 "K2" H 2550 4430 50  0000 L BNN
F 1 "EC2-24NU" H 2550 3700 50  0000 L BNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 2750 4100 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2750 4100 50  0001 L BNN
F 4 "9.4mm" H 2750 4100 50  0001 L BNN "Field4"
F 5 "Kemet" H 2750 4100 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2750 4100 50  0001 L BNN "Field6"
	1    2750 4100
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q2
U 1 1 5E5EE9C8
P 3750 4150
F 0 "Q2" H 3350 4450 50  0000 L BNN
F 1 "2N3904" H 3350 3850 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3750 4150 50  0001 L BNN
F 3 "February 2003" H 3750 4150 50  0001 L BNN
F 4 "STMicroelectronics" H 3750 4150 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3750 4150 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3750 4150 50  0001 L BNN "Field6"
	1    3750 4150
	-1   0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5E5EE9CE
P 2725 3575
F 0 "D2" H 2725 3675 50  0000 C CNN
F 1 "D" H 2725 3475 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 2725 3575 50  0001 C CNN
F 3 "" H 2725 3575 50  0001 C CNN
	1    2725 3575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5E5EE9D4
P 3650 4375
F 0 "#PWR3" H 3650 4125 50  0001 C CNN
F 1 "GND" H 3650 4225 50  0000 C CNN
F 2 "" H 3650 4375 50  0001 C CNN
F 3 "" H 3650 4375 50  0001 C CNN
	1    3650 4375
	1    0    0    -1  
$EndComp
NoConn ~ 2450 4100
NoConn ~ 3050 4100
NoConn ~ 3050 4200
NoConn ~ 3050 4300
$Comp
L EC2-5NU K3
U 1 1 5E5EEA83
P 2750 5775
F 0 "K3" H 2550 6105 50  0000 L BNN
F 1 "EC2-24NU" H 2550 5375 50  0000 L BNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 2750 5775 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2750 5775 50  0001 L BNN
F 4 "9.4mm" H 2750 5775 50  0001 L BNN "Field4"
F 5 "Kemet" H 2750 5775 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2750 5775 50  0001 L BNN "Field6"
	1    2750 5775
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q3
U 1 1 5E5EEA8C
P 3750 5825
F 0 "Q3" H 3350 6125 50  0000 L BNN
F 1 "2N3904" H 3350 5525 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3750 5825 50  0001 L BNN
F 3 "February 2003" H 3750 5825 50  0001 L BNN
F 4 "STMicroelectronics" H 3750 5825 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3750 5825 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3750 5825 50  0001 L BNN "Field6"
	1    3750 5825
	-1   0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 5E5EEA92
P 2725 5250
F 0 "D3" H 2725 5350 50  0000 C CNN
F 1 "D" H 2725 5150 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 2725 5250 50  0001 C CNN
F 3 "" H 2725 5250 50  0001 C CNN
	1    2725 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 5E5EEA98
P 3650 6050
F 0 "#PWR4" H 3650 5800 50  0001 C CNN
F 1 "GND" H 3650 5900 50  0000 C CNN
F 2 "" H 3650 6050 50  0001 C CNN
F 3 "" H 3650 6050 50  0001 C CNN
	1    3650 6050
	1    0    0    -1  
$EndComp
NoConn ~ 2450 5775
NoConn ~ 3050 5775
NoConn ~ 3050 5875
NoConn ~ 3050 5975
$Comp
L EC2-5NU K4
U 1 1 5E5EEB7F
P 2750 7100
F 0 "K4" H 2550 7430 50  0000 L BNN
F 1 "EC2-24NU" H 2550 6700 50  0000 L BNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 2750 7100 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2750 7100 50  0001 L BNN
F 4 "9.4mm" H 2750 7100 50  0001 L BNN "Field4"
F 5 "Kemet" H 2750 7100 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2750 7100 50  0001 L BNN "Field6"
	1    2750 7100
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q4
U 1 1 5E5EEB88
P 3750 7150
F 0 "Q4" H 3350 7450 50  0000 L BNN
F 1 "2N3904" H 3350 6850 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3750 7150 50  0001 L BNN
F 3 "February 2003" H 3750 7150 50  0001 L BNN
F 4 "STMicroelectronics" H 3750 7150 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3750 7150 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3750 7150 50  0001 L BNN "Field6"
	1    3750 7150
	-1   0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 5E5EEB8E
P 2725 6575
F 0 "D4" H 2725 6675 50  0000 C CNN
F 1 "D" H 2725 6475 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P10.16mm_Horizontal" H 2725 6575 50  0001 C CNN
F 3 "" H 2725 6575 50  0001 C CNN
	1    2725 6575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 5E5EEB94
P 3650 7375
F 0 "#PWR5" H 3650 7125 50  0001 C CNN
F 1 "GND" H 3650 7225 50  0000 C CNN
F 2 "" H 3650 7375 50  0001 C CNN
F 3 "" H 3650 7375 50  0001 C CNN
	1    3650 7375
	1    0    0    -1  
$EndComp
NoConn ~ 2450 7100
NoConn ~ 3050 7100
NoConn ~ 3050 7200
NoConn ~ 3050 7300
$Comp
L LED D6
U 1 1 5E5F1526
P 5925 925
F 0 "D6" H 5925 1025 50  0000 C CNN
F 1 "LED" H 5925 825 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 5925 925 50  0001 C CNN
F 3 "" H 5925 925 50  0001 C CNN
	1    5925 925 
	0    -1   -1   0   
$EndComp
$Comp
L LED D7
U 1 1 5E5F1575
P 6475 925
F 0 "D7" H 6475 1025 50  0000 C CNN
F 1 "LED" H 6475 825 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 6475 925 50  0001 C CNN
F 3 "" H 6475 925 50  0001 C CNN
	1    6475 925 
	0    -1   -1   0   
$EndComp
Text GLabel 4250 2475 2    60   Input ~ 0
SOL_Inlet
Text GLabel 4250 4150 2    60   Input ~ 0
SOL_Inlet_Ex
Text GLabel 4250 5825 2    60   Input ~ 0
SOL_Outlet_Left
Text GLabel 4250 7150 2    60   Input ~ 0
SOL_Outlet_Right
Text GLabel 6575 4775 0    60   Input ~ 0
SOL_Inlet
Text GLabel 6575 4875 0    60   Input ~ 0
SOL_Inlet_Ex
Text GLabel 6575 4975 0    60   Input ~ 0
SOL_Outlet_Left
Text GLabel 6575 5075 0    60   Input ~ 0
SOL_Outlet_Right
$Comp
L GND #PWR6
U 1 1 5E5F771B
P 5925 1400
F 0 "#PWR6" H 5925 1150 50  0001 C CNN
F 1 "GND" H 5925 1250 50  0000 C CNN
F 2 "" H 5925 1400 50  0001 C CNN
F 3 "" H 5925 1400 50  0001 C CNN
	1    5925 1400
	1    0    0    -1  
$EndComp
Text GLabel 6225 775  3    60   Input ~ 0
passLED
Text GLabel 6775 775  3    60   Input ~ 0
failLED
Text GLabel 7975 4675 2    60   Input ~ 0
passLED
Text GLabel 7975 4575 2    60   Input ~ 0
failLED
Text GLabel 9050 1775 0    60   Input ~ 0
pressureTransducer
Text GLabel 6575 3775 0    60   Input ~ 0
pressureTransducer
$Comp
L CONN_01X02_MALE J6
U 1 1 5E5FA7D4
P 9525 3550
F 0 "J6" H 9525 3725 50  0000 C CNN
F 1 "Solenoid In ex POWER CONN_01X02_MALE" V 9325 3550 50  0000 C CNN
F 2 "2 pin male connector:2_pin_male_connector" H 9525 3650 50  0001 C CNN
F 3 "" H 9525 3650 50  0001 C CNN
	1    9525 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR9
U 1 1 5E5FACD9
P 9425 4850
F 0 "#PWR9" H 9425 4600 50  0001 C CNN
F 1 "GND" H 9425 4700 50  0000 C CNN
F 2 "" H 9425 4850 50  0001 C CNN
F 3 "" H 9425 4850 50  0001 C CNN
	1    9425 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 5E5FB315
P 7975 5575
F 0 "#PWR8" H 7975 5325 50  0001 C CNN
F 1 "GND" H 7975 5425 50  0000 C CNN
F 2 "" H 7975 5575 50  0001 C CNN
F 3 "" H 7975 5575 50  0001 C CNN
	1    7975 5575
	1    0    0    -1  
$EndComp
Text GLabel 6575 3375 0    60   Input ~ 0
12V
NoConn ~ 7975 3075
NoConn ~ 7975 3175
NoConn ~ 6575 3475
NoConn ~ 6575 3675
NoConn ~ 6575 3975
NoConn ~ 6575 4075
NoConn ~ 6575 4175
NoConn ~ 6575 4275
NoConn ~ 6575 4375
NoConn ~ 6575 4575
NoConn ~ 6575 4675
NoConn ~ 7975 5175
NoConn ~ 7975 5075
NoConn ~ 7975 4975
NoConn ~ 7975 4875
$Comp
L CONN_01X02_MALE J4
U 1 1 5E5FD24C
P 9500 2075
F 0 "J4" H 9500 2250 50  0000 C CNN
F 1 "Solenoid out Ex POWER CONN_01X02_MALE" V 9325 2075 50  0000 C CNN
F 2 "2 pin male connector:2_pin_male_connector" H 9500 2175 50  0001 C CNN
F 3 "" H 9500 2175 50  0001 C CNN
	1    9500 2075
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02_MALE J5
U 1 1 5E5FD440
P 9525 2825
F 0 "J5" H 9525 3000 50  0000 C CNN
F 1 "Solenoid out POWER CONN_01X02_MALE" V 9325 2825 50  0000 C CNN
F 2 "2 pin male connector:2_pin_male_connector" H 9525 2925 50  0001 C CNN
F 3 "" H 9525 2925 50  0001 C CNN
	1    9525 2825
	0    1    1    0   
$EndComp
Text GLabel 2300 2525 0    60   Input ~ 0
SOL_Inlet_Power
Text GLabel 2300 4200 0    60   Input ~ 0
SOL_Inlet_Ex_Power
Text GLabel 9825 4725 2    60   Input ~ 0
SOL_Inlet_Power
Text GLabel 9800 3900 2    60   Input ~ 0
SOL_Inlet_Ex_Power
Text GLabel 9800 3125 2    60   Input ~ 0
SOL_Outlet_B_Power
Text GLabel 9800 2375 2    60   Input ~ 0
SOL_Outlet_A_Power
$Comp
L CONN_01X02_MALE J7
U 1 1 5E604E76
P 9525 4300
F 0 "J7" H 9525 4475 50  0000 C CNN
F 1 "Solenoid In POWER CONN_01X02_MALE" V 9325 4300 50  0000 C CNN
F 2 "2 pin male connector:2_pin_male_connector" H 9525 4400 50  0001 C CNN
F 3 "" H 9525 4400 50  0001 C CNN
	1    9525 4300
	0    1    1    0   
$EndComp
Text GLabel 825  7350 3    60   Input ~ 0
24V
Text GLabel 6575 5175 0    60   Input ~ 0
pushButton
NoConn ~ 6575 3875
$Comp
L LED D5
U 1 1 5E6127FE
P 5400 925
F 0 "D5" H 5400 1025 50  0000 C CNN
F 1 "LED" H 5400 825 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 5400 925 50  0001 C CNN
F 3 "" H 5400 925 50  0001 C CNN
	1    5400 925 
	0    -1   -1   0   
$EndComp
Text GLabel 7975 4775 2    60   Input ~ 0
amberLED
Text GLabel 1900 1075 2    60   Input ~ 0
24V
Text GLabel 5700 775  3    60   Input ~ 0
amberLED
$Comp
L R R1
U 1 1 5E618ACB
P 5550 775
F 0 "R1" V 5630 775 50  0000 C CNN
F 1 "R" V 5550 775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 775 50  0001 C CNN
F 3 "" H 5550 775 50  0001 C CNN
	1    5550 775 
	0    -1   -1   0   
$EndComp
Text Notes 650  1875 0    60   ~ 0
The switch has a LED built in.\n Once the switch is turned on, VRM \n gets curent and also the built-in led turns on in the switch. \nBarrel jack digikey: CP-066A-ND ("Gajanta"(?)) \nSwitch digikey: EG5690-ND
$Comp
L R R2
U 1 1 5E61C9E3
P 6075 775
F 0 "R2" V 6155 775 50  0000 C CNN
F 1 "R" V 6075 775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6005 775 50  0001 C CNN
F 3 "" H 6075 775 50  0001 C CNN
	1    6075 775 
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5E61CAB1
P 6625 775
F 0 "R3" V 6705 775 50  0000 C CNN
F 1 "R" V 6625 775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6555 775 50  0001 C CNN
F 3 "" H 6625 775 50  0001 C CNN
	1    6625 775 
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02_MALE J1
U 1 1 5E61E4B2
P 825 1025
F 0 "J1" H 825 1200 50  0000 C CNN
F 1 "DC adapter Main line" H 975 825 50  0000 C CNN
F 2 "barrel jack:CUI_PJ-002A" H 825 1125 50  0001 C CNN
F 3 "" H 825 1125 50  0001 C CNN
	1    825  1025
	1    0    0    -1  
$EndComp
$Comp
L SWITCH SW1
U 1 1 5E623171
P 6200 1950
F 0 "SW1" H 6200 2200 60  0000 C CNN
F 1 "PUSH to START TEST" H 6875 2150 59  0000 C CNN
F 2 "2 pin male connector:2_pin_male_connector" H 6200 1950 60  0001 C CNN
F 3 "" H 6200 1950 60  0001 C CNN
	1    6200 1950
	1    0    0    -1  
$EndComp
Text GLabel 7975 2975 2    60   Input ~ 0
arduino5V
Text GLabel 5900 1950 0    60   Input ~ 0
arduino5V
$Comp
L R R4
U 1 1 5E623B3E
P 6625 2100
F 0 "R4" V 6705 2100 50  0000 C CNN
F 1 "10K" V 6625 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6555 2100 50  0001 C CNN
F 3 "" H 6625 2100 50  0001 C CNN
	1    6625 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5E623D53
P 6625 2250
F 0 "#PWR7" H 6625 2000 50  0001 C CNN
F 1 "GND" H 6625 2100 50  0000 C CNN
F 2 "" H 6625 2250 50  0001 C CNN
F 3 "" H 6625 2250 50  0001 C CNN
	1    6625 2250
	1    0    0    -1  
$EndComp
Text GLabel 6775 1950 2    60   Input ~ 0
pushButton
$Comp
L GND #PWR1
U 1 1 5E61F53D
P 1625 1200
F 0 "#PWR1" H 1625 950 50  0001 C CNN
F 1 "GND" H 1625 1050 50  0000 C CNN
F 2 "" H 1625 1200 50  0001 C CNN
F 3 "" H 1625 1200 50  0001 C CNN
	1    1625 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04_MALE J2
U 1 1 5E6BB802
P 1600 625
F 0 "J2" H 1600 1000 50  0000 C CNN
F 1 "switch placeholder" V 1600 -75 50  0000 C CNN
F 2 "" H 1600 925 50  0001 C CNN
F 3 "" H 1600 925 50  0001 C CNN
	1    1600 625 
	0    1    1    0   
$EndComp
Wire Wire Line
	2875 1900 3075 1900
Wire Wire Line
	3075 1900 3075 2225
Wire Wire Line
	2575 1900 2450 1900
Wire Wire Line
	2450 1900 2450 2225
Wire Wire Line
	3050 2225 3650 2225
Wire Wire Line
	3650 2225 3650 2275
Connection ~ 3075 2225
Wire Wire Line
	3650 2675 3650 2700
Wire Wire Line
	3850 2475 4250 2475
Wire Wire Line
	825  2050 2450 2050
Connection ~ 2450 2050
Wire Wire Line
	2875 3575 3075 3575
Wire Wire Line
	3075 3575 3075 3900
Wire Wire Line
	2575 3575 2450 3575
Wire Wire Line
	2450 3575 2450 3900
Wire Wire Line
	3050 3900 3650 3900
Wire Wire Line
	3650 3900 3650 3950
Connection ~ 3075 3900
Wire Wire Line
	3650 4350 3650 4375
Connection ~ 2450 3725
Wire Wire Line
	2875 5250 3075 5250
Wire Wire Line
	3075 5250 3075 5575
Wire Wire Line
	2575 5250 2450 5250
Wire Wire Line
	2450 5250 2450 5575
Wire Wire Line
	3050 5575 3650 5575
Wire Wire Line
	3650 5575 3650 5625
Connection ~ 3075 5575
Wire Wire Line
	3650 6025 3650 6050
Wire Wire Line
	3850 5825 4250 5825
Connection ~ 2450 5400
Wire Wire Line
	2875 6575 3075 6575
Wire Wire Line
	3075 6575 3075 6900
Wire Wire Line
	2575 6575 2450 6575
Wire Wire Line
	2450 6575 2450 6900
Wire Wire Line
	3050 6900 3650 6900
Wire Wire Line
	3650 6900 3650 6950
Connection ~ 3075 6900
Wire Wire Line
	3650 7350 3650 7375
Wire Wire Line
	3850 7150 4250 7150
Connection ~ 2450 6725
Wire Wire Line
	825  2050 825  7350
Connection ~ 825  3725
Wire Wire Line
	3850 4150 4250 4150
Wire Wire Line
	2450 2625 825  2625
Connection ~ 825  2625
Wire Wire Line
	2450 2525 2300 2525
Wire Wire Line
	2450 4300 825  4300
Wire Wire Line
	2450 4200 2300 4200
Wire Wire Line
	825  5975 2450 5975
Wire Wire Line
	2450 5875 2300 5875
Connection ~ 825  6725
Wire Wire Line
	825  7300 2450 7300
Wire Wire Line
	2450 7200 2300 7200
Wire Wire Line
	825  6725 2450 6725
Wire Wire Line
	825  5400 2450 5400
Connection ~ 825  5400
Connection ~ 825  5975
Connection ~ 825  4300
Wire Wire Line
	825  3725 2450 3725
Wire Wire Line
	9250 3900 9425 3900
Wire Wire Line
	9250 2375 9400 2375
Wire Wire Line
	9250 3125 9425 3125
Connection ~ 9250 3125
Wire Wire Line
	9600 2375 9800 2375
Wire Wire Line
	9800 3900 9625 3900
Wire Wire Line
	9625 3900 9625 3850
Wire Wire Line
	9625 3125 9800 3125
Connection ~ 9250 2375
Wire Wire Line
	9425 3900 9425 3850
Wire Wire Line
	9625 4600 9625 4725
Wire Wire Line
	9625 4725 9825 4725
Wire Wire Line
	9250 4675 9425 4675
Connection ~ 9250 3900
Wire Wire Line
	9425 4600 9425 4850
Connection ~ 9425 4675
Connection ~ 825  7300
Wire Wire Line
	1125 1125 1625 1125
Wire Wire Line
	1625 1125 1625 1200
Wire Wire Line
	5400 1075 5400 1325
Wire Wire Line
	5400 1325 6475 1325
Wire Wire Line
	6475 1325 6475 1075
Wire Wire Line
	5925 1075 5925 1400
Connection ~ 5925 1325
Wire Wire Line
	6500 1950 6775 1950
Connection ~ 6625 1950
Wire Wire Line
	9250 1775 9250 4675
Wire Wire Line
	1125 925  1300 925 
Wire Wire Line
	1500 925  1500 1125
Connection ~ 1500 1125
Wire Wire Line
	1700 925  1700 1075
Wire Wire Line
	1900 1075 1900 925 
Connection ~ 1900 1075
$Comp
L CONN_01X03_MALE J3
U 1 1 5E6C2804
P 9250 1475
F 0 "J3" H 9250 1750 50  0000 C CNN
F 1 "Transducer" V 9050 1500 50  0000 C CNN
F 2 "" H 9250 1675 50  0001 C CNN
F 3 "" H 9250 1675 50  0001 C CNN
	1    9250 1475
	0    1    1    0   
$EndComp
Text GLabel 9450 1775 2    60   Input ~ 0
12V
Text Notes 1975 250  0    60   ~ 0
TMH 2412S will be used to regulate to 24v to 12V
$Comp
L TMH1215D PS?
U 1 1 5E727EC9
P 2900 950
F 0 "PS?" H 3950 1250 50  0000 L CNN
F 1 "TMH2412S" H 3950 1150 50  0000 L CNN
F 2 "TMH0505D" H 3950 1050 50  0001 L CNN
F 3 "https://assets.tracopower.com/20190701131007/TMH/documents/tmh-datasheet.pdf" H 3950 950 50  0001 L CNN
F 4 "TRACOPOWER 2W Isolated DC-DC Converter, Vin 10.8  13.2 V dc, Vout +/-15V dc, I/O isolation 1000V dc" H 3950 850 50  0001 L CNN "Description"
F 5 "10.2" H 3950 750 50  0001 L CNN "Height"
F 6 "Traco Power" H 3950 650 50  0001 L CNN "Manufacturer_Name"
F 7 "TMH1215D" H 3950 550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3950 450 50  0001 L CNN "Mouser Part Number"
F 9 "" H 3950 350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3950 250 50  0001 L CNN "RS Part Number"
F 11 "" H 3950 150 50  0001 L CNN "RS Price/Stock"
	1    2900 950 
	1    0    0    -1  
$EndComp
Text GLabel 2900 950  0    60   Input ~ 0
24V
$Comp
L GND #PWR?
U 1 1 5E728AE4
P 2625 1050
F 0 "#PWR?" H 2625 800 50  0001 C CNN
F 1 "GND" H 2625 900 50  0000 C CNN
F 2 "" H 2625 1050 50  0001 C CNN
F 3 "" H 2625 1050 50  0001 C CNN
	1    2625 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 1050 2900 1050
Text GLabel 2900 1350 0    60   Input ~ 0
12V
Text GLabel 1775 1075 3    60   Input ~ 0
12V
Wire Wire Line
	1700 1075 1775 1075
Text GLabel 2300 5875 0    60   Input ~ 0
SOL_Outlet_A_Power
Text GLabel 2300 7200 0    60   Input ~ 0
SOL_Outlet_B_Power
NoConn ~ 2900 1250
NoConn ~ 2900 1150
Text Notes 4725 600  0    60   ~ 0
Are we using 12V LED? Here is one big one that I found in Digikey (Part# PCL2212V100B-ND)?
$EndSCHEMATC
