///////////////////////////////////////////////////////////////////
//Student ID No.:816001185
//Date:11//11/2019
///////////////////////////////////////////////////////////////////

#include    "FreeRTOS.h"
#include 	"task.h"
#include    <timers.h>
#include    <p18f452.h>
#include    <p18cxxx.h>
#include    <xlcd.h>
#include    <semphr.h>

#pragma config OSC = HS 
#pragma config WDT = OFF 
#pragma config LVP = OFF

int a =0  ;
SemaphoreHandle_t xSemaphoreCount;
SemaphoreHandle_t xSemaphoreTime;  
 

void vSerialTxISR(void)
{
    
}

void Icdconfig (void) {
    OpenXLCD (FOUR_BIT & LINES_5X7) ; 
}

void DelayFor18TCY( void )
{
    Nop();
    Nop() ; 
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;
    Nop() ;   
    Nop() ; 
}

/* Write LCD delay functions */
void DelayPORXLCD (void)
{
    Delay1KTCYx(15) ; 
}

void DelayXLCD (void)
{
    Delay1KTCYx(5) ; 
}


//appISR must be run by the interrupt service rouyine in port.c
#pragma interruptlow appISR save=PRODH, PRODL, TABLAT, section(".tmpdata")
void appISR(void){
//Check if timer0 overflowed
    if(INTCONbits.TMR0IF == 1)
    {
    INTCONbits.TMR0IF = 0;
    WriteTimer0( 53368 );
    
    }
    xSemaphoreGiveFromISR(xSemaphoreTime,NULL);
//if timer0 overflowed, reset it and set value in timer to expire in 200ms
//release semaphore to signal to taskB
}

//TaskA

void TaskA(void *pdata)
{
     SemaphoreHandle_t xSemaphoreCount ;
      xSemaphoreCount = xSemaphoreCreateCounting(1,0) ; 
      TRISBbits.RB1 = 0 ; 
      
  while (a ==0) 
    {
   
    while (BusyXLCD()) ; 
    WriteCmdXLCD(SHIFT_DISP_LEFT) ; 
    while (BusyXLCD()) ; 
    SetDDRamAddr(0x00) ; 
    while(BusyXLCD()) ; 
    putrsXLCD("Task 1 rocks!") ; 
    while(BusyXLCD()) ; 
    if (PORTBbits.RB1 == 0){
        PORTBbits.RB1 = 1 ; 
    }
    else {
        PORTBbits.RB1 = 0 ; 
    }
    vTaskDelay(250) ; 
}
vTaskDelete(NULL) ; 
}

//TaskB
void TaskB(void *pdata)
{
    SemaphoreHandle_t xCountingSemaphore ; 
    xCountingSemaphore = xSemaphoreCreateCounting(1,0) ; 
    TRISBbits.RB2 = 0 ; 
  while (a ==0) 
    {
  if(xCountingSemaphore != NULL) 
    while (BusyXLCD()) ; 
    WriteCmdXLCD(SHIFT_DISP_LEFT) ; 
    while (BusyXLCD()) ; 
    SetDDRamAddr(0x54) ; 
    while(BusyXLCD()) ; 
    putrsXLCD("Task 2 rules?") ; 
    while(BusyXLCD()) ; 
    if (PORTBbits.RB2 == 0){
        PORTBbits.RB2 = 1 ; 
    }
    else {
        PORTBbits.RB2 = 0 ; 
    }
    vTaskDelay(50) ; 
}
vTaskDelete(NULL) ; 
}

void main (void)
{
    INTCONbits.GIE = 0 ; 
    xTaskCreate (TaskA, "TaskA", configMINIMAL_STACK_SIZE, NULL,1, NULL) ; 
    xTaskCreate (TaskB, "TaskB", configMINIMAL_STACK_SIZE, NULL,1, NULL) ; 
    
    Icdconfig() ;
    vTaskStartScheduler() ;
    
}


