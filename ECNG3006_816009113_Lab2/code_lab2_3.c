#include <p18f452.h>
#include <FreeRTOS.h>
#include <task.h>
#include "timers.h"
#include "xlcd_GpE.h"
#include <semphr.h>


#pragma config OSC = HS     //- set HS oscillator
#pragma config WDT = OFF    //- disable watchdog timer
#pragma config LVP = OFF    //- disable low voltage programming

/*Declarations*/

volatile int stopped = 0;

// Definations
SemaphoreHandle_t xLCDSemaphore;
SemaphoreHandle_t xTaskBSemaphore;

/*Function Prototypes*/

void TaskA(void *pdata);
void TaskB(void *pdata);
void appISR (void);
void configTMR (void);

void main(void){
    
    INTCONbits.GIE = 0;
    
xLCDSemaphore = xSemaphoreCreateCounting(1,1);                                      //Create semaphore of length 1 and initial size 1
xTaskBSemaphore = xSemaphoreCreateCounting(1,0);
    if ((xLCDSemaphore && xTaskBSemaphore) != NULL)
    {
        xTaskCreate(TaskA,"TaskA",configMINIMAL_STACK_SIZE,NULL,2,NULL);
        xTaskCreate(TaskB,"TaskB",configMINIMAL_STACK_SIZE,NULL,1,NULL);
    }

    InitLCD();
    configTMR();
    vTaskStartScheduler();
    
}

void TaskA(void *pdata)
{
    int portBstate;
    TRISBbits.RB2 = 0;
    PORTBbits.RB2 = 1;
    while (stopped == 0)
    {
        xSemaphoreTake(xLCDSemaphore, portMAX_DELAY);
        {
            while(BusyXLCD());
            SetDDRamAddr(0x00);
            while(BusyXLCD());
            putrsXLCD("Task 1 rocks\n");
        }
        xSemaphoreGive(xLCDSemaphore);
        portBstate = PORTBbits.RB0;
        PORTBbits.RB2 = !(portBstate);
        vTaskDelay(1000);
    }
    
vTaskDelete(NULL);

}

void TaskB(void *pdata)
{
    int portBstate1;
    TRISBbits.RB1 = 0;
    PORTBbits.RB1 = 1;
    while (stopped == 0)
    {
        xSemaphoreTake(xTaskBSemaphore, portMAX_DELAY);
        {
            xSemaphoreTake(xLCDSemaphore, portMAX_DELAY);
            {
                while(BusyXLCD());
                SetDDRamAddr(0x50);
                while(BusyXLCD());
                putrsXLCD("Task 2 rules?\n");
            }
            xSemaphoreGive(xLCDSemaphore);
            portBstate1 = PORTBbits.RB1;
            PORTBbits.RB1 = !(portBstate1);
        }
    }
    vTaskDelete(NULL);
}
#pragma interruptlow appISR 
void appISR (void)
{

    T0CONbits.TMR0ON = 0;
    TMR0L = 0b10101111;
    TMR0H = 0b00111100;
    INTCONbits.TMR0IF = 0;
    T0CONbits.TMR0ON = 1;
    xSemaphoreGiveFromISR(xTaskBSemaphore,NULL);
}

#pragma code

void configTMR (void)
{
    TMR0L = 0b10101111;
    TMR0H = 0b00111100;
    OpenTimer0(TIMER_INT_ON & 
                T0_16BIT & 
                T0_SOURCE_INT &
                T0_PS_1_4);
    T0CONbits.TMR0ON = 1;

}