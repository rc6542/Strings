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
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
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
    size_t i = 0, j = 0;
    assert(pcSrc != NULL && pcDest != NULL);

    while (pcDest[i] != '\0') {
        i++;
    }

    while (pcSrc[j] != '\0') {
        pcDest[i+j] = pcSrc[j];
        j++;
    }
    pcDest[i+j] = '\0';  
    return pcDest;
}

/* Compares str1 and str2, returns 0 if they are equal.  */
int Str_compare(char str1[], const char str2[]) {
    size_t i = 0;
    assert(str1 != NULL && str2 != NULL);

    while (str1[i] != '\0' && str2[i] != '\0') {
        if (str1[i] != str2[i]) {
            return (int)(str1[i] - str2[i]);
        }
        i++;
    }

    return (int)(str1[i] - str2[i]);
}

/* Returns a pointer to the first occurrence in pcNeedle in the entire 
sequence of characters pcHaystack, or a null pointer if the pcNeedle is
not found in pcHaystack.*/
char *Str_search(const char pcHaystack[], const char pcNeedle[]) {
    size_t i, j;
    assert(pcHaystack != NULL && pcNeedle != NULL);

    /* if pcNeedle is empty, return pcHaystack */
    if (pcNeedle[0] == '\0') {
        return (char *)pcHaystack;
    }

    /* iterate over each character in pcHaystack */
    for (i = 0; pcHaystack[i] != '\0'; i++) {
        /* check if pcNeedle matches starting at pcHaystack[i] */
        j = 0;
        while (pcNeedle[j] != '\0' && pcHaystack[i + j] == pcNeedle[j]) {
            j++;
        }

        /* if we reached the end of pcNeedle, we found a full match */
        if (pcNeedle[j] == '\0') {
            return (char *)&pcHaystack[i];
        }
    }

    return NULL;
}
