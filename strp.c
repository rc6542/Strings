/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Ryan Chen                                                  */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

/* Returns the length of the string pcSrc in pointer format, copied from 
assignment page. */
size_t Str_getLength(const char *pcSrc)
{
   const char *pcEnd;
   assert(pcSrc != NULL);
   pcEnd = pcSrc;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - pcSrc);
}

/* Copies the contents of the source pcSrc to the destination pcDest and 
returns it. */
char* Str_copy(char *pcDest, const char *pcSrc) {
   char *pcStart = pcDest;  
   assert(pcDest != NULL && pcSrc != NULL);

   while (*pcSrc != '\0') {
        *pcDest = *pcSrc;
        pcDest++;
        pcSrc++;
   }

   *pcDest = '\0';

   return pcStart;  
}

/* Concatenates the contents of pcSrc to the end of pcDest and 
returns it. */
char* Str_concat(char *pcDest, const char *pcSrc) {
   char *pcRefDest = pcDest;
   assert(pcDest != NULL && pcSrc != NULL);

   while (*pcRefDest != '\0') {
      pcRefDest++;
   }

   while (*pcSrc != '\0') {
      *pcRefDest = *pcSrc;
      pcRefDest++;
      pcSrc++;
   }

   *pcRefDest = '\0';
   return pcDest;
}

/* Compares str1 and str2, returns 0 if they are equal. Returns -1 if 
str1 reaches '\0' before str2, and 1 if str2 reaches '\0' before str1. 
*/
int Str_compare(const char *str1, const char *str2) {
   assert(str1 != NULL);
   assert(str2 != NULL);

   while (*str1 != '\0' && *str2 != '\0') {
      if (*str1 != *str2) {
         return (int)(*str1 - *str2);
      }
      str1++;
      str2++;
    }

    return (int)(*str1 - *str2);
}

/* Returns a pointer to the first occurrence in pcNeedle in the entire 
sequence of characters pcHaystack, or a null pointer if the pcNeedle is
not found in pcHaystack. */
char *Str_search(const char *pcHaystack, const char *pcNeedle) {
   assert(pcHaystack != NULL && pcNeedle != NULL);
   
   /* if pcNeedle is empty, return pcHaystack */
   if (*pcNeedle == '\0') {
      return (char *)pcHaystack;
   }

   while (*pcHaystack != '\0') {
      const char *haystackPoint = pcHaystack;
      const char *needlePoint = pcNeedle;
      
      /* if matching and are not null byte, increment pointers */
      while (*haystackPoint != '\0' && *needlePoint != '\0' && *
         haystackPoint == *needlePoint) {
            haystackPoint++;
            needlePoint++;
         }

      /* if the end of the needle is reached */
      if (*needlePoint == '\0') {
         return (char *)pcHaystack;
      }

      pcHaystack++;
   }
   return NULL;
}
