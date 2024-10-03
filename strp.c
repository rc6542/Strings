/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Ryan Chen                                                  */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *pcSrc)
{
   const char *pcEnd;
   assert(pcSrc != NULL);
   pcEnd = pcSrc;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - pcSrc);
}

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
