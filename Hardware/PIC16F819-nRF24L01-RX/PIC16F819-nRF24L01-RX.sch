EESchema Schematic File Version 4
LIBS:PIC16F819-nRF24L01-RX-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-05-02"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_PIC16:PIC16F819-IP U3
U 1 1 5C9E4E97
P 7750 4500
F 0 "U3" H 8550 5100 50  0000 C CNN
F 1 "PIC16F819-IP" H 7150 5100 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 7750 4500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39598F.pdf" H 7750 4500 50  0001 C CNN
	1    7750 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 5C9E5045
P 6150 1450
F 0 "J4" H 6200 1767 50  0000 C CNN
F 1 "nRF24L01" H 6200 1676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 6150 1450 50  0001 C CNN
F 3 "~" H 6150 1450 50  0001 C CNN
	1    6150 1450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5C9E510E
P 4300 3600
F 0 "U1" H 4400 3350 50  0000 C CNN
F 1 "L7805" H 4300 3751 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4325 3450 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4300 3550 50  0001 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C9E5178
P 1800 4100
F 0 "J1" H 1900 4250 50  0000 C CNN
F 1 "PWR_IN" H 1900 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1800 4100 50  0001 C CNN
F 3 "~" H 1800 4100 50  0001 C CNN
	1    1800 4100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 5C9E5252
P 4300 4850
F 0 "U2" H 4400 4600 50  0000 C CNN
F 1 "LM1117-3.3" H 4300 5001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4300 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4300 4850 50  0001 C CNN
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 5C9E52E6
P 2600 4200
F 0 "SW1" H 2600 4000 50  0000 C CNN
F 1 "PWR_SW" H 2600 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2600 4200 50  0001 C CNN
F 3 "" H 2600 4200 50  0001 C CNN
	1    2600 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5C9E535C
P 3900 5250
F 0 "C2" H 3988 5296 50  0000 L CNN
F 1 "10uF" H 3988 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3900 5250 50  0001 C CNN
F 3 "~" H 3900 5250 50  0001 C CNN
	1    3900 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 5C9E53B2
P 4700 5250
F 0 "C4" H 4788 5296 50  0000 L CNN
F 1 "10uF" H 4788 5205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4700 5250 50  0001 C CNN
F 3 "~" H 4700 5250 50  0001 C CNN
	1    4700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 5C9E53E6
P 4700 4000
F 0 "C3" H 4788 4046 50  0000 L CNN
F 1 "10uF" H 4788 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5C9E541E
P 3900 4000
F 0 "C1" H 3988 4046 50  0000 L CNN
F 1 "10uF" H 3988 3955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 3900 4000 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5C9E5495
P 7950 3700
F 0 "C5" V 7722 3700 50  0000 C CNN
F 1 "100nF" V 7813 3700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7950 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7950 3700
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C9E56AF
P 2900 4850
F 0 "D1" V 2938 4733 50  0000 R CNN
F 1 "LED" V 2847 4733 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2900 4850 50  0001 C CNN
F 3 "~" H 2900 4850 50  0001 C CNN
	1    2900 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C9E5B9F
P 2900 4450
F 0 "R2" H 2959 4496 50  0000 L CNN
F 1 "1k" H 2959 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 2900 4450 50  0001 C CNN
F 3 "~" H 2900 4450 50  0001 C CNN
	1    2900 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J5
U 1 1 5C9E6189
P 7900 1550
F 0 "J5" H 7800 1250 50  0000 C CNN
F 1 "ICSP" H 7800 1850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 7900 1550 50  0001 C CNN
F 3 "~" H 7900 1550 50  0001 C CNN
	1    7900 1550
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5C9E6A6C
P 7750 3550
F 0 "#PWR017" H 7750 3400 50  0001 C CNN
F 1 "+5V" H 7765 3723 50  0000 C CNN
F 2 "" H 7750 3550 50  0001 C CNN
F 3 "" H 7750 3550 50  0001 C CNN
	1    7750 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5C9E6ACE
P 5850 1350
F 0 "#PWR014" H 5850 1200 50  0001 C CNN
F 1 "+3.3V" V 5865 1478 50  0000 L CNN
F 2 "" H 5850 1350 50  0001 C CNN
F 3 "" H 5850 1350 50  0001 C CNN
	1    5850 1350
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5C9E6B37
P 3750 4850
F 0 "#PWR08" H 3750 4700 50  0001 C CNN
F 1 "VCC" V 3768 4977 50  0000 L CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C9E6BA7
P 7750 5250
F 0 "#PWR018" H 7750 5000 50  0001 C CNN
F 1 "GND" H 7755 5077 50  0000 C CNN
F 2 "" H 7750 5250 50  0001 C CNN
F 3 "" H 7750 5250 50  0001 C CNN
	1    7750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3700 7750 3700
Wire Wire Line
	7750 3700 7750 3800
$Comp
L power:GND #PWR019
U 1 1 5C9E792A
P 8150 3700
F 0 "#PWR019" H 8150 3450 50  0001 C CNN
F 1 "GND" V 8155 3572 50  0000 R CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "" H 8150 3700 50  0001 C CNN
	1    8150 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 3700 8050 3700
Wire Wire Line
	4700 5150 4700 4850
Wire Wire Line
	4700 4850 4600 4850
Wire Wire Line
	4000 4850 3900 4850
Wire Wire Line
	3900 4850 3900 5150
Wire Wire Line
	3900 5350 3900 5550
Wire Wire Line
	3900 5550 4300 5550
Wire Wire Line
	4300 5550 4300 5150
Wire Wire Line
	4700 5350 4700 5550
Wire Wire Line
	4700 5550 4300 5550
Connection ~ 4300 5550
$Comp
L power:GND #PWR010
U 1 1 5C9E85D3
P 4300 5650
F 0 "#PWR010" H 4300 5400 50  0001 C CNN
F 1 "GND" H 4305 5477 50  0000 C CNN
F 2 "" H 4300 5650 50  0001 C CNN
F 3 "" H 4300 5650 50  0001 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5650 4300 5550
$Comp
L power:GND #PWR01
U 1 1 5C9E8EDB
P 2150 4300
F 0 "#PWR01" H 2150 4050 50  0001 C CNN
F 1 "GND" H 2155 4127 50  0000 C CNN
F 2 "" H 2150 4300 50  0001 C CNN
F 3 "" H 2150 4300 50  0001 C CNN
	1    2150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4300 2150 4200
Wire Wire Line
	2150 4200 2000 4200
Wire Wire Line
	2400 4100 2000 4100
NoConn ~ 2400 4300
Wire Wire Line
	2900 4350 2900 4200
Wire Wire Line
	2900 4200 2800 4200
Wire Wire Line
	2900 4700 2900 4550
$Comp
L power:GND #PWR05
U 1 1 5C9EA4A4
P 2900 5100
F 0 "#PWR05" H 2900 4850 50  0001 C CNN
F 1 "GND" H 2905 4927 50  0000 C CNN
F 2 "" H 2900 5100 50  0001 C CNN
F 3 "" H 2900 5100 50  0001 C CNN
	1    2900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5100 2900 5000
Wire Wire Line
	3900 3900 3900 3600
Wire Wire Line
	3900 3600 4000 3600
Wire Wire Line
	4600 3600 4700 3600
Wire Wire Line
	4700 3600 4700 3900
Wire Wire Line
	4700 4100 4700 4250
Wire Wire Line
	4700 4250 4300 4250
Wire Wire Line
	3900 4250 3900 4100
Wire Wire Line
	4300 3900 4300 4250
Connection ~ 4300 4250
Wire Wire Line
	4300 4250 3900 4250
$Comp
L power:GND #PWR09
U 1 1 5C9ECC29
P 4300 4350
F 0 "#PWR09" H 4300 4100 50  0001 C CNN
F 1 "GND" H 4305 4177 50  0000 C CNN
F 2 "" H 4300 4350 50  0001 C CNN
F 3 "" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4350 4300 4250
$Comp
L power:VCC #PWR06
U 1 1 5C9EDE45
P 3000 4200
F 0 "#PWR06" H 3000 4050 50  0001 C CNN
F 1 "VCC" V 3017 4328 50  0000 L CNN
F 2 "" H 3000 4200 50  0001 C CNN
F 3 "" H 3000 4200 50  0001 C CNN
	1    3000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4200 2900 4200
Connection ~ 2900 4200
Wire Wire Line
	3750 4850 3900 4850
Connection ~ 3900 4850
$Comp
L power:VCC #PWR07
U 1 1 5C9EEC56
P 3750 3600
F 0 "#PWR07" H 3750 3450 50  0001 C CNN
F 1 "VCC" V 3768 3727 50  0000 L CNN
F 2 "" H 3750 3600 50  0001 C CNN
F 3 "" H 3750 3600 50  0001 C CNN
	1    3750 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 3600 3900 3600
Connection ~ 3900 3600
Wire Wire Line
	7750 3550 7750 3700
Connection ~ 7750 3700
Wire Wire Line
	7750 5250 7750 5200
Wire Wire Line
	5850 1350 5950 1350
$Comp
L power:+5V #PWR012
U 1 1 5C9F8128
P 4850 3600
F 0 "#PWR012" H 4850 3450 50  0001 C CNN
F 1 "+5V" V 4865 3728 50  0000 L CNN
F 2 "" H 4850 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 5C9F846F
P 4850 4850
F 0 "#PWR013" H 4850 4700 50  0001 C CNN
F 1 "+3.3V" V 4865 4978 50  0000 L CNN
F 2 "" H 4850 4850 50  0001 C CNN
F 3 "" H 4850 4850 50  0001 C CNN
	1    4850 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4850 4700 4850
Connection ~ 4700 4850
Wire Wire Line
	4850 3600 4700 3600
Connection ~ 4700 3600
Text GLabel 8250 1350 2    50   Input ~ 0
~MCLR
$Comp
L power:+5V #PWR015
U 1 1 5C9FCD6F
P 8250 1450
F 0 "#PWR015" H 8250 1300 50  0001 C CNN
F 1 "+5V" V 8265 1578 50  0000 L CNN
F 2 "" H 8250 1450 50  0001 C CNN
F 3 "" H 8250 1450 50  0001 C CNN
	1    8250 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5C9FCD9E
P 8250 1550
F 0 "#PWR016" H 8250 1300 50  0001 C CNN
F 1 "GND" V 8255 1422 50  0000 R CNN
F 2 "" H 8250 1550 50  0001 C CNN
F 3 "" H 8250 1550 50  0001 C CNN
	1    8250 1550
	0    -1   -1   0   
$EndComp
Text GLabel 8250 1650 2    50   Input ~ 0
PGD
Text GLabel 8250 1750 2    50   Input ~ 0
PGC
Wire Wire Line
	8250 1350 8100 1350
Wire Wire Line
	8100 1450 8250 1450
Wire Wire Line
	8250 1550 8100 1550
Wire Wire Line
	8100 1650 8250 1650
Wire Wire Line
	8250 1750 8100 1750
Text GLabel 6450 4800 0    50   Input ~ 0
PGD
Text GLabel 6450 4700 0    50   Input ~ 0
PGC
$Comp
L power:GND #PWR011
U 1 1 5CA06350
P 6550 1350
F 0 "#PWR011" H 6550 1100 50  0001 C CNN
F 1 "GND" V 6555 1222 50  0000 R CNN
F 2 "" H 6550 1350 50  0001 C CNN
F 3 "" H 6550 1350 50  0001 C CNN
	1    6550 1350
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 1350 6450 1350
NoConn ~ 5950 1650
Text GLabel 6550 1450 2    50   Input ~ 0
CE
Text GLabel 6550 1550 2    50   Input ~ 0
SCK
Text GLabel 6550 1650 2    50   Input ~ 0
MISO
Text GLabel 5850 1450 0    50   Input ~ 0
CSN
Text GLabel 5850 1550 0    50   Input ~ 0
MOSI
Wire Wire Line
	5850 1550 5950 1550
Wire Wire Line
	5950 1450 5850 1450
Wire Wire Line
	6450 1450 6550 1450
Wire Wire Line
	6550 1550 6450 1550
Wire Wire Line
	6450 1650 6550 1650
Wire Notes Line
	5250 6100 1650 6100
Wire Notes Line
	1650 6100 1650 3250
Wire Notes Line
	1650 3250 5250 3250
Wire Notes Line
	5250 3250 5250 6100
Text Notes 2300 5850 0    157  ~ 31
POWER
Wire Notes Line
	5750 3250 5750 6100
Wire Notes Line
	5750 6100 10200 6100
Wire Notes Line
	10200 6100 10200 3250
Wire Notes Line
	10200 3250 5750 3250
Text Notes 7000 5850 0    157  ~ 31
MICROCONTROLLER
Wire Notes Line
	5300 850  5300 2650
Wire Notes Line
	5300 2650 7000 2650
Wire Notes Line
	7000 2650 7000 850 
Wire Notes Line
	7000 850  5300 850 
Wire Notes Line
	7450 1100 7450 2300
Wire Notes Line
	7450 2300 8900 2300
Wire Notes Line
	8900 2300 8900 1100
Wire Notes Line
	8900 1100 7450 1100
Text Notes 5500 2500 0    157  ~ 31
nRF24L01
Text Notes 3200 2500 0    157  ~ 31
LCD
Text Notes 7900 2250 0    157  ~ 31
ICSP
Text GLabel 6450 4200 0    50   Input ~ 0
MISO
Text GLabel 6450 4300 0    50   Input ~ 0
MOSI
Text GLabel 6450 4100 0    50   Input ~ 0
CSN
Text GLabel 6450 4400 0    50   Input ~ 0
CE
Text GLabel 6450 4500 0    50   Input ~ 0
SCK
Wire Wire Line
	6450 4700 6750 4700
Wire Wire Line
	6450 4800 6750 4800
Wire Wire Line
	6750 4300 6450 4300
Wire Wire Line
	6750 4200 6450 4200
Wire Wire Line
	6450 4500 6750 4500
Wire Wire Line
	6450 4100 6750 4100
Wire Wire Line
	6450 4400 6750 4400
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 5CCBA463
P 3450 1350
F 0 "J2" V 3615 1280 50  0000 C CNN
F 1 "16x2_LCD_Display" V 3524 1280 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 3450 1350 50  0001 C CNN
F 3 "~" H 3450 1350 50  0001 C CNN
	1    3450 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CCBC8A9
P 2700 1650
F 0 "#PWR02" H 2700 1400 50  0001 C CNN
F 1 "GND" V 2705 1522 50  0000 R CNN
F 2 "" H 2700 1650 50  0001 C CNN
F 3 "" H 2700 1650 50  0001 C CNN
	1    2700 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1650 2750 1650
Wire Wire Line
	2750 1650 2750 1550
$Comp
L power:+5V #PWR04
U 1 1 5CCBEAD3
P 2800 1800
F 0 "#PWR04" H 2800 1650 50  0001 C CNN
F 1 "+5V" V 2815 1928 50  0000 L CNN
F 2 "" H 2800 1800 50  0001 C CNN
F 3 "" H 2800 1800 50  0001 C CNN
	1    2800 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1800 2850 1800
Wire Wire Line
	2850 1800 2850 1550
$Comp
L Device:R_POT RV1
U 1 1 5CCC0D6F
P 2950 2050
F 0 "RV1" V 2835 2050 50  0000 C CNN
F 1 "1k" V 2950 2050 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_248BH-249BH_Single_Horizontal" H 2950 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1900 2950 1550
$Comp
L power:GND #PWR03
U 1 1 5CCC37BF
P 2750 2050
F 0 "#PWR03" H 2750 1800 50  0001 C CNN
F 1 "GND" V 2755 1922 50  0000 R CNN
F 2 "" H 2750 2050 50  0001 C CNN
F 3 "" H 2750 2050 50  0001 C CNN
	1    2750 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2050 2800 2050
$Comp
L power:+5V #PWR020
U 1 1 5CCC55B7
P 3150 2050
F 0 "#PWR020" H 3150 1900 50  0001 C CNN
F 1 "+5V" V 3165 2178 50  0000 L CNN
F 2 "" H 3150 2050 50  0001 C CNN
F 3 "" H 3150 2050 50  0001 C CNN
	1    3150 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2050 3100 2050
Wire Wire Line
	3050 1550 3050 1750
Text Label 3050 1750 1    50   ~ 0
RS
Text Label 3150 1750 1    50   ~ 0
RW
Wire Wire Line
	3150 1750 3150 1550
Wire Wire Line
	3250 1550 3250 1750
Text Label 3250 1750 1    50   ~ 0
E
Wire Wire Line
	3750 1750 3750 1550
Wire Wire Line
	3850 1750 3850 1550
Wire Wire Line
	3950 1750 3950 1550
Wire Wire Line
	4050 1750 4050 1550
NoConn ~ 4150 1550
NoConn ~ 4250 1550
Text Label 3750 1750 1    50   ~ 0
DB4
Text Label 3950 1750 1    50   ~ 0
DB6
Text Label 4050 1750 1    50   ~ 0
DB7
Text Label 3850 1750 1    50   ~ 0
DB5
Connection ~ 2950 1550
Wire Wire Line
	2950 1550 2950 1350
Wire Notes Line
	4350 1050 4350 2650
Wire Notes Line
	4350 2650 2300 2650
Wire Notes Line
	2300 2650 2300 1050
Wire Notes Line
	2300 1050 4350 1050
NoConn ~ 3350 1550
NoConn ~ 3450 1550
NoConn ~ 3550 1550
NoConn ~ 3650 1550
Wire Wire Line
	8950 4100 8750 4100
Wire Wire Line
	8950 4200 8750 4200
Wire Wire Line
	8950 4300 8750 4300
Wire Wire Line
	8950 4400 8750 4400
Text Label 8950 4100 2    50   ~ 0
DB4
Text Label 8950 4300 2    50   ~ 0
DB6
Text Label 8950 4400 2    50   ~ 0
DB7
Text Label 8950 4200 2    50   ~ 0
DB5
Wire Wire Line
	8750 4500 8950 4500
Text Label 8950 4500 2    50   ~ 0
RS
Text Label 8950 4600 2    50   ~ 0
RW
Wire Wire Line
	8950 4600 8750 4600
Wire Wire Line
	8750 4700 8950 4700
Text Label 8950 4700 2    50   ~ 0
E
$Comp
L Device:LED D2
U 1 1 5CD0C830
P 6100 5050
F 0 "D2" V 6138 4933 50  0000 R CNN
F 1 "LED" V 6047 4933 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6100 5050 50  0001 C CNN
F 3 "~" H 6100 5050 50  0001 C CNN
	1    6100 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5CD0CBE3
P 6100 5450
F 0 "R1" H 6159 5496 50  0000 L CNN
F 1 "330" H 6159 5405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" H 6100 5450 50  0001 C CNN
F 3 "~" H 6100 5450 50  0001 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5350 6100 5200
Wire Wire Line
	6100 4900 6100 4600
Wire Wire Line
	6100 4600 6750 4600
$Comp
L power:GND #PWR021
U 1 1 5CD12453
P 6100 5750
F 0 "#PWR021" H 6100 5500 50  0001 C CNN
F 1 "GND" H 6105 5577 50  0000 C CNN
F 2 "" H 6100 5750 50  0001 C CNN
F 3 "" H 6100 5750 50  0001 C CNN
	1    6100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5750 6100 5550
NoConn ~ 8750 4800
Text GLabel 8950 4600 2    50   Input ~ 0
~MCLR
$EndSCHEMATC