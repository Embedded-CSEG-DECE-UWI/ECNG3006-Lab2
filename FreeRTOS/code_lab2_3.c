
#include    "FreeRTOS.h"
#include    <semphr.h>
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

SemaphoreHandle_t semcount = NULL;
SemaphoreHandle_t semcount1 = NULL;


void TaskA(void *pvParameters )
{
/*
char *pcTaskName;
volatile uint32_t ul;
pcTaskName = ( char * ) pvParameters; */
  
  TRISBbits.RB0 = 0;                       //Configure PORTB pin 1 as an output
 
   
   while (globalV == 0 )
	{
         
                    /* See if we can obtain the semaphore.  If the semaphore is not
                    available wait 10 ticks to see if it becomes free. */
                    xSemaphoreTake( semcount, ( TickType_t ) 10 );
                  
                        /* We were able to obtain the semaphore and can now access the
                        shared resource. */

                        SetDDRamAddr(0x00);                  //* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
                        while (BusyXLCD()){};

                        putrsXLCD("Task 1 rules? \n ");
                        while (BusyXLCD()){};

                                                             //Set the cursor to the first cell in the top row
                    PORTBbits.RB0 = !PORTBbits.RB0;      //toggle PORTB pin 1

                    vTaskDelay(1000);           //Delay for 1 sec

                        /* We have finished accessing the shared resource.  Release the
                        semaphore. */
                    xSemaphoreGive( semcount);
                   
               
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

TRISBbits.RB1 = 0;                      //Configure PORTB RB1 as an output
    
	while (globalV == 0)
	{               
     /* See if we can obtain the semaphore.  If the semaphore is not
      available wait 10 ticks to see if it becomes free. */
         xSemaphoreTake( semcount, ( TickType_t ) 10 );
                    
                        /* We were able to obtain the semaphore and can now access the
                        shared resource. */

        SetDDRamAddr(0x10);                 //Sets the LCD cursor to the last row first position               
        while (BusyXLCD()){};

        putrsXLCD("Task 2 rules? \n ");       //String message
        while (BusyXLCD()){};
        xSemaphoreGive( semcount );
       

        PORTBbits.RB1 = !PORTBbits.RB1;     //Toggle PORTB pin 2
        xSemaphoreTake( semcount1, ( TickType_t ) 10 );//vTaskDelay(200);           //Delay for 1 sec

                        /* We have finished accessing the shared resource.  Release the
                        semaphore. */
                    
                   
                 //Code for printing the next string 
        //* TaskB will loop until the global variable stopped is set.
        //* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
        
                       //Delay of 200 ms
	}
    vTaskDelete( NULL );
}

#pragma interruptlow appISR save=PRODH, PRODL, TABLAT,section (".tmpdata")

void appISR(void)
{
    if(INTCONbits.TMR0IF == 1) 
    {
        INTCONbits.TMR0IF = 0;
        WriteTimer0(53368);
    }// not sure
        xSemaphoreGiveFromISR( semcount1, NULL );  
}


void main (void)
{
    INTCONbits.GIE = 0;                    // Write the appropriate code to disable all interrupts 
    
    OpenTimer0 (TIMER_INT_ON & T0_SOURCE_INT & T0_16BIT & T0_PS_1_4);
    WriteTimer0(53368);
    INTCONbits.GIE = 1;
    
    semcount  = xSemaphoreCreateCounting( 1,1 );
    semcount1 = xSemaphoreCreateCounting( 1,0 );
    
    
	if (semcount != NULL){
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
   
}