///////////////////////////////////////////////////////////////////
// Student ID No.: 816002553
// Date: 03/10/18
///////////////////////////////////////////////////////////////////
#include <p18cxxx.h>        // Register definitions
#include "includes.h"
#include <delays.h>
#include <timers.h>
#include <xlcd.h>
/* Write the appropriate code to set configuration bits:
* - set HS oscillator
* - disable watchdog timer
* - disable low voltage programming
*/




#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

/* Write LCD delay functions */
void DelayFor18TCY(void)
{
	/* Create a delay of 18 cycles */
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop(); Nop(); Nop();
	Nop(); Nop();
}
void DelayPORXLCD(void)
{
	Delay1KTCYx(15);    /* Create a delay of 15 ms */
}
void DelayXLCD(void)
{
	Delay1KTCYx(5);     /* Create a delay of 5 ms */
}
/* Write the appropriate code to do the following:
* define the stack sizes for task1 and task2 in app_cfg.h file
* use the defines to assign stack sizes here.
*/
OS_STK TaskAStk[TASK_STK_SIZE];
OS_STK TaskBStk[TASK_STK_SIZE];
/* Write the appropriate code to do the following:
* Configure PORTB pin 1 as an output
* TaskA will loop until the global variable stopped is set.
* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
* -- toggle PORTB pin 1
* -- delay for 1 second using OSTimeDlyHMSM ( )
* TaskA will delete itself if the loop is exited.
*/

int globalVar = 0; //Global Variable for TaskA & TaskB

void TaskA(void *pdata)
{

	TRISBbits.RB0 = 0;                       //Configure PORTB pin 1 as an output
	while (globalVar != 1)
	{
                                             //Code for printing string 
                                             //* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
        PORTBbits.RB0 = !PORTBbits.RB0;      //toggle PORTB pin 1
		OSTimeDlyHMSM(0, 0, 1, 0);           //Delay for 1 sec
	}
	OSTaskDel(OS_PRIO_SELF);
}
/* Write the appropriate code to do the following:
* Configure PORTB pin 2 as an output
* TaskB will loop until the global variable stopped is set.
* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
* -- toggle PORTB pin 2
* -- delay of 200 ticks using OSTimeDly ( )
* TaskB will delete itself if the loop is exited.
*/
void TaskB(void *pdata)
{
	TRISBbits.RB1 = 0;
	while (globalVar != 1)
	{
		//Code for printing the next string 
		PORTBbits.RB1 = !PORTBbits.RB1;     //Toggle PORTB pin 2
		OSTimeDly(200);                     //Delay of 200 ticks
	}
}
void main(void)
{
	// Write the appropriate code to disable all interrupts
	// Write the appropriate code to initialise uC/OS II kernel
	/* Write the appropriate code to enable timer0 ,
	* using 16 bit mode on internal clk source and pre-scalar of 1.
	*/
	/* Write the appropriate code to set timer0 registers
	* such that timer0 expires at 10ms using 4 Mhz oscillator.
	* Do the same in vectors.c in CPUlowInterruptHook( ).
	*/
	/* Write the appropriate code to define the priorities for taskA
	* and taskB in app_cfg.h. Use these defines to assign priorities
	* when creating taskA and taskB with OSTaskCreate( )
	*/
	// Initialise the LCD display
	// Write the appropriate code to start uC/OS II kernel
}