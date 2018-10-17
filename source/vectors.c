/*
*********************************************************************************************************
*                                               uC/OS-II
*                                         The Real-Time Kernel
*
*                           (c) Copyright 2002, Nathan Brown, Longview, TX
*                                      http://www.sputnickonline.com/
*                                          All Rights Reserved
*
*                                   PIC18xxxx Interrupt Specific Code
*                                       V1.00 - October 27, 2002
*
* File : VECTORS.C
* By   : Nathan Brown
*********************************************************************************************************
*/

#include "includes.h"
#include <timers.h>

/*
*********************************************************************************************************
*                               INTERRUPT SERVICE ROUTINE HOOK
*
* Description:  This function is called when a interrupt service routine is call.  The state of the
*               current proccess is already saved.  This allows you to order the responses and to
                call your own coded for interrupts.
*
* Arguments  :  none
*
* Note(s)    :  1)  OSTimeTick() must be called from the timer routine that is pulsing at 10 to 100 times
*                   a second.
*               2)  You must clear the interrupt before calling OSTimeTick().
*********************************************************************************************************
*/
void CPUlowInterruptHook(void)
{
    OSIntEnter();
   //INTCONbits.GIE = 0;
    if(INTCONbits.TMR0IF) {                     // check for TMR0 overflow
        INTCONbits.TMR0IF = 0;                  // clear interrupt flag
       // TMR0H = 0xD8;                           // set the timer to expire in 10 ms. (at 4MHz)
        //TMR0L = 0xA0;
            
        T0CONbits.TMR0ON = 0;                  //Turn off timer0
        WriteTimer0(55535);                    //TMR0_Reg = (2^16 - 1) - ((0.010)-(4000000))/(4*1)
        T0CONbits.TMR0ON=  1;                  //Turn on timer0
        
        OSTimeTick();                           // Call required os timer
    }

    /* Insert other interrupt items here */
    appISR();                               //Call ISR in CPUlowInterruptHook
    //INTCONbits.GIE = 1;
    OSIntExit();
}  

#pragma interrupt CPUhighInterruptHook
void CPUhighInterruptHook(void)
{
   /* Insert high priority interrupt items here 
     * Do not make any OS function calls. */

}
