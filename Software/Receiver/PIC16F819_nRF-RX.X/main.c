/*
 * File:   main.c
 * Author: bahti
 *
 * Created on May 12, 2019, 4:56 AM
 */

// PIC16F819 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // RA5/MCLR/VPP Pin Function Select bit (RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = OFF        // Low-Voltage Programming Enable bit (RB3/PGM pin has digital I/O function, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EE Memory Code Protection bit (Code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off)
#pragma config CCPMX = RB2      // CCP1 Pin Selection bit (CCP1 function on RB2)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <stdio.h>
#include <string.h>
#include <xc.h>
#define _XTAL_FREQ 8000000

#include "lcd.h"
#include "nRF24L01.h"

int main ( void ) {
    
    OSCCONbits.IRCF = 0b111;
    OSCCONbits.IOFS = 1;
    
    TRISBbits.TRISB5 = 0;
    PORTBbits.RB5 = 0;

    LCDInitialize();
    nRF_Init(RX_MODE, 0x40);
    
    char bufferRX[32];
    bufferRX[0] = '0';
    
    char str[20] = "Baglanti yok.";
    
    LCDSendByte(0, ClearDisplay);
    LCDPutString(str, 1, 1);
    __delay_ms(2000);
    
    while(1) {
        if(nRF_DataReady()){
            nRF_ReadData(bufferRX);
            
            if(bufferRX[0] == '-') {
                strcpy(str, "Baglandi...");
                PORTBbits.RB5 = 0;
            }else if(bufferRX[0] == 'A') {
                strcpy(str, "A Butonu.");
                __delay_ms(50);
                PORTBbits.RB5 ^= 1;
            }else if(bufferRX[0] == 'B') {
                strcpy(str, "B Butonu.");
                __delay_ms(150);
                PORTBbits.RB5 ^= 1;
            }else if(bufferRX[0] == 'C') {
                strcpy(str, "C Butonu.");
                __delay_ms(250);
                PORTBbits.RB5 ^= 1;
            }
            
            LCDSendByte(0, ClearDisplay);
            LCDPutString(str, 1, 1);
            LCDPutString("Mustafa Duger", 1, 2);
            __delay_ms(300);
        }
    }
    return (0);
}