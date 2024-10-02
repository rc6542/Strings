/*--------------------------------------------------------------------*/
/* strp.c                                                          */
/* Author: Ryan Chen                                                        */
/*--------------------------------------------------------------------*/

#include "str.h"
#include <assert.h>

/* copied from assignment page */
size_t Str_getLength(const char *pcSrc)
{
   const char *pcEnd;
   assert(pcSrc != NULL);
   pcEnd = pcSrc;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - pcSrc);
}

