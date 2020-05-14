EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "54-1591-1 Functional Tester Board"
Date "2020-03-25"
Rev ""
Comp "Hunter Engineering"
Comment1 "By: Ajaya Dahal Co-Op SP 2020"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K1
U 1 1 5E7D5663
P 4900 5550
F 0 "K1" H 4900 6015 50  0000 C CNN
F 1 "EC2-5NU" H 4900 5924 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 4900 5550 50  0001 L BNN
F 3 "Manufacturer recommendations" H 4900 5550 50  0001 L BNN
F 4 "9.4mm" H 4900 5550 50  0001 L BNN "Field4"
F 5 "Kemet" H 4900 5550 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 4900 5550 50  0001 L BNN "Field6"
	1    4900 5550
	-1   0    0    -1  
$EndComp
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K2
U 1 1 5E7D660A
P 4900 6700
F 0 "K2" H 4900 7165 50  0000 C CNN
F 1 "EC2-5NU" H 4900 7074 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 4900 6700 50  0001 L BNN
F 3 "Manufacturer recommendations" H 4900 6700 50  0001 L BNN
F 4 "9.4mm" H 4900 6700 50  0001 L BNN "Field4"
F 5 "Kemet" H 4900 6700 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 4900 6700 50  0001 L BNN "Field6"
	1    4900 6700
	-1   0    0    -1  
$EndComp
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K3
U 1 1 5E7D919D
P 3150 5550
F 0 "K3" H 3150 6015 50  0000 C CNN
F 1 "EC2-5NU" H 3150 5924 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 3150 5550 50  0001 L BNN
F 3 "Manufacturer recommendations" H 3150 5550 50  0001 L BNN
F 4 "9.4mm" H 3150 5550 50  0001 L BNN "Field4"
F 5 "Kemet" H 3150 5550 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 3150 5550 50  0001 L BNN "Field6"
	1    3150 5550
	1    0    0    -1  
$EndComp
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K4
U 1 1 5E7DA050
P 3150 6700
F 0 "K4" H 3150 7165 50  0000 C CNN
F 1 "EC2-5NU" H 3150 7074 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 3150 6700 50  0001 L BNN
F 3 "Manufacturer recommendations" H 3150 6700 50  0001 L BNN
F 4 "9.4mm" H 3150 6700 50  0001 L BNN "Field4"
F 5 "Kemet" H 3150 6700 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 3150 6700 50  0001 L BNN "Field6"
	1    3150 6700
	1    0    0    -1  
$EndComp
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K5
U 1 1 5E7DB577
P 3200 1600
F 0 "K5" H 3200 2065 50  0000 C CNN
F 1 "EC2-5NU" H 3200 1974 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 3200 1600 50  0001 L BNN
F 3 "Manufacturer recommendations" H 3200 1600 50  0001 L BNN
F 4 "9.4mm" H 3200 1600 50  0001 L BNN "Field4"
F 5 "Kemet" H 3200 1600 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 3200 1600 50  0001 L BNN "Field6"
	1    3200 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 5E7E17B1
P 1450 5950
F 0 "J2" H 1558 6531 50  0000 C CNN
F 1 "12V output from DUT" H 1650 5350 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53398-1071_10x1.25mm_Straight" H 1450 5950 50  0001 C CNN
F 3 "~" H 1450 5950 50  0001 C CNN
	1    1450 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 5E7E2291
P 6400 5850
F 0 "J1" H 6550 6350 50  0000 R CNN
F 1 "56V to the DUT" H 6750 5250 50  0000 R CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53398-1071_10x1.25mm_Straight" H 6400 5850 50  0001 C CNN
F 3 "~" H 6400 5850 50  0001 C CNN
	1    6400 5850
	-1   0    0    -1  
$EndComp
Text GLabel 2900 1400 0    50   Input ~ 0
D5
$Comp
L 45-1591-1-rescue:RDC2072S12-RDC2072S12 U2
U 1 1 5E7E55F4
P 5850 1200
F 0 "U2" H 6650 1465 50  0000 C CNN
F 1 "RDC2072S12" H 6650 1150 50  0000 C CNN
F 2 "RDC2072S12:RDC2072S12" H 7300 1300 50  0001 L CNN
F 3 "https://www.xppower.com/Portals/0/pdfs/SF_RDC20.pdf" H 7300 1200 50  0001 L CNN
F 4 "XP Power RDC 20W Isolated DC-DC Converter Through Hole, Vin 36  140 V dc, Vout 12V dc Railway Approved" H 7300 1100 50  0001 L CNN "Description"
F 5 "10.66" H 7300 1000 50  0001 L CNN "Height"
F 6 "XP POWER" H 7300 900 50  0001 L CNN "Manufacturer_Name"
F 7 "RDC2072S12" H 7300 800 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "209-RDC2072S12" H 7300 700 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=209-RDC2072S12" H 7300 600 50  0001 L CNN "Mouser Price/Stock"
F 10 "1619265" H 7300 500 50  0001 L CNN "RS Part Number"
F 11 "https://uk.rs-online.com/web/p/products/1619265" H 7300 400 50  0001 L CNN "RS Price/Stock"
F 12 "70810678" H 7300 300 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/xppower-rdc2072s12/70810678/" H 7300 200 50  0001 L CNN "Allied Price/Stock"
	1    5850 1200
	-1   0    0    -1  
$EndComp
Text GLabel 4250 1300 0    50   Input ~ 0
GND
Text GLabel 5850 1300 2    50   Input ~ 0
GND
Wire Wire Line
	3750 1700 3750 1000
Wire Wire Line
	3750 1000 3500 1000
Text GLabel 3500 1000 0    50   Input ~ 0
56V_In
Text GLabel 5850 1200 2    50   Input ~ 0
12V
NoConn ~ 5850 1400
NoConn ~ 4250 1400
NoConn ~ 2900 1600
NoConn ~ 2900 1700
NoConn ~ 2900 1800
Text GLabel 3500 1800 2    50   Input ~ 0
56V_Out_From_Relay
Text GLabel 6200 5450 0    50   Input ~ 0
1_J1
Text GLabel 6200 5550 0    50   Input ~ 0
2_J1
Text GLabel 6200 5650 0    50   Input ~ 0
3_J1
Text GLabel 6200 5750 0    50   Input ~ 0
4_J1
Text GLabel 6200 5850 0    50   Input ~ 0
5_J1
Text GLabel 6200 5950 0    50   Input ~ 0
6_J1
Text GLabel 6200 6050 0    50   Input ~ 0
7_J1
Text GLabel 6200 6150 0    50   Input ~ 0
8_J1
Text GLabel 6200 6250 0    50   Input ~ 0
9_J1
Text GLabel 6200 6350 0    50   Input ~ 0
10_J1
Text GLabel 1650 5550 2    50   Input ~ 0
1_J2
Text GLabel 1650 5650 2    50   Input ~ 0
2_J2
Text GLabel 1650 5750 2    50   Input ~ 0
3_J2
Text GLabel 1650 5850 2    50   Input ~ 0
4_J2
Text GLabel 1650 5950 2    50   Input ~ 0
5_J2
Text GLabel 1650 6050 2    50   Input ~ 0
6_J2
Text GLabel 1650 6150 2    50   Input ~ 0
7_J2
Text GLabel 1650 6250 2    50   Input ~ 0
8_J2
Text GLabel 1650 6350 2    50   Input ~ 0
9_J2
Text GLabel 1650 6450 2    50   Input ~ 0
10_J2
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 5E801BAA
P 3150 4950
F 0 "D2" H 3150 4733 50  0000 C CNN
F 1 "DIODE" H 3150 4824 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 3150 4950 50  0001 C CNN
F 3 "~" H 3150 4950 50  0001 C CNN
F 4 "Y" H 3150 4950 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3150 4950 50  0001 L CNN "Spice_Primitive"
	1    3150 4950
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 5E802614
P 3150 6150
F 0 "D3" H 3150 5950 50  0000 C CNN
F 1 "DIODE" H 3150 6050 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 3150 6150 50  0001 C CNN
F 3 "~" H 3150 6150 50  0001 C CNN
F 4 "Y" H 3150 6150 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3150 6150 50  0001 L CNN "Spice_Primitive"
	1    3150 6150
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D5
U 1 1 5E803A77
P 4900 6150
F 0 "D5" H 4900 5950 50  0000 C CNN
F 1 "DIODE" H 4900 6050 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4900 6150 50  0001 C CNN
F 3 "~" H 4900 6150 50  0001 C CNN
F 4 "Y" H 4900 6150 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4900 6150 50  0001 L CNN "Spice_Primitive"
	1    4900 6150
	1    0    0    1   
$EndComp
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 5E80436A
P 4900 5000
F 0 "D4" H 4900 4783 50  0000 C CNN
F 1 "DIODE" H 4900 4874 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4900 5000 50  0001 C CNN
F 3 "~" H 4900 5000 50  0001 C CNN
F 4 "Y" H 4900 5000 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 4900 5000 50  0001 L CNN "Spice_Primitive"
	1    4900 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	3000 4950 2850 4950
Wire Wire Line
	2850 4950 2850 5350
Wire Wire Line
	3300 4950 3450 4950
Wire Wire Line
	3450 4950 3450 5350
Wire Wire Line
	3300 6150 3450 6150
Wire Wire Line
	3450 6150 3450 6500
Connection ~ 3450 6500
Wire Wire Line
	3000 6150 2850 6150
Wire Wire Line
	2850 6150 2850 6500
Wire Wire Line
	5200 5350 5200 5000
Wire Wire Line
	5200 5000 5050 5000
Wire Wire Line
	4750 5000 4600 5000
Wire Wire Line
	4600 5000 4600 5350
Wire Wire Line
	5200 6500 5200 6150
Wire Wire Line
	5200 6150 5050 6150
Wire Wire Line
	4750 6150 4600 6150
Wire Wire Line
	4600 6150 4600 6500
Connection ~ 4600 6500
Connection ~ 4600 5350
Connection ~ 3450 5350
Text GLabel 4400 5700 0    50   Input ~ 0
1_J1
Text GLabel 5400 5700 2    50   Input ~ 0
2_J1
Text GLabel 5200 5550 2    50   Input ~ 0
A1
Text GLabel 5200 1750 0    50   Input ~ 0
56V_Out_From_Relay
$Comp
L Device:Fuse F2
U 1 1 5E8161EC
P 5350 1750
F 0 "F2" V 5250 1950 50  0000 C CNN
F 1 "Fuse" V 5250 1800 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" V 5280 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	0    1    1    0   
$EndComp
Text GLabel 5500 1750 2    50   Input ~ 0
56V_To_DUT
Text GLabel 4550 5900 0    50   Input ~ 0
56V_To_DUT
Wire Wire Line
	5200 5750 5200 5900
Wire Wire Line
	5200 5900 4600 5900
Text GLabel 4250 1200 0    50   Input ~ 0
56V_In
Text GLabel 4600 6700 0    50   Input ~ 0
A2
Text GLabel 5200 6700 2    50   Input ~ 0
A3
Text GLabel 2850 5550 0    50   Input ~ 0
A4
Text GLabel 3450 5550 2    50   Input ~ 0
A6
Text GLabel 2850 6700 0    50   Input ~ 0
A5
Text GLabel 3450 6700 2    50   Input ~ 0
A7
Text GLabel 4600 6800 0    50   Input ~ 0
7_J1
Text GLabel 5200 6800 2    50   Input ~ 0
8_J1
NoConn ~ 4600 6900
NoConn ~ 5200 6900
Text GLabel 2850 5650 0    50   Input ~ 0
1_J2
Text GLabel 3450 5650 2    50   Input ~ 0
2_J2
Text GLabel 2800 5750 0    50   Input ~ 0
12V_OUT_from_DUT
Wire Wire Line
	3450 5750 3450 5900
Wire Wire Line
	3450 5900 2850 5900
Wire Wire Line
	2850 5900 2850 5750
Wire Wire Line
	2800 5750 2850 5750
Connection ~ 2850 5750
Text GLabel 2850 6800 0    50   Input ~ 0
9_J2
Text GLabel 3450 6800 2    50   Input ~ 0
10_J2
NoConn ~ 2850 6900
NoConn ~ 3450 6900
Text Notes 950  7250 0    79   ~ 0
            J2\n(ALL CONNECTED TOGETHER)\nPin 1,2,3,4 = +12V\nPin 7,8,9,10 = GND
Text Notes 4900 7250 0    79   ~ 0
              J1\nPin 1 and 2,  5 and 6 = +56V\nPin  3 and 4,  7 and 8 = GND
Text GLabel 1750 3200 0    50   Input ~ 0
D6
Text Notes 1050 2550 0    118  ~ 0
GND supplier to the DUT\n
Text GLabel 1550 3350 0    50   Input ~ 0
7_J2
Text GLabel 1550 3450 0    50   Input ~ 0
8_J2
Text GLabel 1550 3550 0    50   Input ~ 0
9_J2
Text GLabel 1550 3650 0    50   Input ~ 0
10_J2
Text GLabel 2600 3550 2    50   Input ~ 0
7_J1
Text GLabel 2600 3650 2    50   Input ~ 0
8_J1
Text GLabel 2600 3350 2    50   Input ~ 0
3_J1
Text GLabel 2600 3450 2    50   Input ~ 0
4_J1
Text GLabel 2050 3900 3    50   Input ~ 0
GND
Wire Wire Line
	1750 3500 1650 3500
Wire Wire Line
	1650 3500 1650 3850
Wire Wire Line
	2350 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3850
Wire Wire Line
	1650 3850 2050 3850
Wire Wire Line
	1550 3350 1550 3500
Wire Wire Line
	2600 3350 2600 3500
Wire Wire Line
	1550 3500 1600 3500
Wire Wire Line
	1600 3500 1600 3600
Wire Wire Line
	1600 3600 1750 3600
Connection ~ 1550 3500
Wire Wire Line
	1550 3500 1550 3650
Wire Wire Line
	2350 3600 2550 3600
Wire Wire Line
	2550 3600 2550 3500
Wire Wire Line
	2550 3500 2600 3500
Connection ~ 2600 3500
Wire Wire Line
	2600 3500 2600 3650
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 5E84D02C
P 2050 2850
F 0 "D1" H 2050 2633 50  0000 C CNN
F 1 "DIODE" H 2050 2724 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 2050 2850 50  0001 C CNN
F 3 "~" H 2050 2850 50  0001 C CNN
F 4 "Y" H 2050 2850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2050 2850 50  0001 L CNN "Spice_Primitive"
	1    2050 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3200 1750 2850
Wire Wire Line
	1750 2850 1900 2850
Wire Wire Line
	2200 2850 2350 2850
Wire Wire Line
	2350 2850 2350 3200
Wire Wire Line
	2350 2850 2850 2850
Wire Wire Line
	2850 2850 2850 3850
Wire Wire Line
	2850 3850 2450 3850
Connection ~ 2350 2850
Connection ~ 2450 3850
Wire Wire Line
	2050 3850 2050 3900
Connection ~ 2050 3850
Wire Wire Line
	2050 3850 2450 3850
Text GLabel 4600 5550 0    50   Input ~ 0
D9
Wire Notes Line style solid
	900  900  900  1950
Wire Notes Line style solid
	900  1950 6100 1950
Wire Notes Line style solid
	6100 1950 6100 900 
Wire Notes Line style solid
	6100 900  900  900 
Wire Wire Line
	1250 1350 1200 1350
Connection ~ 1250 1350
Text GLabel 1900 1450 0    50   Input ~ 0
56V_In
Text Notes 2150 1650 0    50   ~ 0
for LED\n
Wire Wire Line
	1500 1350 1250 1350
Text GLabel 1200 1350 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E7FC1E2
P 1600 1150
F 0 "J3" V 1550 1000 50  0000 L CNN
F 1 "Power IN(56V)" V 1550 1100 50  0000 L CNN
F 2 "Connectors_New:1X02" H 1600 1150 50  0001 C CNN
F 3 "~" H 1600 1150 50  0001 C CNN
	1    1600 1150
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5E7FB75B
P 1750 1350
F 0 "F1" V 1650 1550 50  0000 C CNN
F 1 "Fuse" V 1650 1400 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" V 1680 1350 50  0001 C CNN
F 3 "~" H 1750 1350 50  0001 C CNN
	1    1750 1350
	0    1    1    0   
$EndComp
Text GLabel 1600 1550 0    50   Input ~ 0
5V
$Comp
L Device:R R1
U 1 1 5E7F9FEE
P 1750 1550
F 0 "R1" V 1850 1400 50  0000 C CNN
F 1 "150" V 1750 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1680 1550 50  0001 C CNN
F 3 "~" H 1750 1550 50  0001 C CNN
	1    1750 1550
	0    1    1    0   
$EndComp
Text GLabel 1900 1650 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5E7F8C3D
P 2100 1550
F 0 "J4" H 2072 1432 50  0000 R CNN
F 1 "Power Switch" H 2072 1523 50  0000 R CNN
F 2 "Connectors_New:1X04" H 2100 1550 50  0001 C CNN
F 3 "~" H 2100 1550 50  0001 C CNN
	1    2100 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E7EE148
P 1250 1350
F 0 "#PWR01" H 1250 1100 50  0001 C CNN
F 1 "GND" H 1255 1177 50  0000 C CNN
F 2 "" H 1250 1350 50  0001 C CNN
F 3 "" H 1250 1350 50  0001 C CNN
	1    1250 1350
	1    0    0    -1  
$EndComp
Text Notes 1050 1900 0    118  ~ 0
Power Managment
Text Notes 1000 5300 0    197  ~ 0
   J2\n12V OUT
Text Notes 5600 5300 0    197  ~ 0
   J1\n56V IN\n
Wire Notes Line
	6850 4550 6850 7300
Text GLabel 4000 7050 3    50   Input ~ 0
GND
Wire Wire Line
	3450 5350 4000 5350
Wire Wire Line
	3450 6500 4000 6500
Connection ~ 4000 5350
Wire Wire Line
	4000 5350 4600 5350
Connection ~ 4000 6500
Wire Wire Line
	4000 6500 4600 6500
Wire Notes Line
	900  4550 6850 4550
Wire Notes Line
	6850 7300 900  7300
Wire Notes Line
	900  4550 900  7300
Wire Notes Line
	4800 2550 4800 3700
Wire Notes Line
	3450 2250 3450 4150
Wire Notes Line
	3450 4150 900  4150
Wire Notes Line
	900  4150 900  2250
Wire Notes Line
	900  2250 3450 2250
Text GLabel 2800 5350 0    50   Input ~ 0
D10
Text GLabel 2800 6150 0    50   Input ~ 0
D11
Text GLabel 5250 5350 2    50   Input ~ 0
D12
Text GLabel 5250 6500 2    50   Input ~ 0
D13
Wire Wire Line
	2850 5350 2800 5350
Connection ~ 2850 5350
Wire Wire Line
	2850 6150 2800 6150
Connection ~ 2850 6150
Wire Wire Line
	5250 5350 5200 5350
Connection ~ 5200 5350
Wire Wire Line
	5250 6500 5200 6500
Connection ~ 5200 6500
Text Notes 950  4050 0    50   ~ 0
Pin 1,2,3,4 = +12V\nPin 7,8,9,10 = GND
Text Notes 2600 4050 0    50   ~ 0
Pin 1,2,5,6 = +56V\nPin  3,4,7,8 = GND
Wire Wire Line
	4550 5900 4600 5900
Connection ~ 4600 5900
Wire Wire Line
	4600 5900 4600 5750
Text GLabel 4400 5600 0    50   Input ~ 0
5_J1
Text GLabel 5400 5600 2    50   Input ~ 0
6_J1
Wire Wire Line
	5400 5600 5400 5650
Wire Wire Line
	5400 5650 5200 5650
Connection ~ 5400 5650
Wire Wire Line
	5400 5650 5400 5700
Wire Wire Line
	4400 5600 4400 5650
Wire Wire Line
	4400 5650 4600 5650
Connection ~ 4400 5650
Wire Wire Line
	4400 5650 4400 5700
Wire Wire Line
	4000 5350 4000 6500
Wire Wire Line
	4000 6500 4000 7050
Wire Notes Line
	10450 1100 10450 4650
Wire Notes Line
	8200 4650 10450 4650
Wire Notes Line
	8200 1100 8200 4650
Wire Notes Line
	10450 1100 8200 1100
Wire Wire Line
	9450 3400 9550 3400
Connection ~ 9450 3400
Wire Wire Line
	9350 3400 9450 3400
NoConn ~ 9950 1750
NoConn ~ 9950 1850
NoConn ~ 9950 2150
Wire Wire Line
	9500 4400 9400 4400
Text GLabel 9400 4400 0    50   Input ~ 0
VoltageDividerFinalValue
Text GLabel 9400 4250 2    50   Input ~ 0
VoltageDividerFinalValue
Wire Wire Line
	9400 4100 9350 4100
Connection ~ 9400 4100
Wire Wire Line
	9400 4100 9400 4250
Wire Wire Line
	9450 4100 9400 4100
Wire Wire Line
	9900 4100 9750 4100
Text GLabel 9900 4100 2    50   Input ~ 0
GND
$Comp
L Device:R R5
U 1 1 5E8256CD
P 9600 4100
F 0 "R5" V 9393 4100 50  0000 C CNN
F 1 "1M" V 9484 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9530 4100 50  0001 C CNN
F 3 "~" H 9600 4100 50  0001 C CNN
	1    9600 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E8249A2
P 9200 4100
F 0 "R2" V 8993 4100 50  0000 C CNN
F 1 "3M" V 9084 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9130 4100 50  0001 C CNN
F 3 "~" H 9200 4100 50  0001 C CNN
	1    9200 4100
	0    1    1    0   
$EndComp
Text GLabel 9050 4100 0    50   Input ~ 0
12V_OUT_from_DUT
NoConn ~ 9550 1350
Text GLabel 8950 3050 0    50   Input ~ 0
D13
Text GLabel 8950 2950 0    50   Input ~ 0
D12
Text GLabel 8950 2850 0    50   Input ~ 0
D11
Text GLabel 8950 2550 0    50   Input ~ 0
D8
Text GLabel 8950 2650 0    50   Input ~ 0
D9
Text GLabel 8950 2750 0    50   Input ~ 0
D10
Text GLabel 8950 2450 0    50   Input ~ 0
D7
Text GLabel 8950 1950 0    50   Input ~ 0
D2
Text GLabel 8950 2250 0    50   Input ~ 0
D5
Text GLabel 8950 2350 0    50   Input ~ 0
D6
Text GLabel 8950 2150 0    50   Input ~ 0
D4
Text GLabel 8950 1750 0    50   Input ~ 0
D0
Text GLabel 8950 1850 0    50   Input ~ 0
D1
Text GLabel 9950 3050 2    50   Input ~ 0
A7
Text GLabel 9950 2950 2    50   Input ~ 0
A6
Text GLabel 9950 2850 2    50   Input ~ 0
A5
Text GLabel 9950 2750 2    50   Input ~ 0
A4
Text GLabel 9950 2650 2    50   Input ~ 0
A3
Text GLabel 9950 2550 2    50   Input ~ 0
A2
Text GLabel 9950 2450 2    50   Input ~ 0
A1
Text GLabel 9950 2350 2    50   Input ~ 0
A0
Text GLabel 9500 4400 2    50   Input ~ 0
A0
Wire Wire Line
	9450 3350 9450 3400
Wire Wire Line
	9550 3350 9550 3400
Text GLabel 9350 3400 0    50   Input ~ 0
GND
Text GLabel 9650 1350 1    50   Input ~ 0
5V
Text GLabel 9350 1350 1    50   Input ~ 0
12V
Text GLabel 8950 2050 0    50   Input ~ 0
D3
$Comp
L MCU_Module:Arduino_Nano_v3.x U1
U 1 1 5E7DC50D
P 9450 2350
F 0 "U1" H 9750 1400 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 9450 1170 50  0000 C CNN
F 2 "Modules:Arduino_Nano" H 9450 2350 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9450 2350 50  0001 C CNN
	1    9450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3550 6600 3550
Connection ~ 6550 3550
Wire Wire Line
	6550 3250 6550 3550
Wire Wire Line
	6300 3550 6550 3550
Wire Wire Line
	6550 2950 6600 2950
Connection ~ 6550 2950
Wire Wire Line
	6150 2950 6550 2950
Connection ~ 6300 3250
Wire Wire Line
	6300 3250 6350 3250
Wire Notes Line
	6850 3700 6850 2550
Wire Notes Line
	4800 3700 6850 3700
Wire Notes Line
	6850 2550 4800 2550
Text GLabel 6600 3550 2    50   Input ~ 0
GND
Wire Wire Line
	6150 3250 6300 3250
$Comp
L Device:R R4
U 1 1 5E9C05CB
P 6300 3400
F 0 "R4" H 6230 3354 50  0000 R CNN
F 1 "10k" H 6230 3445 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5E9BB57E
P 6550 3100
F 0 "R3" H 6620 3146 50  0000 L CNN
F 1 "10k" H 6620 3055 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 3100 50  0001 C CNN
F 3 "~" H 6550 3100 50  0001 C CNN
	1    6550 3100
	1    0    0    -1  
$EndComp
Text GLabel 6350 3250 2    50   Input ~ 0
D8
Text GLabel 6600 2950 2    50   Input ~ 0
D7
NoConn ~ 5150 3600
Text GLabel 5150 2800 2    50   Input ~ 0
5V
Wire Wire Line
	5400 3100 5400 3450
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5450 3100
Wire Wire Line
	5400 2700 5400 3100
Wire Wire Line
	5400 2700 5150 2700
Wire Wire Line
	5200 3450 5200 3400
Connection ~ 5200 3450
Wire Wire Line
	5200 3450 5400 3450
Wire Wire Line
	5200 3400 5150 3400
Wire Wire Line
	5200 3500 5200 3450
Wire Wire Line
	5150 3500 5200 3500
Text GLabel 5150 3100 2    50   Input ~ 0
D2
Text GLabel 5150 3300 2    50   Input ~ 0
D4
Text GLabel 5150 2900 2    50   Input ~ 0
D0
Text GLabel 5150 3000 2    50   Input ~ 0
D1
Text GLabel 5150 3200 2    50   Input ~ 0
D3
Text GLabel 5450 3100 2    50   Input ~ 0
GND
Text GLabel 6200 3100 2    50   Input ~ 0
5V
Wire Wire Line
	6150 3100 6150 3150
Connection ~ 6150 3100
Wire Wire Line
	6150 3100 6200 3100
Wire Wire Line
	6150 3050 6150 3100
$Comp
L Connector:Conn_01x10_Male J5
U 1 1 5E7F38F5
P 4950 3100
F 0 "J5" H 5058 3681 50  0000 C CNN
F 1 "Display" H 5050 2550 50  0000 C CNN
F 2 "Connectors_New:2X5" H 4950 3100 50  0001 C CNN
F 3 "~" H 4950 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
NoConn ~ 2350 3400
NoConn ~ 1750 3400
$Comp
L 45-1591-1-rescue:EC2-5NU-EC2-5NU K6
U 1 1 5E7DF706
P 2050 3400
F 0 "K6" H 2050 3865 50  0000 C CNN
F 1 "EC2-5NU" H 2050 3774 50  0000 C CNN
F 2 "EC2-12NU:RELAY_EC2-5NU" H 2050 3400 50  0001 L BNN
F 3 "Manufacturer recommendations" H 2050 3400 50  0001 L BNN
F 4 "9.4mm" H 2050 3400 50  0001 L BNN "Field4"
F 5 "Kemet" H 2050 3400 50  0001 L BNN "Field5"
F 6 "8/8/2017" H 2050 3400 50  0001 L BNN "Field6"
	1    2050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1700 3500 1700
NoConn ~ 3500 1600
Text GLabel 3500 1400 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5E7F60D6
P 5950 3050
F 0 "J6" H 6058 3331 50  0000 C CNN
F 1 "Magnetic Sensors" H 6250 2450 50  0000 C CNN
F 2 "Connectors_New:1X04" H 5950 3050 50  0001 C CNN
F 3 "~" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
