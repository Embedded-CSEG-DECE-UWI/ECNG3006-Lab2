///////////////////////////////////////////////////////////////////
//Student ID No.: 815008434
//Date:18/10/2019
///////////////////////////////////////////////////////////////////

#include    <p18f452.h>
#include    "FreeRTOS.h"
#include 	"task.h"
#include    <timers.h>
#include    "xlcd_GpE.h"
#include    <semphr.h>

/*  Write the appropriate code to set configuration bits:
* - set HS oscillator
* - disable watchdog timer
* - disable low voltage programming
*/

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#define XTAL_FREQ 4000000

/*****************************************
 *Definitions
 *****************************************/

volatile int stopped = 0;
SemaphoreHandle_t xLCDSemaphore;

/*****************************************
 *Prototypes
 ****************************************/

void TaskA(void *pdata);
void TaskB(void *pdata);
void appISR (void){
    int i = 15;
}

void main (void)
{
    //Create a counting semaphore that is used in resource management
    //This means the max count must be the same as the initial count
    xLCDSemaphore = xSemaphoreCreateCounting(1,1);
    
    // Write the appropriate code to disable all interrupts 
	INTCONbits.GIE = 0;
    // Write code to create tasks A and B
    xTaskCreate(TaskA,"TaskA",configMINIMAL_STACK_SIZE ,NULL,1,NULL);
    xTaskCreate(TaskB,"TaskB",configMINIMAL_STACK_SIZE ,NULL,2,NULL);
   	
    /* Write the appropriate code to define the priorities for taskA
    *   and taskB in "FreeRTOSConfig.h". Use these defines to assign priorities 
    *   when creating taskA and taskB with xTaskCreate()
    */

    // Initialise the LCD display
    InitLCD();
    // Write the appropriate code to start FreeRTOS kernel
    //INTCONbits.GIE = 1;
    vTaskStartScheduler();
    for(;;);
    
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
    TRISBbits.RB1 = 0;
    PORTBbits.RB1 = 1;
    while(stopped != 1)
    {
        xSemaphoreTake(xLCDSemaphore,100);
        while(BusyXLCD());
        SetDDRamAddr(0x00);
        while(BusyXLCD());
        putrsXLCD("Task 1 rocks!\n");
        xSemaphoreGive(xLCDSemaphore);
        LATBbits.LATB1 = !LATBbits.LATB1;
        vTaskDelay(1000);
    }
    
    vTaskDelete(NULL);
}

/* Write the appropriate code to do the following:
* Configure PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
*                 -- toggle PORTB pin 2
*                 -- delay of 200 ms using vTaskDelay(), specifying the time in ms instead of ticks
* TaskB will delete itself if the loop is exited.
*/

void TaskB(void *pdata)
{
    TRISBbits.RB2 = 0;
    PORTBbits.RB2 = 1;

    while(stopped != 1)
    {
        xSemaphoreTake(xLCDSemaphore,100);
        while(BusyXLCD());
        SetDDRamAddr(0x50);
        while(BusyXLCD());
        putrsXLCD("Task 2 rules?\n");
        xSemaphoreGive(xLCDSemaphore);
        LATBbits.LATB2 = !LATBbits.LATB2;
        vTaskDelay(pdMS_TO_TICKS(200));
    }
    
    vTaskDelete(NULL);
}