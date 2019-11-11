#include <p18f452.h> //ID #816008425 Group A  
#include <delays.h>
#include "xlcd.h"

 /* Set configuration bits for use with PICKit3 and 4MHz oscillator */
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#define XTAL_FREQ 4000000

  int i=0;

  void DelayFor18TCY( void )
{
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
 Nop();
}
void DelayPORXLCD( void )
{
 Delay1KTCYx(15); //Delay of 15ms
 
}
void DelayXLCD( void )
{
 Delay1KTCYx(5); //Delay of 5ms
 
}

void lcdconfig (){
    OpenXLCD (FOUR_BIT & LINES_5X7);
    while(BusyXLCD());
    SetDDRamAddr(0x40);
    while(BusyXLCD());
    WriteCmdXLCD(SHIFT_DISP_LEFT);
}
void main( void )
{
  
    TRISBbits.RB0=0;
    for(i=0;i<5;i++)
    {
    if(PORTBbits.RB0==0)
    {
    PORTBbits.RB0=1;
    }
    else 
    {
    PORTBbits.RB0=0;
    }
    }
        
    lcdconfig();
    while(BusyXLCD());
    putrsXLCD("hello world!");
    while(1);
    
}
