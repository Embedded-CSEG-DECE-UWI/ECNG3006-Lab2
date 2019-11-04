
#include <p18f452.h>
#include "Functions.h"
char * cInt_to_char10K (int *value){
    int Count10K = 0;
    
    static char *Dvalue;
    
    if( *value > 10000 )
    {
        while(*value > 10000)
        {
            *value = *value-10000;
            Count10K++;
        }
    }
    Count10K = Count10K + 48;
    return Count10K;
}

char * cInt_to_char1K (int *value){
    int Count1K = 0;

    static char *Dvalue;
    
    if( *value > 1000 )
    {
        while(*value > 1000)
        {
            *value = *value-1000;
            Count1K++;
        }
    }
    Count1K = Count1K + 48;
    return Count1K;
}


char * cInt_to_char1H (int *value){
    int Count1H = 0;
    static char *Dvalue;
    
    if( *value > 100 )
    {
        while(*value > 100)
        {
            *value = *value-100;
            Count1H++;
        }
    }
    Count1H = Count1H + 48;
    return Count1H;
}

char * cInt_to_char1D (int *value){
    int Count1D = 0;
    static char *Dvalue;
    
    if( *value > 10 )
    {
        while(*value > 10)
        {
            *value = *value-10;
            Count1D;
        }
    }
    Count1D = Count1D + 48;
    return Count1D;
}

char * cInt_to_char (int *value){
    int Count = 0;
    static char *Dvalue;
    
    if( *value > 0 )
    {
        while(*value > 0)
        {
            *value = *value-1;
            Count++;
        }
    }
    Count = Count + 48;
    return Count;
}

char * cInt_to_charNull (void){ 
    return 'd';
 
}