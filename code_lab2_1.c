/////////////////////////////////////////////////////////////////// 
//Student ID No.: 

///////////////////////////////////////////////////////////////////
#include "FreeRTOS.h"
#include "task.h"
#include "xlcd_A.h"
#include "timers.h"
#include <delays.h>
#include <stdlib.h>
#include <string.h>
#include <p18f452.h>


/* Write the appropriate code to set configuration bits: * - set HS oscillator * - disable watchdog timer * - disable low voltage programming */
#pragma config OSC = HS
#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming
#define _XTAL_FREQ 4000000
#define index 1

void vSerialTxISR(void) {}
void vSerialRxISR(void) {}

/* Write LCD delay functions */
void DelayFor18TCY(void) {
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
  return;
}

void DelayXLCD(void) {
  Delay1KTCYx(5);
  return;
}

void DelayPORXLCD(void) {
  Delay1KTCYx(15);
  return;
}

void setup(void) {
  DelayPORXLCD();
  while (BusyXLCD());
  OpenXLCD(FOUR_BIT & LINES_5X7);
  DelayPORXLCD();
  while (BusyXLCD());
  SetDDRamAddr(0x00);
  DelayPORXLCD();
}


/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
*                 -- toggle PORTB pin 1
*                 -- delay for 1 second using vTaskDelay()
* TaskA will delete itself if the loop is exited.
*/
void TaskA(void * pdata) 
{

  TRISBbits.TRISB1 = 0;

  while (index) 
    {
        //setup();
        while (BusyXLCD());
        SetDDRamAddr(0x00);
        putrsXLCD(" Task 1 rocks!");
        DelayPORXLCD();
        LATBbits.LATB1^=1;
        vTaskDelay(100);
        
    }
  vTaskDelete(NULL); //TaskA will delete itself if the loop is exited.
}

/* Write the appropriate code to do the following: 
 * Configure PORTB pin 2 as an output 
 * TaskB will loop until the global variable stopped is set. 
 * Within the loop -- print string "Task 2 rules?\n" to LCD bottom row 
 * -- toggle PORTB pin 2 * -- delay of 200 ticks using OSTimeDly( ) 
 * TaskB will delete itself if the loop is exited. */ 
void TaskB(void * pdata) 
{

  TRISBbits.TRISB2 = 0;
  //PORTBbits.RB2 = 1;
  while(index) 
    {
        // setup();
        while (BusyXLCD());
        SetDDRamAddr(0x50);
        putrsXLCD(" Task 2 rules!");
        DelayPORXLCD();
        LATBbits.LATB2^=1;
        vTaskDelay(pdMS_TO_TICKS(200));
    }
  vTaskDelete(NULL); //TaskB will delete itself if the loop is exited.
}


void main(void) 
{  
  INTCONbits.GIE = 0; // Write the appropriate code to disable all interrupts 
  // Write code to create tasks A and B
  xTaskCreate(TaskA, "TaskA", 128, NULL, 2, NULL);
  xTaskCreate(TaskB, "TaskB", 128, NULL, 1, NULL);
  setup();   // Initialise the LCD display 
  PORTD = 0x00;
  TRISD = 0x00;
  // Write the appropriate code to start FreeRTOS kernel
  vTaskStartScheduler();
  for(;;) {}

}