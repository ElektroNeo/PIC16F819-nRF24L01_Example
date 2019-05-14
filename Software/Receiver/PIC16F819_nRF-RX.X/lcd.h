#ifndef LCD_H
#define LCD_H

#define _XTAL_FREQ 8000000


#define ClearDisplay        0b00000001 // Clears entire display and sets DDRAM address 
                                       // 0 in address counter.
#define ReturnHome          0b00000010 // Sets DDRAM address 0 in address counter. Also
                                       // returns display from being shifted to original 
                                       // position. DDRAM contents remain unchanged.
#define EntryModeSet        0b00000110 // Sets cursor move direction and specifies display 
                                       // shift. These operations are performed during 
                                       // data write and read.
#define DisplayOn           0b00001100 // Sets entire display (D) on, cursor off 
                                       // (C), and blinking of cursor position 
                                       // character (B) off.
#define DisplayOff          0b00001000 // Sets entire display (D) off, cursor off 
                                       // (C), and blinking of cursor position 
                                       // character (B) off.
#define ShiftCursorToLeft   0b00010000 // Shifts the cursor position to the left. 
                                       // (AC is decremented by one.)
#define ShiftCursorToRight  0b00010100 // Shifts the cursor position to the right. 
                                       // (AC is incremented  by one.)
#define ShiftDisplayToLeft  0b00011000 // Shifts the entire display to the left. 
                                       // The cursor follows the display shift.
#define ShiftDisplayToRight 0b00011100 // Shifts the entire display to the right. 
                                       // The cursor follows the display shift.
#define FunctionSet8Bit     0b00111000 // Sets interface data length 8-bit(DL), number of
                                       // display lines 2 (N), and character font (F).
#define FunctionSet4Bit     0b00101000 // Sets interface data length 4-bit(DL), number of
                                       // display lines 2 (N), and character font (F).
#define FirstLine           0b10000000
#define SecondLine          0b11000000

#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include <math.h>

void LCDInitialize();
uint8_t LCDReadByte();
uint8_t LCDReadNibble();
void LCDSendByte(uint8_t reg, uint8_t byte);
void LCDSendNibble(uint8_t nibble);
void LCDCommand(uint8_t byte);
void LCDDisplayToggle(uint8_t time, uint8_t num);
void LCDSetPos(uint8_t x, uint8_t y);
void LCDPutChar(uint8_t byte, uint8_t x, uint8_t y);
void LCDPutString(uint8_t string[], uint8_t x, uint8_t y);

#endif
