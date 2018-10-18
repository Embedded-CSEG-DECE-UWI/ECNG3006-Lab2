///////////////////////////////////////////////////////////////////
// Student ID No.: 816003713
// Date: 010/10/18
///////////////////////////////////////////////////////////////////
#include <p18cxxx.h>        // Register definitions
#include "includes.h"
#include "os_cpu.h"
#include "ucos_ii.h"
//#include "ucos_ii.h"
#include <delays.h>
#include <timers.h>
#include <xlcd.h>
#include <p18f452.h>
/* Write the appropriate code to set configuration bits:
* - set HS oscillator
* - disable watchdog timer
* - disable low voltage programming
*/

/*Notes to myself:
 * The printing of the address and message to the XLCD could be done in one function
 * to be called.
 
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

void configXLCD()
{
   OpenXLCD(FOUR_BIT & LINES_5X7);           //Configure LCD Screen
   while (BusyXLCD()){};
   WriteCmdXLCD(SHIFT_DISP_LEFT);
}

void TaskA(void *pdata)
{
    
   TRISBbits.RB0 = 0;                       //Configure PORTB pin 1 as an output
   
   while (globalVar != 1)
	{
                                             //Code for printing string 
        SetDDRamAddr(0x00);                  //* Within the loop -- print string "Task 1 rocks! \n" to LCD top row
        while (BusyXLCD()){};
        putrsXLCD("Task 1 rocks!");
        while (BusyXLCD()){};
        
       //Set the cursor to the first cell in the top row
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
 
	TRISBbits.RB1 = 0;                      //Configure PORTB RB1 as an output
    
	while (globalVar != 1)
	{
        //Code for printing the next string 
        //* TaskB will loop until the global variable stopped is set.
        //* Within the loop -- print string "Task 2 rules?\n" to LCD bottom row
        
        SetDDRamAddr(0x10);                 //Sets the LCD cursor to the last row first position               
        while (BusyXLCD()){};
        putrsXLCD("Task 2 rules?\n");       //String message
        while (BusyXLCD()){};
		
		PORTBbits.RB1 = !PORTBbits.RB1;     //Toggle PORTB pin 2
		OSTimeDly(200);                     //Delay of 200 ticks
	}
}
void main(void)
{
    
    OS_CPU_SR cpu_sr;                         // Controls the bits in the status register of the PIC
            
	OS_ENTER_CRITICAL();                     // Write the appropriate code to disable all interrupts //
    //INTCONbits.GIE = 0;
	OSInit();                                // Write the appropriate code to initialise uC/OS II kernel
	OpenTimer0(TIMER_INT_ON &
            T0_16BIT & 
            T0_SOURCE_INT & 
            T0_PS_1_1
            );                            
                                            /* Write the appropriate code to enable timer0 ,
                                             * using 16 bit mode on internal clk source and pre-scalar of 1.
                                          */
            
                                          /* Write the appropriate code to set timer0 registers
                                            * such that timer0 expires at 10ms using 4 Mhz oscillator.
                                            * Do the same in vectors.c in CPUlowInterruptHook( ).
                                            */
    T0CONbits.TMR0ON = 0;                  //Turn off timer0
    WriteTimer0(55535);                    //TMR0_Reg = (2^16 - 1) - ((0.010)-(4000000))/(4*1)
    T0CONbits.TMR0ON=  1;                  //Turn on timer0
    
                                        /* Write the appropriate code to define the priorities for taskA
                                        * and taskB in app_cfg.h. Use these defines to assign priorities
                                        * when creating taskA and taskB with OSTaskCreate( )
                                        */
    OSTaskCreate(TaskA, (void *)0, &TaskAStk[TASK_STK_SIZE-1], OS_TASKA_PRIO);
    OSTaskCreate(TaskB, (void *)0, &TaskBStk[TASK_STK_SIZE-1], OS_TASKB_PRIO);
	configXLCD();                        // Initialise the LCD display
	OSStart();                           // Write the appropriate code to start uC/OS II kernel
}