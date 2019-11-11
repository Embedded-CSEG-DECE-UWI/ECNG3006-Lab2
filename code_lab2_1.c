///////////////////////////////////////////////////////////////////
//Student ID No.: 816117563
//Date: 15/10/2019 last edit 
///////////////////////////////////////////////////////////////////
#include <FreeRTOS.h>
#include "task.h"
#include <timers.h>
#include <xlcd.h>
#include <delays.h>
/* Write the appropriate code to set configuration bits:
* - set HS oscillator
* - disable watchdog timer
* - disable low voltage programming
*/




#pragma config WDT = OFF
#pragma config OSC = HS
#pragma config LVP = OFF
#define XTAL_FREQ = 4000000;

extern int stopped;
int stopped = 0; 


/* Write LCD delay functions */
void DelayFor18TCY( void )
{
/* Create a delay of 18 cycles */
    Delay10TCYx(1); 

Nop(); 

Nop(); 

Nop(); 

Nop(); 

Nop(); 

Nop(); 

Nop(); 

Nop(); 
}
void DelayPORXLCD (void)
{
/* Create a delay of 15 ms */
    Delay10KTCYx(1);
    Delay1KTCYx(5); 
}
void DelayXLCD (void)
{
/* Create a delay of 5 ms */
    Delay1KTCYx(5); 
}
/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
* -- toggle PORTB pin 1
* -- delay for 1 second using vTaskDelay()
* TaskA will delete itself if the loop is exited.
*/
void TaskA(void *pdata )
{
    TRISBbits.TRISB1 = 0; 
   
   //  const TickType_t xDelay = 1000 / portTICK_PERIOD_MS;
    while (stopped!=1)
    {
        WriteCmdXLCD(SHIFT_DISP_LEFT);
        while(BusyXLCD()); 
        SetDDRamAddr(0x01);
        while(BusyXLCD());    
        putrsXLCD("Task 1 rocks!");  
        while(BusyXLCD());
        LATBbits.LATB1 = !LATBbits.LATB1;
        vTaskDelay(100); //ask about this 
    }
    vTaskDelete(NULL); //task deletes itself 
}
/* Write the appropriate code to do the following:
* Configuee PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
* -- toggle PORTB pin 2
* -- delay of 200 ms using vTaskDelay(), specifying the time in ms instead of ticks
* TaskB will delete itself if the loop is exited.
*/
void TaskB(void *pdata )
{
    TRISBbits.TRISB2 = 0;
    while (stopped!=1)
    {
        WriteCmdXLCD(SHIFT_DISP_LEFT);
        while(BusyXLCD());
        SetDDRamAddr(0x50);
        while(BusyXLCD());     
        putrsXLCD("Task 2 rules?");
         while(BusyXLCD());
        LATBbits.LATB2 = !LATBbits.LATB2; 
        vTaskDelay((20));
        
       }
    
    vTaskDelete(NULL); //task deletes itself
}

void vSerialRxISR (void){

}

void vSerialTxISR (void){

}
void lcdconfig (){
    OpenXLCD (FOUR_BIT & LINES_5X7);
   
}
void main (void)
{
// Write the appropriate code to disable all interrupts
// Write code to create tasks A and B
/* Write the appropriate code to define the priorities for taskA
* and taskB in "FreeRTOSConfig.h". Use these defines to assign priorities
* when creating taskA and taskB with xTaskCreate()
*/
// Initialise the LCD display
// Write the appropriate code to start FreeRTOS kernel
    
   
    
    xTaskCreate(TaskA, "TaskA", configMINIMAL_STACK_SIZE, NULL, 2, NULL);
    xTaskCreate(TaskB, "TaskB", configMINIMAL_STACK_SIZE, NULL, 1, NULL); //not sure about what has to be done with FreeRTOSConfig.h
    
    lcdconfig();
    vTaskStartScheduler(); //starts freeRTOS Kernel 
    Nop();
}
