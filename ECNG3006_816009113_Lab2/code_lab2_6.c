///////////////////////////////////////////////////////////////////
//Student ID No.: 815008434
//Date:30/10/2019
///////////////////////////////////////////////////////////////////

#include    "FreeRTOS.h"
#include 	"task.h"
#include    "xlcd_GpE.h"
#include    <timers.h>
#include    <semphr.h>
#include    <p18f452.h>
#include    <stdlib.h>
#include    <adc.h>
#include    <delays.h>
#include    <string.h>
#include    <stdio.h>

#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF
#define XTAL_FREQ 4000000

/*GLOBAL VARIABLES AND DEFINITIONS*/

SemaphoreHandle_t ADCSem;
QueueHandle_t ADCQueue;
QueueHandle_t LCDQueue;
short int Vread;
short int Vbuff;
short int LCDread;
short int LCDbuff;
char dispBuff[5] = "";


/*FUNCTIONS DECLARATIONS*/
void AnalogTask(void *pvParameter);
void LCDTask(void *pvParameter);
void FilterTask(void *pvParameter);
void ADCisr(void);

void main(void) {
    INTCONbits.GIE = 0;
    TRISBbits.RB2 = 0;
    PORTBbits.RB2 = 0;
    ADCSem = xSemaphoreCreateCounting(1, 0);
    ADCQueue = xQueueCreate(1, sizeof (short int));
    LCDQueue = xQueueCreate(1, sizeof (short int));

    xTaskCreate(AnalogTask, "AnalogTask", configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    xTaskCreate(LCDTask, "LCDTask", configMINIMAL_STACK_SIZE, NULL, 3, NULL);
    xTaskCreate(FilterTask, "FilterTask", configMINIMAL_STACK_SIZE, NULL, 2, NULL);

    InitLCD();
    vTaskStartScheduler();
    for (;;);

}

void AnalogTask(void *pvParameter) {
    OpenADC(ADC_FOSC_8 & ADC_RIGHT_JUST & ADC_6ANA_2REF, ADC_CH0 & ADC_INT_ON);
    Delay10TCYx(2);
    ConvertADC();
    while (1) {
        xSemaphoreTake(ADCSem, portMAX_DELAY);
        LATBbits.LATB2 = !LATBbits.LATB2;
        Vread = ADRESL;
        vTaskDelay(pdMS_TO_TICKS(100));
        xQueueSend(ADCQueue, &Vread, 0); //The queue should never be full according to the priorities of the task
        ConvertADC();
    }

}

void LCDTask(void * pvParameters) {
    
    static char thirdLine[5] = "";
    static char secondLine[5] = "";
    static char firstLine[5] = "";
    static char blank[5] = {32, 32, 32, 32, 32};
    while (1) {
        xQueueReceive(LCDQueue, &LCDbuff, portMAX_DELAY);
        itoa(LCDbuff, dispBuff);
        while (BusyXLCD());
        SetDDRamAddr(0x50);
        while (BusyXLCD());
        putsXLCD(blank);
        while (BusyXLCD());
        SetDDRamAddr(0x50);
        while (BusyXLCD());
        putsXLCD(dispBuff);
        while (BusyXLCD());
        SetDDRamAddr(0x10);
        while (BusyXLCD());
        putsXLCD(blank);
        while (BusyXLCD());
        SetDDRamAddr(0x10);
        while (BusyXLCD());
        putsXLCD(thirdLine);
        while (BusyXLCD());
        SetDDRamAddr(0x40);
        while (BusyXLCD());
        putsXLCD(blank);
        while (BusyXLCD());
        SetDDRamAddr(0x40);
        while (BusyXLCD());
        putsXLCD(secondLine);
        while (BusyXLCD());
        SetDDRamAddr(0x00);
        while (BusyXLCD());
        putsXLCD(blank);
        while (BusyXLCD());
        SetDDRamAddr(0x00);
        while (BusyXLCD());
        putsXLCD(firstLine);
        while (BusyXLCD());

        strncpy(firstLine, secondLine, 5);
        strncpy(secondLine, thirdLine, 5);
        strncpy(thirdLine, dispBuff, 5);
    }

    vTaskDelete(NULL);
}

void FilterTask(void * pvParameters) {
    volatile static int filterCount = 0;
    volatile static int tempVal = 0;

    while (1) {
        while (filterCount < 10) {
            xQueueReceive(ADCQueue, &Vbuff, portMAX_DELAY);
            tempVal = Vbuff + tempVal;
            filterCount++;
        }

        LCDread = (tempVal / 10);
        xQueueSend(LCDQueue, &LCDread, 0);
        tempVal = 0;
        filterCount = 0;
    }
}

#pragma interruptlow ADCisr

void ADCisr(void) {
    PIR1bits.ADIF = 0;
    xSemaphoreGiveFromISR(ADCSem, NULL);
}

/*
#pragma interruptlow appISR
void appISR( void ) {
    WriteTimer0(62411);
    LATBbits.LATB1 = !LATBbits.LATB1;
    INTCONbits.TMR0IF = 0;
    xSemaphoreGiveFromISR(TimerSem,NULL);
}
 */
