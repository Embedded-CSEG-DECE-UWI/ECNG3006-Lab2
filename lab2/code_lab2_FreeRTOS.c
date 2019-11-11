///////////////////////////////////////////////////////////////////
//Student ID No.:
//Date:
///////////////////////////////////////////////////////////////////

#include    "FreeRTOS.h"
#include 	<task.h>
#include    <timers.h>
#include    <delays.h>
#include    <xlcd.h>



unsigned char  globalV = 0;
// Write the appropriate code to set configuration bits:
#pragma config WDT=OFF //- set HS oscillator
#pragma config OSC=HS//- disable watchdog timer
#pragma config LVP=OFF//- disable low voltage programming


/* Write LCD delay functions */
void vSerialRxISR (){}
void vSerialTxISR (){}
void DelayFor18TCY( void )
#define _XTAL_FREQ 4000000
{
  /* Create a delay of 18 cycles  */
    Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop();
}

void DelayPORXLCD (void)
{
  /* Create a delay of 15 ms  */  
    Delay1KTCYx(15);
}

void DelayXLCD (void)
{
  /* Create a delay of 5 ms  */  
    Delay1KTCYx(5);
}
/*void configXLCD()
{
   OpenXLCD(FOUR_BIT & LINES_5X7);           //Configure LCD Screen
   while (BusyXLCD()){};
   WriteCmdXLCD(SHIFT_DISP_LEFT);
}*/


/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
*                 -- toggle PORTB pin 1
*                 -- delay for 1 second using vTaskDelay()
* TaskA will delete itself if the loop is exited.
*/
void TaskA(void *pvParameters )
{
/*
char *pcTaskName;
volatile uint32_t ul;
pcTaskName = ( char * ) pvParameters; */
  
  TRISBbits.RB0 = 0;                       //Configure PORTB pin 1 as an output
   
   while (globalV == 0 )
	{
                                             //Code for printing string 
        SetDDRamAddr(0x00);                  //* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
        while (BusyXLCD()){};
       
        putrsXLCD("Task 1 rules? \n ");
        while (BusyXLCD()){};
        
                                                 //Set the cursor to the first cell in the top row
        PORTBbits.RB0 = !PORTBbits.RB0;      //toggle PORTB pin 1
        
		vTaskDelay(1000);           //Delay for 1 sec
   }
    
	vTaskDelete( NULL );
}

/* Write the appropriate code to do the following:
* Configure PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
*                 -- toggle PORTB pin 2
*                 -- delay of 200 ms using vTaskDelay(), specifying the time in ms instead of ticks
* TaskB will delete itself if the loop is exited.
*/
void TaskB(void *pvParameters)
{
 // char *pcTaskName;
//volatile uint32_t ul;
//pcTaskName = ( char * ) pvParameters; 

TRISBbits.RB1 = 0;                      //Configure PORTB RB1 as an output
    
	while (globalV == 0)
	{
        //Code for printing the next string 
        //* TaskB will loop until the global variable stopped is set.
        //* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
        
        SetDDRamAddr(0x10);                 //Sets the LCD cursor to the last row first position               
        while (BusyXLCD()){};
     
        putrsXLCD("Task 2 rules? \n ");       //String message
        while (BusyXLCD()){};
		
		PORTBbits.RB1 = !PORTBbits.RB1;     //Toggle PORTB pin 2
		vTaskDelay(200);                     //Delay of 200 ms
	}
    vTaskDelete( NULL );
}
//static const char *pcTextForTask1 = "Task 1 is running";
//static const char *pcTextForTask2 = "Task 2 is running";


void main (void)
{
    INTCONbits.GIE = 0;                     // Write the appropriate code to disable all interrupts 
	
    // Write code to create tasks A and B
    xTaskCreate(    TaskA,       /* Function that implements the task. */
                    "TaskA",          /* Text name for the task. */
                    configMINIMAL_STACK_SIZE,       /* Stack size in words, not bytes. */
                    NULL,     /* Parameter passed into the task. */
                    1, /* Priority at which the task is created. */
                    NULL );       /* Used to pass out the created task's handle. */

    xTaskCreate(    TaskB,       /* Function that implements the task. */
                    "TaskB",          /* Text name for the task. */
                    configMINIMAL_STACK_SIZE,       /* Stack size in words, not bytes. */
                    NULL,     /* Parameter passed into the task. */
                    1, /* Priority at which the task is created. */
                    NULL );       /* Used to pass out the created task's handle. */
	
  /* Write the appropriate code to define the priorities for taskA
  *   and taskB in "FreeRTOSConfig.h". Use these defines to assign priorities 
  *   when creating taskA and taskB with xTaskCreate()
  */

  // Initialise the LCD display'
    
    OpenXLCD( FOUR_BIT & LINES_5X7 );
    while( BusyXLCD() );
    WriteCmdXLCD( FOUR_BIT & LINES_5X7 );
    while( BusyXLCD() );
    WriteCmdXLCD( BLINK_ON );
    while( BusyXLCD() );
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while( BusyXLCD() );
  // Write the appropriate code to start FreeRTOS kernel
    vTaskStartScheduler();
    
    
}