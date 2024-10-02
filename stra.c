/*--------------------------------------------------------------------*/
/* stra.c                                                          */
/* Author: Ryan Chen                                                        */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

/* Returns the length of the string pcSrc in array format, copied from 
assignment page. */
size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;
   assert(pcSrc != NULL);
   while (pcSrc[uLength] != '\0')
      uLength++;
   return uLength;
}

/* Copies the contents of the source to the destination and returns it. 
*/
char* Str_copy(char pcDest[], const char pcSrc[]) {
    size_t i = 0;
    assert(pcDest != NULL & pcSrc != NULL);
    while (pcSrc[i] != '\0') {
        pcDest[i] = pcSrc[i];
        i++; 
    }

    pcDest[i] = '\0';  
    return pcDest;
}

/* Concatenates the contents of source to the end of destination and 
returns it. */
char* Str_concat(char pcDest[], const char pcSrc[]) {

}

/* Compares str1 and str1, returns 0 if they are equal. */
char* Str_compare(char str1[], const char str2[]) {

}

/* Returns a pointer to the first occurrence in pcNeedle in the entire 
sequence of characters pcHaystack, or a null pointer if the pcNeedle is
not found in pcHaystack.*/
char *Str_search(const char *pcHaystack, const char *pcNeedle) {

}
