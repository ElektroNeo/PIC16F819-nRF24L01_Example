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
#include <xc.h>
#include <pic16f819.h>
#define _XTAL_FREQ 8000000

#include "nRF24L01.h"

int main ( void ) {
    
    OSCCONbits.IRCF = 0b111;
    OSCCONbits.IOFS = 1;
    ADCON1 = 0x06;
    
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA3 = 1;
    TRISAbits.TRISA4 = 1;
    
    nRF_Init(TX_MODE, 0x40);
    char bufferTX[32];
    
    bufferTX[0] = '-';
    
    while(1) {
        if(PORTAbits.RA2 == 1) {
            bufferTX[0] = 'A';
        }
        if(PORTAbits.RA3 == 1) {
            bufferTX[0] = 'B';
        }
        if(PORTAbits.RA4 == 1) {
            bufferTX[0] = 'C';
        }
        
        nRF_SendData(bufferTX);
    }
    return (0);
}