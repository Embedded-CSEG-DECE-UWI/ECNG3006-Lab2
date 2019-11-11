#include <p18f452.h>
#include <FreeRTOS.h>
#include <task.h>
#include "timers.h"
#include "xlcd_GpE.h"


#pragma config OSC = HS     //- set HS oscillator
#pragma config WDT = OFF    //- disable watchdog timer
#pragma config LVP = OFF    //- disable low voltage programming

/*Declarations*/

volatile int stopped = 0;

/*Function Prototypes*/

void TaskA(void *pdata);
void TaskB(void *pdata);

void main(void){
    
    INTCONbits.GIE = 0;
    
    xTaskCreate(TaskA,"TaskA",configMINIMAL_STACK_SIZE,NULL,1,NULL);
    xTaskCreate(TaskB,"TaskB",configMINIMAL_STACK_SIZE,NULL,2,NULL);

    InitLCD();
    vTaskStartScheduler();
    
}

/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
*                 -- toggle PORTB pin 1
*                 -- delay for 1 second using vTaskDelay()
* TaskA will delete itself if the loop is exited.
*/

void TaskA(void *pdata)
{
    TRISBbits.RB2 = 0;
    PORTBbits.RB2 = 1;
    while (stopped == 0)
    {
        while(BusyXLCD());
        SetDDRamAddr(0x00);
        while(BusyXLCD());
        putrsXLCD("Task 1 rocks\n");
        LATBbits.LATB2 = !LATBbits.LATB2;
        vTaskDelay(1000);
    }
    
vTaskDelete(NULL);

}

/* Write the appropriate code to do the following:
* Configuee PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
*                 -- toggle PORTB pin 2
*                 -- delay of 200 ms using vTaskDelay(), specifying the time in ms instead of ticks
* TaskB will delete itself if the loop is exited.
*/
void TaskB(void *pdata)
{
    TRISBbits.RB1 = 0;
    PORTBbits.RB1 = 1;
    while (stopped == 0)
    {
        while(BusyXLCD());
        SetDDRamAddr(0x50);
        while(BusyXLCD());
        putrsXLCD("Task 2 rules?\n");
        LATBbits.LATB1 = !LATBbits.LATB1;
        vTaskDelay(200);
    }
    vTaskDelete(TaskB);
}