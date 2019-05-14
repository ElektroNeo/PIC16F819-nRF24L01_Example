/*
 * File: lcd.c
 *
 * Copyright (c) 2015 Manolis Agkopian
 * See the file LICENSE for copying permission.
 *
 * LCD library source file.
 */
 
#include "lcd.h"

// ---
void LCDInitialize() {
    ADCON1 = 0x06;
    TRISA = 0;
    PORTA = 0;
    
    PORTAbits.RA6 = 0;  // E pin
    PORTAbits.RA7 = 0;  // RW pin
    PORTAbits.RA4 = 0;  // RS pin
    
    __delay_ms(50);
    
    LCDSendNibble(0x03);
    __delay_ms(5);
    LCDSendNibble(0x03);
    __delay_ms(5);
    LCDSendNibble(0x03);
    __delay_ms(5);
    LCDSendNibble(0x02);
    __delay_ms(5);
    LCDSendByte(0, 0x28);
    LCDSendByte(0, 0xc);
    LCDSendByte(0, 1);
    LCDSendByte(0, 6);
}

// ---
void LCDDisplayToggle(uint8_t time, uint8_t num) {
    for(num; num > 0; num--) {
        LCDSendByte(0, DisplayOff);
        for(time; time > 0; time--) {
            __delay_ms(100);
        }
        LCDSendByte(0, DisplayOn);
        for(time; time > 0; time--) {
            __delay_ms(100);
        }
    }
}

uint8_t LCDReadNibble(void) {
    uint8_t nibble = 0;
    
    nibble |= PORTAbits.RA0 << 0;
    nibble |= PORTAbits.RA1 << 1;
    nibble |= PORTAbits.RA1 << 2;
    nibble |= PORTAbits.RA1 << 3;

    return nibble;
}

uint8_t LCDReadByte() {
    uint8_t low, high;
    
    TRISAbits.TRISA0 = 1;
    TRISAbits.TRISA1 = 1;
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA3 = 1;
    
    PORTAbits.RA7 = 1;  // RW pin - Read Mode
    _delay(1);
    PORTAbits.RA6 = 1;  // E pin - LCD Enable
    _delay(1);
    high = LCDReadNibble();
    
    PORTAbits.RA6 = 0;  // E pin - LCD Disable
    _delay(1);
    PORTAbits.RA6 = 1;  // E pin - LCD Enable
    __delay_us(1);
    low = LCDReadNibble();
    
    PORTAbits.RA6 = 0;  // E pin - LCD Disable
    
    TRISAbits.TRISA0 = 0;
    TRISAbits.TRISA1 = 0;
    TRISAbits.TRISA2 = 0;
    TRISAbits.TRISA3 = 0;
    
    return ((high<<4) | low); 
}

// ---
void LCDSendNibble(uint8_t nibble) {
    PORTAbits.RA0 = (unsigned)((nibble & 0b00000001) >> 0);
    PORTAbits.RA1 = (unsigned)((nibble & 0b00000010) >> 1);
    PORTAbits.RA2 = (unsigned)((nibble & 0b00000100) >> 2);
    PORTAbits.RA3 = (unsigned)((nibble & 0b00001000) >> 3);
    
    _delay(1);
    PORTAbits.RA6 = 1;  // E pin - LCD Enable
    __delay_us(2);
    PORTAbits.RA6 = 0;  // E pin - LCD Disable
}

// ---
void LCDSendByte(uint8_t reg, uint8_t byte) {
    PORTAbits.RA4 = 0;  // RS pin
    
    while(((LCDReadByte()) >> 7) & 1);
    __delay_ms(1);
    
    PORTAbits.RA4 = reg;  // RS pin - Register Select
    
    _delay(1);
    PORTAbits.RA7 = 0;  // RW pin
    _delay(1);
    
    PORTAbits.RA6 = 0;  // E pin - LCD Disable
    LCDSendNibble(byte >> 4);
    LCDSendNibble(byte & 0x0f);
}

/*
************* Display Position ***************
1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16
-----------------------------------------------
00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
40 41 42 43 44 45 46 47 48 49 4A 4B 4C 4D 4E 4F
*/
// ---
void LCDSetPos(uint8_t x, uint8_t y) {
    uint8_t addr;
    
    if(y == 2)
        addr = 0x40;
    else
        addr = 0;
    
    addr += x-1;
    
    //uint8_t Pos = (unsigned)(0x80 + y*64 + x);
    LCDSendByte(0, 0x80 | addr);
}

// ---
void LCDPutChar(uint8_t byte, uint8_t x, uint8_t y) {
    LCDSetPos(x, y);
    LCDSendByte(1, byte);
}

// ---
void LCDPutString(uint8_t string[], uint8_t x, uint8_t y) {
    LCDSetPos(x, y);
    for(uint8_t i = 0; i < 17; i++) {
        
        if(string[i] == '\0')
            break;
        LCDSendByte(1, string[i]);
    }
}