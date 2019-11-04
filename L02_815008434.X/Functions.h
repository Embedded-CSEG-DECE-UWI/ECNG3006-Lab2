/* 
 * File:   Functions.h
 * Author: 815008434
 *
 * Created on October 29, 2019, 6:45 PM
 */

#ifndef FUNCTIONS_H
#define	FUNCTIONS_H

#include <p18f452.h>

/* cInt_to_char
 * @param char - returns the character variation of the integer
 * @param int - accepts an integer to be converted to a character
 */
char* cInt_to_char10K (int *);

char* cInt_to_char1K (int *);

char* cInt_to_char1H (int *);

char* cInt_to_char1D (int *);

char* cInt_to_char (int *);

char* cInt_to_charNull (void);

#endif	/* FUNCTIONS_H */

