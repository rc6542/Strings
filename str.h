/*--------------------------------------------------------------------*/
/* str.h                                                         */
/* Author: Ryan Chen                                                      */
/*--------------------------------------------------------------------*/

#ifndef STR
#define STR
#include <stddef.h>

/* Returns the length of source array pcSrc. */
size_t Str_getLength(const char pcSrc[]);

/* Copies the contents of pcSrc to the pcDest and returns it. 
*/
char* Str_copy(char pcDest[], const char pcSrc[]);

/* Concatenates the contents of pcSrc to the end of pcDest and 
returns it. */
char* Str_concat(char pcDest[], const char pcSrc[]);

/* Compares str1 and str2, returns 0 if they are equal. */
int Str_compare(const char str1[], const char str2[]);

/* Returns a pointer to the first occurrence in pcNeedle in the entire 
sequence of characters pcHaystack, or a null pointer if the pcNeedle is
not found in pcHaystack. */
char *Str_search(const char *pcHaystack, const char *pcNeedle);

#endif