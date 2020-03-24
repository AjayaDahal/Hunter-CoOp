EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "LM324 line follower with arduino"
Date "2020-03-22"
Rev "Rev 3.0"
Comp "Ajaya Dahal"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L new-schematics-rescue:lm324 U1
U 1 1 5E398062
P 5500 9600
F 0 "U1" V 6040 9620 60  0000 C CNN
F 1 "lm324" V 4980 9620 60  0000 C CNN
F 2 "mod files:LM324N" V 5450 9150 60  0001 C CNN
F 3 "" V 5450 9150 60  0001 C CNN
	1    5500 9600
	-1   0    0    -1  
$EndComp
$Comp
L new-schematics-rescue:Screw_Terminal_1x02 J4
U 1 1 5E398223
P 3000 5750
F 0 "J4" V 3100 5500 50  0000 C TNN
F 1 "PowerIN" V 3000 5400 50  0000 C TNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3000 5525 50  0001 C CNN
F 3 "" H 2975 5750 50  0001 C CNN
	1    3000 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E398258
P 3450 10450
F 0 "R7" V 3530 10450 50  0000 C CNN
F 1 "1k" V 3450 10450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 10450 50  0001 C CNN
F 3 "" H 3450 10450 50  0001 C CNN
	1    3450 10450
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:EC2-5NU K2
U 1 1 5E3982FA
P 2450 10450
F 0 "K2" H 2250 10780 50  0000 L BNN
F 1 "EC2-5NU" H 2250 10050 50  0000 L BNN
F 2 "EC2-5NU:RELAY_EC2-5NU" H 2450 10450 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2450 10450 50  0001 L BNN
F 4 "9.4mm" H 2450 10450 50  0001 L BNN "Field4"
F 5 "Kemet" H 2450 10450 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2450 10450 50  0001 L BNN "Field6"
	1    2450 10450
	1    0    0    -1  
$EndComp
$Comp
L new-schematics-rescue:2N3904 Q2
U 1 1 5E398380
P 3150 10450
F 0 "Q2" H 2750 10750 50  0000 L BNN
F 1 "2N3904" H 2750 10150 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3150 10450 50  0001 L BNN
F 3 "February 2003" H 3150 10450 50  0001 L BNN
F 4 "STMicroelectronics" H 3150 10450 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3150 10450 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3150 10450 50  0001 L BNN "Field6"
	1    3150 10450
	-1   0    0    1   
$EndComp
Text GLabel 5200 10200 3    60   Input ~ 0
OutputPIN1
Text GLabel 5300 10200 3    60   Input ~ 0
Input1-
Text GLabel 5400 10200 3    60   Input ~ 0
Input1+
Text GLabel 5500 10200 3    60   Input ~ 0
V+
NoConn ~ 5600 9000
NoConn ~ 5700 9000
NoConn ~ 5800 9000
NoConn ~ 5600 10200
NoConn ~ 5700 10200
NoConn ~ 5800 10200
Text GLabel 5500 9000 1    60   Input ~ 0
GND
Text GLabel 5400 9000 1    60   Input ~ 0
Input4+
Text GLabel 5300 9000 1    60   Input ~ 0
Input4-
Text GLabel 5200 9000 1    60   Input ~ 0
OutputPIN4
$Comp
L Device:R R3
U 1 1 5E399A6C
P 3250 10000
F 0 "R3" V 3330 10000 50  0000 C CNN
F 1 "270" V 3250 10000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3180 10000 50  0001 C CNN
F 3 "" H 3250 10000 50  0001 C CNN
	1    3250 10000
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:1N4001 D4
U 1 1 5E399BD6
P 2450 9950
F 0 "D4" H 2450 10050 50  0000 C CNN
F 1 "1N4001" H 2450 9850 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2450 9775 50  0001 C CNN
F 3 "" H 2450 9950 50  0001 C CNN
	1    2450 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable R5
U 1 1 5E399E3B
P 3300 2350
F 0 "R5" V 3400 2250 50  0000 L CNN
F 1 "10k" V 3200 2300 50  0000 L CNN
F 2 "10k pot trimmer:TRIM_3306F-1-503" V 3230 2350 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Text GLabel 6650 9550 1    60   Input ~ 0
Input1-
Text GLabel 6750 9550 1    60   Input ~ 0
Input1+
Text GLabel 13700 3600 3    60   Input ~ 0
V+
Text GLabel 4400 5800 1    60   Input ~ 0
GND
Text GLabel 6350 9550 1    60   Input ~ 0
Input4+
Text GLabel 6250 9550 1    60   Input ~ 0
Input4-
NoConn ~ 2750 10450
NoConn ~ 2750 10550
NoConn ~ 2750 10650
NoConn ~ 2150 10450
Text GLabel 4050 10450 2    60   Input ~ 0
OutputPIN1
$Comp
L Device:R R8
U 1 1 5E3A107F
P 6250 9800
F 0 "R8" V 6150 9800 50  0000 C CNN
F 1 "10k" V 6250 9800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6180 9800 50  0001 C CNN
F 3 "" H 6250 9800 50  0001 C CNN
	1    6250 9800
	1    0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5E3A1085
P 6350 9800
F 0 "R9" V 6430 9800 50  0000 C CNN
F 1 "470R" V 6350 9800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6280 9800 50  0001 C CNN
F 3 "" H 6350 9800 50  0001 C CNN
	1    6350 9800
	1    0    0    1   
$EndComp
Text GLabel 3700 2750 3    60   Input ~ 0
GND
$Comp
L Device:R R10
U 1 1 5E3BDBB7
P 6650 9800
F 0 "R10" V 6550 9800 50  0000 C CNN
F 1 "10k" V 6650 9800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 9800 50  0001 C CNN
F 3 "" H 6650 9800 50  0001 C CNN
	1    6650 9800
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5E3BDBBD
P 6750 9800
F 0 "R11" V 6830 9800 50  0000 C CNN
F 1 "470R" V 6750 9800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 9800 50  0001 C CNN
F 3 "" H 6750 9800 50  0001 C CNN
	1    6750 9800
	1    0    0    1   
$EndComp
$Comp
L new-schematics-rescue:ARDUINO_NANO TB1
U 1 1 5E3C6B0F
P 11050 6450
F 0 "TB1" H 10600 7900 50  0000 L BNN
F 1 "ARDUINO_NANO" H 10550 4950 50  0000 L BNN
F 2 "mod files:SHIELD_ARDUINO_NANO" H 11050 6450 50  0001 L BNN
F 3 "ARDUINO" H 11050 6450 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 11050 6450 50  0001 L BNN "Field4"
	1    11050 6450
	0    1    1    0   
$EndComp
Text GLabel 10550 5750 1    60   Input ~ 0
Input1-
Text GLabel 10450 5750 1    60   Input ~ 0
Input4-
Text GLabel 13150 5450 0    60   Input ~ 0
arOutputPIN1
Text GLabel 13150 5550 0    60   Input ~ 0
arOutputPIN2
Text GLabel 13150 5650 0    60   Input ~ 0
arOutputPIN3
Text GLabel 10750 7150 3    60   Input ~ 0
arOutputPIN4
Text GLabel 11950 5750 1    60   Input ~ 0
5V+ard
Text GLabel 9750 7200 3    60   Input ~ 0
GND
$Comp
L new-schematics-rescue:L293D U2
U 1 1 5E3CE25F
P 13950 5350
F 0 "U2" H 13350 6000 50  0000 L BNN
F 1 "L293D" H 13350 4550 50  0000 L BNN
F 2 "mod files:DIP880W50P254L2000H510Q16" H 13950 5350 50  0001 L BNN
F 3 "" H 13950 5350 50  0001 L BNN
F 4 "" H 13950 5350 50  0001 L BNN "Field4"
F 5 "" H 13950 5350 50  0001 L BNN "Field5"
F 6 "7.1" H 13950 5350 50  0001 L BNN "Field6"
F 7 "16.0" H 13950 5350 50  0001 L BNN "Field7"
F 8 "" H 13950 5350 50  0001 L BNN "Field8"
F 9 "0.5" H 13950 5350 50  0001 L BNN "Field9"
F 10 "" H 13950 5350 50  0001 L BNN "Field10"
F 11 "IPC 7351B" H 13950 5350 50  0001 L BNN "Field11"
F 12 "20.0" H 13950 5350 50  0001 L BNN "Field12"
F 13 "" H 13950 5350 50  0001 L BNN "Field13"
F 14 "0.5" H 13950 5350 50  0001 L BNN "Field14"
F 15 "" H 13950 5350 50  0001 L BNN "Field15"
F 16 "5.1" H 13950 5350 50  0001 L BNN "Field16"
F 17 "5.1" H 13950 5350 50  0001 L BNN "Field17"
F 18 "5.1" H 13950 5350 50  0001 L BNN "Field18"
F 19 "" H 13950 5350 50  0001 L BNN "Field19"
F 20 "" H 13950 5350 50  0001 L BNN "Field20"
F 21 "2.54" H 13950 5350 50  0001 L BNN "Field21"
F 22 "" H 13950 5350 50  0001 L BNN "Field22"
F 23 "" H 13950 5350 50  0001 L BNN "Field23"
F 24 "" H 13950 5350 50  0001 L BNN "Field24"
F 25 "0.5" H 13950 5350 50  0001 L BNN "Field25"
F 26 "7.1" H 13950 5350 50  0001 L BNN "Field26"
F 27 "8.8" H 13950 5350 50  0001 L BNN "Field27"
F 28 "" H 13950 5350 50  0001 L BNN "Field28"
F 29 "" H 13950 5350 50  0001 L BNN "Field29"
F 30 "7.1" H 13950 5350 50  0001 L BNN "Field30"
F 31 "5.1mm" H 13950 5350 50  0001 L BNN "Field31"
F 32 "ST Microelectronics" H 13950 5350 50  0001 L BNN "Field32"
F 33 "" H 13950 5350 50  0001 L BNN "Field33"
F 34 "" H 13950 5350 50  0001 L BNN "Field34"
F 35 "20.0" H 13950 5350 50  0001 L BNN "Field35"
F 36 "20.0" H 13950 5350 50  0001 L BNN "Field36"
	1    13950 5350
	1    0    0    -1  
$EndComp
Text GLabel 14800 5950 3    60   Input ~ 0
GND
Text GLabel 14750 4850 2    60   Input ~ 0
9V+
Text GLabel 14800 4950 2    60   Input ~ 0
5V+ard
Text GLabel 13150 5750 0    60   Input ~ 0
arOutputPIN4
Text GLabel 14750 5450 2    60   Input ~ 0
L293D_Motor1a
Text GLabel 14750 5550 2    60   Input ~ 0
L293D_Motor1b
Text GLabel 14750 5650 2    60   Input ~ 0
L293D_Motor2a
Text GLabel 14750 5750 2    60   Input ~ 0
L293D_Motor2b
Text GLabel 1850 10450 0    60   Input ~ 0
Motor2a
Text GLabel 14000 1750 1    60   Input ~ 0
Motor1a
Text GLabel 15150 1750 1    60   Input ~ 0
Motor2a
$Comp
L new-schematics-rescue:CONN_01X03_MALE J6
U 1 1 5E3EC774
P 13500 3300
F 0 "J6" H 13500 3575 50  0000 C CNN
F 1 "CONN_01X03_MALE 1-Ard" V 13350 3500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 13500 3500 50  0001 C CNN
F 3 "" H 13500 3500 50  0001 C CNN
	1    13500 3300
	0    1    1    0   
$EndComp
Text GLabel 13300 3600 3    60   Input ~ 0
5V+ard
Text GLabel 3150 5500 2    60   Input ~ 0
9V+
$Comp
L new-schematics-rescue:CONN_01X02_MALE J3
U 1 1 5E3F1BA8
P 3000 5150
F 0 "J3" H 3000 5325 50  0000 C CNN
F 1 "9V+" H 3000 4950 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 3000 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5150
	0    -1   1    0   
$EndComp
Text GLabel 10350 5750 1    60   Input ~ 0
arOutputPIN1
Text GLabel 10250 5750 1    60   Input ~ 0
arOutputPIN2
Text GLabel 10150 5750 1    60   Input ~ 0
arOutputPIN3
Wire Wire Line
	2300 9950 2150 9950
Wire Wire Line
	2600 9950 2750 9950
Wire Wire Line
	2750 9950 2750 10100
Wire Wire Line
	2150 10550 2050 10550
Wire Wire Line
	2050 10550 2050 10250
Wire Wire Line
	2150 10650 1950 10650
Wire Wire Line
	1950 10650 1950 10450
Wire Wire Line
	1950 10450 1850 10450
Wire Wire Line
	3050 9750 3050 10000
Wire Wire Line
	3050 10000 3100 10000
Wire Wire Line
	3400 10000 3750 10000
Wire Wire Line
	3600 10450 3750 10450
Wire Wire Line
	3300 10450 3250 10450
Wire Wire Line
	2750 10100 2950 10100
Wire Wire Line
	2950 10100 2950 10650
Wire Wire Line
	2950 10650 3050 10650
Connection ~ 2750 10100
Connection ~ 3050 10000
Wire Wire Line
	6250 9550 6250 9650
Wire Wire Line
	6350 9550 6350 9650
Wire Wire Line
	6650 9550 6650 9650
Wire Wire Line
	6750 9550 6750 9650
Wire Wire Line
	2100 1600 2250 1600
Wire Wire Line
	13150 4550 13150 5150
Wire Wire Line
	13150 4550 15050 4550
Wire Wire Line
	15050 4550 15050 5100
Wire Wire Line
	15050 5100 14750 5100
Wire Wire Line
	14750 5100 14750 4950
Connection ~ 13150 5150
$Comp
L new-schematics-rescue:CONN_01X04_MALE J5
U 1 1 5E3F545E
P 9050 5600
F 0 "J5" H 9050 5975 50  0000 C CNN
F 1 "CONN Arduino Backup Motor driver" H 9400 5200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9050 5900 50  0001 C CNN
F 3 "" H 9050 5900 50  0001 C CNN
	1    9050 5600
	0    -1   -1   0   
$EndComp
NoConn ~ 10150 7150
NoConn ~ 10250 7150
NoConn ~ 10350 7150
NoConn ~ 10450 7150
NoConn ~ 10550 7150
NoConn ~ 10650 7150
NoConn ~ 12150 7150
NoConn ~ 12250 7150
NoConn ~ 11850 5750
NoConn ~ 11650 5750
NoConn ~ 11450 5750
NoConn ~ 11350 5750
NoConn ~ 11150 5750
NoConn ~ 11050 5750
NoConn ~ 10950 5750
NoConn ~ 10750 5750
NoConn ~ 10650 5750
Wire Wire Line
	9750 7150 9750 7200
Wire Wire Line
	14750 4950 14800 4950
Connection ~ 14750 4950
Wire Wire Line
	3750 10300 3750 10450
Connection ~ 3750 10450
Wire Wire Line
	14800 5950 14750 5950
Wire Wire Line
	2750 10100 2750 10250
Wire Wire Line
	3050 10000 3050 10250
Wire Wire Line
	13150 5150 13150 5250
Wire Wire Line
	3750 10450 4050 10450
Wire Wire Line
	2150 9950 2150 10250
$Comp
L LM317T:LM317T IC1
U 1 1 5E788F45
P 2150 5400
F 0 "IC1" H 2492 4935 50  0000 C CNN
F 1 "LM317T" H 2492 5026 50  0000 C CNN
F 2 "mod files:TO270P460X1020X2008-3P" H 2900 5500 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00000455.pdf" H 2900 5400 50  0001 L CNN
F 4 "Standard Regulator 1.2V to 37V 1.5A STMicroelectronics LM317T, Single Linear Voltage Regulator, 1.5A Adjustable 1.2  37 V, 3-Pin TO-220" H 2900 5300 50  0001 L CNN "Description"
F 5 "4.6" H 2900 5200 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 2900 5100 50  0001 L CNN "Manufacturer_Name"
F 7 "LM317T" H 2900 5000 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "511-LM317T" H 2900 4900 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=511-LM317T" H 2900 4800 50  0001 L CNN "Mouser Price/Stock"
F 10 "7140792P" H 2900 4700 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/7140792P" H 2900 4600 50  0001 L CNN "RS Price/Stock"
F 12 "70013581" H 2900 4500 50  0001 L CNN "Allied_Number"
F 13 "http://www.alliedelec.com/stmicroelectronics-lm317t/70013581/" H 2900 4400 50  0001 L CNN "Allied Price/Stock"
	1    2150 5400
	-1   0    0    1   
$EndComp
$Comp
L new-schematics-rescue:1N4001 D1
U 1 1 5E78BA5C
P 1900 5950
F 0 "D1" H 1900 6050 50  0000 C CNN
F 1 "1N4001" H 1700 6000 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 1900 5775 50  0001 C CNN
F 3 "" H 1900 5950 50  0001 C CNN
	1    1900 5950
	1    0    0    -1  
$EndComp
$Comp
L new-schematics-rescue:1N4001 D2
U 1 1 5E78C902
P 2300 6250
F 0 "D2" V 2200 6200 50  0000 C CNN
F 1 "1N4001" V 2500 6300 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2300 6075 50  0001 C CNN
F 3 "" H 2300 6250 50  0001 C CNN
	1    2300 6250
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C1
U 1 1 5E792132
P 1750 6450
F 0 "C1" H 1858 6595 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 950 6400 45  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1750 6700 20  0001 C CNN
F 3 "" H 1750 6450 50  0001 C CNN
F 4 "CAP-12416" H 1100 6500 60  0000 L CNN "Field4"
	1    1750 6450
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-0402-16V-10% C3
U 1 1 5E793491
P 2750 6450
F 0 "C3" H 2858 6595 45  0000 L CNN
F 1 "1.0UF-0402-16V-10%" H 2858 6511 45  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 2750 6700 20  0001 C CNN
F 3 "" H 2750 6450 50  0001 C CNN
F 4 "CAP-12417" H 2858 6416 60  0000 L CNN "Field4"
	1    2750 6450
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:10UF-0805-10V-10% C2
U 1 1 5E794628
P 2300 6750
F 0 "C2" H 2408 6895 45  0000 L CNN
F 1 "10UF-0805-10V-10%" H 2408 6811 45  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 2300 7000 20  0001 C CNN
F 3 "" H 2300 6750 50  0001 C CNN
F 4 "CAP-11330" H 2450 6700 60  0000 L CNN "Field4"
	1    2300 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E794C1F
P 2450 6250
F 0 "R1" H 2520 6296 50  0000 L CNN
F 1 "240" H 2520 6205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2380 6250 50  0001 C CNN
F 3 "~" H 2450 6250 50  0001 C CNN
	1    2450 6250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:TRIMPOT-PTH-10MM-KNOB-1_2W-10% VR1
U 1 1 5E7962BE
P 2050 6600
F 0 "VR1" H 1983 6695 45  0000 R CNN
F 1 "10K pot" H 2050 6450 45  0000 R CNN
F 2 "10k pot trimmer:TRIM_3306F-1-503" V 1900 6600 20  0001 C CNN
F 3 "" H 2050 6600 60  0001 C CNN
F 4 "RES-09730" H 2050 6250 60  0000 R CNN "Field4"
	1    2050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5500 3100 5500
Wire Wire Line
	3100 5500 3100 5450
Wire Wire Line
	3100 5550 3100 5500
Connection ~ 3100 5500
Wire Wire Line
	2900 5450 2900 5500
Text GLabel 2150 5200 2    60   Input ~ 0
IN
Text GLabel 2150 5300 2    60   Input ~ 0
OUT
Text GLabel 2150 5400 2    60   Input ~ 0
Adjust
Wire Wire Line
	2750 5550 2750 5500
Wire Wire Line
	2750 5500 2900 5500
Connection ~ 2900 5500
Wire Wire Line
	2900 5500 2900 5550
Text GLabel 1700 6100 0    60   Input ~ 0
IN
Text GLabel 2200 5900 1    60   Input ~ 0
OUT
Wire Wire Line
	1700 6100 1750 6100
Wire Wire Line
	1750 6100 1750 5950
Wire Wire Line
	1750 6100 1750 6250
Connection ~ 1750 6100
Text GLabel 2050 6300 1    60   Input ~ 0
Adjust
Wire Wire Line
	2300 5950 2300 6100
Connection ~ 2300 5950
Wire Wire Line
	2300 5950 2450 5950
Wire Wire Line
	2450 6100 2450 5950
Connection ~ 2450 5950
Wire Wire Line
	2450 6400 2300 6400
Connection ~ 2300 6400
Wire Wire Line
	2050 6400 2300 6400
Wire Wire Line
	2050 6300 2050 6400
Connection ~ 2050 6400
Wire Wire Line
	1750 6550 1750 6850
Wire Wire Line
	2300 6400 2300 6550
Wire Wire Line
	2450 5950 2750 5950
Wire Wire Line
	2750 6250 2750 5950
Wire Wire Line
	2300 6850 2750 6850
Wire Wire Line
	2750 6850 2750 6550
Connection ~ 2300 6850
Wire Wire Line
	2300 6850 2300 6950
Wire Wire Line
	2050 5950 2200 5950
Wire Wire Line
	2200 5900 2200 5950
Connection ~ 2200 5950
Wire Wire Line
	2200 5950 2300 5950
Wire Wire Line
	1750 6850 2100 6850
Wire Wire Line
	2250 6600 2250 6650
Wire Wire Line
	2250 6650 2100 6650
Wire Wire Line
	2100 6650 2100 6850
Connection ~ 2100 6850
Wire Wire Line
	2100 6850 2300 6850
NoConn ~ 2050 6800
Connection ~ 2750 5950
Text GLabel 13500 3600 3    60   Input ~ 0
5V
Text GLabel 6500 10100 3    60   Input ~ 0
V+
Wire Wire Line
	6250 9950 6250 10000
Wire Wire Line
	6250 10000 6350 10000
Wire Wire Line
	6750 10000 6750 9950
Wire Wire Line
	6350 9950 6350 10000
Connection ~ 6350 10000
Wire Wire Line
	6350 10000 6500 10000
Wire Wire Line
	6650 9950 6650 10000
Connection ~ 6650 10000
Wire Wire Line
	6650 10000 6750 10000
Wire Wire Line
	6500 10000 6500 10100
Connection ~ 6500 10000
Wire Wire Line
	6500 10000 6650 10000
$Comp
L power:GND #PWR03
U 1 1 5E84A34F
P 4400 6350
F 0 "#PWR03" H 4400 6100 50  0001 C CNN
F 1 "GND" H 4350 6200 50  0000 C CNN
F 2 "" H 4400 6350 50  0001 C CNN
F 3 "" H 4400 6350 50  0001 C CNN
	1    4400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6350 4400 5800
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5E85D91C
P 14000 1950
F 0 "J7" V 14154 1762 50  0000 R CNN
F 1 "Conn_01x02_Male" V 13900 2050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 14000 1950 50  0001 C CNN
F 3 "~" H 14000 1950 50  0001 C CNN
	1    14000 1950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5E85E503
P 15150 1950
F 0 "J8" V 15304 1762 50  0000 R CNN
F 1 "Conn_01x02_Male" V 15050 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 15150 1950 50  0001 C CNN
F 3 "~" H 15150 1950 50  0001 C CNN
	1    15150 1950
	0    1    -1   0   
$EndComp
NoConn ~ 12350 7150
$Comp
L Device:R_Variable R4
U 1 1 5E3B2CF7
P 3300 1850
F 0 "R4" V 3400 1750 50  0000 L CNN
F 1 "10k" V 3200 1800 50  0000 L CNN
F 2 "10k pot trimmer:TRIM_3306F-1-503" V 3230 1850 50  0001 C CNN
F 3 "" H 3300 1850 50  0001 C CNN
	1    3300 1850
	0    1    1    0   
$EndComp
Text GLabel 3000 1850 1    60   Input ~ 0
Input4+
Text GLabel 2900 1850 1    60   Input ~ 0
Input4-
Wire Wire Line
	3000 1850 3150 1850
Wire Wire Line
	3450 1850 3450 2100
Wire Wire Line
	3450 2100 3600 2100
Connection ~ 3450 2100
Wire Wire Line
	3450 2100 3450 2350
Wire Wire Line
	2750 1850 2900 1850
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E8A1F5B
P 1900 1700
F 0 "J1" H 2008 1981 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2008 1890 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 1900 1700 50  0001 C CNN
F 3 "~" H 1900 1700 50  0001 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5E8A2B7E
P 1900 2500
F 0 "J2" H 1872 2382 50  0000 R CNN
F 1 "Conn_01x04_Male" H 1872 2473 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical" H 1900 2500 50  0001 C CNN
F 3 "~" H 1900 2500 50  0001 C CNN
	1    1900 2500
	1    0    0    1   
$EndComp
Connection ~ 3600 2100
Wire Wire Line
	2100 1700 2550 1700
Wire Wire Line
	2100 2600 2250 2600
Wire Wire Line
	2100 2400 2750 2400
Wire Wire Line
	2750 2400 2750 2350
Wire Wire Line
	3600 1700 3600 2100
Wire Wire Line
	2100 1800 2750 1800
Wire Wire Line
	2750 1800 2750 1850
Text GLabel 2100 1900 2    60   Input ~ 0
analog4+
Text GLabel 2100 2300 2    60   Input ~ 0
analog1+
Wire Wire Line
	2100 2500 2550 2500
Wire Wire Line
	3600 2100 3600 2500
$Comp
L Device:R R15
U 1 1 5E91207D
P 13650 9250
F 0 "R15" V 13730 9250 50  0000 C CNN
F 1 "1k" V 13650 9250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 13580 9250 50  0001 C CNN
F 3 "" H 13650 9250 50  0001 C CNN
	1    13650 9250
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:EC2-5NU K4
U 1 1 5E912086
P 12650 9250
F 0 "K4" H 12450 9580 50  0000 L BNN
F 1 "EC2-5NU" H 12450 8850 50  0000 L BNN
F 2 "EC2-5NU:RELAY_EC2-5NU" H 12650 9250 50  0001 L BNN
F 3 "Manufacturer recommendations" H 12650 9250 50  0001 L BNN
F 4 "9.4mm" H 12650 9250 50  0001 L BNN "Field4"
F 5 "Kemet" H 12650 9250 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 12650 9250 50  0001 L BNN "Field6"
	1    12650 9250
	1    0    0    -1  
$EndComp
$Comp
L new-schematics-rescue:2N3904 Q4
U 1 1 5E91208F
P 13350 9250
F 0 "Q4" H 12950 9550 50  0000 L BNN
F 1 "2N3904" H 12950 8950 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 13350 9250 50  0001 L BNN
F 3 "February 2003" H 13350 9250 50  0001 L BNN
F 4 "STMicroelectronics" H 13350 9250 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 13350 9250 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 13350 9250 50  0001 L BNN "Field6"
	1    13350 9250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D10
U 1 1 5E912095
P 13950 8950
F 0 "D10" H 13950 9050 50  0000 C CNN
F 1 "LED" H 13950 8850 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 13950 8950 50  0001 C CNN
F 3 "" H 13950 8950 50  0001 C CNN
	1    13950 8950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E91209B
P 13450 8800
F 0 "R13" V 13530 8800 50  0000 C CNN
F 1 "270" V 13450 8800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 13380 8800 50  0001 C CNN
F 3 "" H 13450 8800 50  0001 C CNN
	1    13450 8800
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:1N4001 D8
U 1 1 5E9120A1
P 12650 8750
F 0 "D8" H 12650 8850 50  0000 C CNN
F 1 "1N4001" H 12650 8650 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 12650 8575 50  0001 C CNN
F 3 "" H 12650 8750 50  0001 C CNN
	1    12650 8750
	1    0    0    -1  
$EndComp
NoConn ~ 12950 9250
NoConn ~ 12950 9350
NoConn ~ 12950 9450
NoConn ~ 12350 9250
Text GLabel 15500 9450 3    60   Input ~ 0
GND
Text GLabel 12050 9250 0    60   Input ~ 0
Motor2a
Wire Wire Line
	12500 8750 12350 8750
Wire Wire Line
	12800 8750 12950 8750
Wire Wire Line
	12950 8750 12950 8900
Wire Wire Line
	12350 9350 12250 9350
Wire Wire Line
	12250 9350 12250 9050
Wire Wire Line
	12350 9450 12150 9450
Wire Wire Line
	12150 9450 12150 9250
Wire Wire Line
	12150 9250 12050 9250
Wire Wire Line
	13250 8550 13250 8800
Wire Wire Line
	13250 8800 13300 8800
Wire Wire Line
	13600 8800 13950 8800
Wire Wire Line
	13800 9250 13950 9250
Wire Wire Line
	13500 9250 13450 9250
Wire Wire Line
	12950 8900 13150 8900
Wire Wire Line
	13150 8900 13150 9450
Wire Wire Line
	13150 9450 13250 9450
Connection ~ 12950 8900
Connection ~ 13250 8800
Wire Wire Line
	13950 9100 13950 9250
Connection ~ 13950 9250
Wire Wire Line
	12950 8900 12950 9050
Wire Wire Line
	13250 8800 13250 9050
Wire Wire Line
	13950 9250 14250 9250
Wire Wire Line
	12350 8750 12350 9050
Text GLabel 8750 5300 1    60   Input ~ 0
L293D_Motor1a
Text GLabel 8950 5300 1    60   Input ~ 0
L293D_Motor1b
Text GLabel 9150 5300 1    60   Input ~ 0
L293D_Motor2a
Text GLabel 9350 5300 1    60   Input ~ 0
L293D_Motor2b
Text GLabel 14250 9250 2    60   Input ~ 0
arOutputPIN1
Text GLabel 14250 8050 2    60   Input ~ 0
arOutputPIN3
$Comp
L Device:R R14
U 1 1 5E93BE65
P 13650 8050
F 0 "R14" V 13730 8050 50  0000 C CNN
F 1 "1k" V 13650 8050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 13580 8050 50  0001 C CNN
F 3 "" H 13650 8050 50  0001 C CNN
	1    13650 8050
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:EC2-5NU K3
U 1 1 5E93BE6E
P 12650 8050
F 0 "K3" H 12450 8380 50  0000 L BNN
F 1 "EC2-5NU" H 12450 7650 50  0000 L BNN
F 2 "EC2-5NU:RELAY_EC2-5NU" H 12650 8050 50  0001 L BNN
F 3 "Manufacturer recommendations" H 12650 8050 50  0001 L BNN
F 4 "9.4mm" H 12650 8050 50  0001 L BNN "Field4"
F 5 "Kemet" H 12650 8050 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 12650 8050 50  0001 L BNN "Field6"
	1    12650 8050
	1    0    0    -1  
$EndComp
$Comp
L new-schematics-rescue:2N3904 Q3
U 1 1 5E93BE77
P 13350 8050
F 0 "Q3" H 12950 8350 50  0000 L BNN
F 1 "2N3904" H 12950 7750 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 13350 8050 50  0001 L BNN
F 3 "February 2003" H 13350 8050 50  0001 L BNN
F 4 "STMicroelectronics" H 13350 8050 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 13350 8050 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 13350 8050 50  0001 L BNN "Field6"
	1    13350 8050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 5E93BE7D
P 13950 7750
F 0 "D9" H 13950 7850 50  0000 C CNN
F 1 "LED" H 13950 7650 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 13950 7750 50  0001 C CNN
F 3 "" H 13950 7750 50  0001 C CNN
	1    13950 7750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5E93BE83
P 13450 7600
F 0 "R12" V 13530 7600 50  0000 C CNN
F 1 "270" V 13450 7600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 13380 7600 50  0001 C CNN
F 3 "" H 13450 7600 50  0001 C CNN
	1    13450 7600
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:1N4001 D7
U 1 1 5E93BE89
P 12650 7550
F 0 "D7" H 12650 7650 50  0000 C CNN
F 1 "1N4001" H 12650 7450 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 12650 7375 50  0001 C CNN
F 3 "" H 12650 7550 50  0001 C CNN
	1    12650 7550
	1    0    0    -1  
$EndComp
NoConn ~ 12950 8050
NoConn ~ 12950 8150
NoConn ~ 12950 8250
NoConn ~ 12350 8050
Text GLabel 12050 8050 0    60   Input ~ 0
Motor1a
Wire Wire Line
	12500 7550 12350 7550
Wire Wire Line
	12800 7550 12950 7550
Wire Wire Line
	12950 7550 12950 7700
Wire Wire Line
	12350 8150 12250 8150
Wire Wire Line
	12250 8150 12250 7850
Wire Wire Line
	12350 8250 12150 8250
Wire Wire Line
	12150 8250 12150 8050
Wire Wire Line
	12150 8050 12050 8050
Wire Wire Line
	13250 7350 13250 7600
Wire Wire Line
	13250 7600 13300 7600
Wire Wire Line
	13600 7600 13950 7600
Wire Wire Line
	13800 8050 13950 8050
Wire Wire Line
	13500 8050 13450 8050
Wire Wire Line
	12950 7700 13150 7700
Wire Wire Line
	13150 7700 13150 8250
Wire Wire Line
	13150 8250 13250 8250
Connection ~ 12950 7700
Connection ~ 13250 7600
Wire Wire Line
	13950 7900 13950 8050
Connection ~ 13950 8050
Wire Wire Line
	12950 7700 12950 7850
Wire Wire Line
	13250 7600 13250 7850
Wire Wire Line
	13950 8050 14250 8050
Wire Wire Line
	12350 7550 12350 7850
Text GLabel 11000 8150 0    60   Input ~ 0
5V+ard
Wire Wire Line
	13250 7350 15500 7350
Wire Wire Line
	15500 7350 15500 8550
Wire Wire Line
	13250 8550 15500 8550
Connection ~ 15500 8550
Wire Wire Line
	15500 8550 15500 9450
Wire Wire Line
	11000 8150 11400 8150
Wire Wire Line
	11400 7550 12350 7550
Connection ~ 12350 7550
Wire Wire Line
	11400 8750 12350 8750
Connection ~ 12350 8750
Connection ~ 11400 8150
Wire Wire Line
	11400 8150 11400 8750
Wire Wire Line
	11400 7550 11400 7850
Wire Wire Line
	2150 8550 2150 8850
Wire Wire Line
	3750 9050 4050 9050
Wire Wire Line
	3050 8600 3050 8850
Wire Wire Line
	2750 8700 2750 8850
Text GLabel 1300 9400 0    60   Input ~ 0
V+
Connection ~ 3750 9050
Wire Wire Line
	3750 8900 3750 9050
Connection ~ 3050 8600
Connection ~ 2750 8700
Wire Wire Line
	2950 9250 3050 9250
Wire Wire Line
	2950 8700 2950 9250
Wire Wire Line
	2750 8700 2950 8700
Wire Wire Line
	3300 9050 3250 9050
Wire Wire Line
	3600 9050 3750 9050
Wire Wire Line
	3400 8600 3750 8600
Wire Wire Line
	3050 8600 3100 8600
Wire Wire Line
	3050 8350 3050 8600
Wire Wire Line
	1950 9050 1850 9050
Wire Wire Line
	1950 9250 1950 9050
Wire Wire Line
	2150 9250 1950 9250
Wire Wire Line
	2050 9150 2050 8850
Wire Wire Line
	2150 9150 2050 9150
Wire Wire Line
	2750 8550 2750 8700
Wire Wire Line
	2600 8550 2750 8550
Wire Wire Line
	2300 8550 2150 8550
Text GLabel 1850 9050 0    60   Input ~ 0
Motor1a
Text GLabel 4050 9050 2    60   Input ~ 0
OutputPIN4
NoConn ~ 2150 9050
NoConn ~ 2750 9250
NoConn ~ 2750 9150
NoConn ~ 2750 9050
$Comp
L new-schematics-rescue:1N4001 D3
U 1 1 5E39F0E9
P 2450 8550
F 0 "D3" H 2450 8650 50  0000 C CNN
F 1 "1N4001" H 2450 8450 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2450 8375 50  0001 C CNN
F 3 "" H 2450 8550 50  0001 C CNN
	1    2450 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E39F0E3
P 3250 8600
F 0 "R2" V 3330 8600 50  0000 C CNN
F 1 "270" V 3250 8600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3180 8600 50  0001 C CNN
F 3 "" H 3250 8600 50  0001 C CNN
	1    3250 8600
	0    1    1    0   
$EndComp
$Comp
L new-schematics-rescue:2N3904 Q1
U 1 1 5E39F0D7
P 3150 9050
F 0 "Q1" H 2750 9350 50  0000 L BNN
F 1 "2N3904" H 2850 8850 50  0000 L BNN
F 2 "2N3904:TO92127P495H495-3" H 3150 9050 50  0001 L BNN
F 3 "February 2003" H 3150 9050 50  0001 L BNN
F 4 "STMicroelectronics" H 3150 9050 50  0001 L BNN "Field4"
F 5 "4.95 mm" H 3150 9050 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 3150 9050 50  0001 L BNN "Field6"
	1    3150 9050
	-1   0    0    1   
$EndComp
$Comp
L new-schematics-rescue:EC2-5NU K1
U 1 1 5E39F0CE
P 2450 9050
F 0 "K1" H 2250 9380 50  0000 L BNN
F 1 "EC2-5NU" H 2250 8650 50  0000 L BNN
F 2 "EC2-5NU:RELAY_EC2-5NU" H 2450 9050 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2450 9050 50  0001 L BNN
F 4 "9.4mm" H 2450 9050 50  0001 L BNN "Field4"
F 5 "Kemet" H 2450 9050 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2450 9050 50  0001 L BNN "Field6"
	1    2450 9050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E39F0C5
P 3450 9050
F 0 "R6" V 3530 9050 50  0000 C CNN
F 1 "1k" V 3450 9050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 9050 50  0001 C CNN
F 3 "" H 3450 9050 50  0001 C CNN
	1    3450 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 8350 4700 8350
Wire Wire Line
	3700 2100 3700 2750
Wire Wire Line
	3600 2100 3700 2100
Wire Wire Line
	4700 8350 4700 9750
Wire Wire Line
	3050 9750 4700 9750
Wire Wire Line
	1350 9400 1300 9400
Wire Wire Line
	1350 8850 2050 8850
Wire Wire Line
	1350 10250 2050 10250
Wire Wire Line
	2150 9950 1350 9950
Connection ~ 2150 9950
Connection ~ 1350 9950
Wire Wire Line
	1350 9950 1350 10250
Wire Wire Line
	2150 8550 1350 8550
Wire Wire Line
	1350 8550 1350 8850
Connection ~ 2150 8550
Connection ~ 1350 8850
Connection ~ 1350 9400
Wire Wire Line
	1350 9400 1350 9950
Wire Wire Line
	1350 8850 1350 9400
Wire Wire Line
	14100 1700 14100 1750
Wire Wire Line
	15050 1700 15050 1750
Wire Wire Line
	14600 1700 14600 1750
Wire Wire Line
	14100 1700 14600 1700
Connection ~ 14600 1700
Wire Wire Line
	14600 1700 15050 1700
Text Notes 13800 1400 0    197  ~ 0
Motor Output\n\n
Wire Wire Line
	2250 1600 2250 1350
Wire Wire Line
	2250 1350 1400 1350
Wire Wire Line
	2250 2600 2250 2700
Wire Wire Line
	2250 2700 1400 2700
Wire Wire Line
	1400 2700 1400 2050
Wire Wire Line
	3000 2350 3150 2350
Wire Wire Line
	2750 2350 2900 2350
Text GLabel 3000 2350 3    60   Input ~ 0
Input1+
Text GLabel 2900 2350 3    60   Input ~ 0
Input1-
Wire Wire Line
	2550 1700 2550 1400
Wire Wire Line
	2550 1400 3300 1400
Wire Wire Line
	3300 1400 3300 1700
Wire Wire Line
	3300 1700 3600 1700
Wire Wire Line
	2550 2500 2550 2800
Wire Wire Line
	2550 2800 3350 2800
Wire Wire Line
	3350 2800 3350 2500
Wire Wire Line
	3350 2500 3600 2500
Text GLabel 11250 5750 1    60   Input ~ 0
analog4+
Text GLabel 11550 5750 1    60   Input ~ 0
analog1+
Wire Wire Line
	11400 7850 12250 7850
Connection ~ 11400 7850
Wire Wire Line
	11400 7850 11400 8150
Wire Wire Line
	11400 9050 11400 8750
Wire Wire Line
	11400 9050 12250 9050
Connection ~ 11400 8750
Text Notes 3150 8150 0    197  ~ 0
Lm324N operation\n
Wire Wire Line
	2750 5950 2900 5950
Text GLabel 3200 5950 2    60   Output ~ 0
5V
$Comp
L Device:LED D5
U 1 1 5E39F0DD
P 3750 8750
F 0 "D5" H 3750 8850 50  0000 C CNN
F 1 "LED" H 3750 8650 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 3750 8750 50  0001 C CNN
F 3 "" H 3750 8750 50  0001 C CNN
	1    3750 8750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E39938D
P 3750 10150
F 0 "D6" H 3750 10250 50  0000 C CNN
F 1 "LED" H 3750 10050 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 3750 10150 50  0001 C CNN
F 3 "" H 3750 10150 50  0001 C CNN
	1    3750 10150
	0    -1   -1   0   
$EndComp
Text Notes 13100 3100 0    157  ~ 0
Power switch between \nlm324 and arduino\n
Wire Notes Line style solid
	850  7850 6950 7850
Wire Notes Line style solid
	13800 850  13800 2200
Wire Notes Line style solid
	13800 850  15750 850 
Wire Notes Line style solid
	15750 850  15750 2200
Wire Notes Line style solid
	15750 2200 13800 2200
Wire Notes Line style solid
	13100 2650 13100 4000
Wire Notes Line style solid
	13100 2650 15750 2650
Wire Notes Line style solid
	15750 2650 15750 4000
Wire Notes Line style solid
	15750 4000 13100 4000
Wire Notes Line
	850  7850 950  7850
Text Notes 900  4750 0    197  ~ 0
Voltage Regulator LM317T
Wire Notes Line style solid
	900  4450 900  7100
Wire Notes Line style solid
	4900 4450 4900 7100
Wire Bus Line
	4900 4450 4900 7200
Wire Bus Line
	4900 7200 900  7200
Wire Bus Line
	900  7200 900  4450
Wire Bus Line
	900  4450 4900 4450
Text Notes 9700 4800 0    197  ~ 0
Control from arduino
Wire Bus Line
	15800 4500 15800 9750
Wire Bus Line
	15800 9750 8500 9750
Wire Bus Line
	8500 9750 8500 4500
Wire Bus Line
	8500 4500 15800 4500
Text Notes 1650 1050 0    197  ~ 0
Sensor input
Text GLabel 1300 2050 0    60   Input ~ 0
5V+ard
Wire Wire Line
	1300 2050 1400 2050
Connection ~ 1400 2050
Wire Wire Line
	1400 2050 1400 1350
Wire Wire Line
	1100 1350 1400 1350
Connection ~ 1400 1350
Text GLabel 1100 1350 0    60   Input ~ 0
V+
Text GLabel 4700 10550 3    60   Input ~ 0
GND
Wire Wire Line
	4700 9750 4700 10550
Connection ~ 4700 9750
Wire Bus Line
	850  7850 850  10950
Wire Bus Line
	850  10950 6950 10950
Wire Bus Line
	6950 7850 6950 10950
Wire Bus Line
	4150 750  4150 3050
Wire Bus Line
	4150 3050 800  3050
Wire Bus Line
	800  3050 800  750 
Wire Bus Line
	800  750  4150 750 
Text Notes 5850 2300 0    118  Italic 24
Lm324N circuit for simple line follower with backup circuit\n provided by arduino nano for 2 sensor input and 2 motors output. \n\nBy: Ajaya Dahal\n
$Comp
L Device:Fuse F1
U 1 1 5F09025E
P 3050 5950
F 0 "F1" V 3000 5800 50  0000 C CNN
F 1 "Fuse" V 3150 5950 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" V 2980 5950 50  0001 C CNN
F 3 "~" H 3050 5950 50  0001 C CNN
	1    3050 5950
	0    1    1    0   
$EndComp
Text GLabel 2750 5550 3    60   Input ~ 0
GND
Text GLabel 2300 6950 3    60   Input ~ 0
GND
Text GLabel 14600 1750 3    60   Input ~ 0
GND
$EndSCHEMATC
