# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"





# 1 "str.h" 1







# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 9 "str.h" 2



# 11 "str.h"
size_t Str_getLength(const char pcSrc[]);



char* Str_copy(char pcDest[], const char pcSrc[]);



char* Str_concat(char pcDest[], const char pcSrc[]);




int Str_compare(const char str1[], const char str2[]);




char *Str_search(const char *pcHaystack, const char *pcNeedle);
# 7 "strp.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 8 "strp.c" 2




# 11 "strp.c"
size_t Str_getLength(const char *pcSrc)
{
   const char *pcEnd;
   
# 14 "strp.c" 3 4
  ((
# 14 "strp.c"
  pcSrc != 
# 14 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 14 "strp.c"
  "pcSrc != NULL"
# 14 "strp.c" 3 4
  , "strp.c", 14, __extension__ __PRETTY_FUNCTION__))
# 14 "strp.c"
                       ;
   pcEnd = pcSrc;
   while (*pcEnd != '\0')
      pcEnd++;
   return (size_t)(pcEnd - pcSrc);
}



char* Str_copy(char *pcDest, const char *pcSrc) {
   char *pcStart = pcDest;
   
# 25 "strp.c" 3 4
  ((
# 25 "strp.c"
  pcDest != 
# 25 "strp.c" 3 4
  ((void *)0) 
# 25 "strp.c"
  && pcSrc != 
# 25 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 25 "strp.c"
  "pcDest != NULL && pcSrc != NULL"
# 25 "strp.c" 3 4
  , "strp.c", 25, __extension__ __PRETTY_FUNCTION__))
# 25 "strp.c"
                                         ;

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
   
# 42 "strp.c" 3 4
  ((
# 42 "strp.c"
  pcDest != 
# 42 "strp.c" 3 4
  ((void *)0) 
# 42 "strp.c"
  && pcSrc != 
# 42 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 42 "strp.c"
  "pcDest != NULL && pcSrc != NULL"
# 42 "strp.c" 3 4
  , "strp.c", 42, __extension__ __PRETTY_FUNCTION__))
# 42 "strp.c"
                                         ;

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
   
# 63 "strp.c" 3 4
  ((
# 63 "strp.c"
  str1 != 
# 63 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 63 "strp.c"
  "str1 != NULL"
# 63 "strp.c" 3 4
  , "strp.c", 63, __extension__ __PRETTY_FUNCTION__))
# 63 "strp.c"
                      ;
   
# 64 "strp.c" 3 4
  ((
# 64 "strp.c"
  str2 != 
# 64 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 64 "strp.c"
  "str2 != NULL"
# 64 "strp.c" 3 4
  , "strp.c", 64, __extension__ __PRETTY_FUNCTION__))
# 64 "strp.c"
                      ;

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
   
# 81 "strp.c" 3 4
  ((
# 81 "strp.c"
  pcHaystack != 
# 81 "strp.c" 3 4
  ((void *)0) 
# 81 "strp.c"
  && pcNeedle != 
# 81 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 81 "strp.c"
  "pcHaystack != NULL && pcNeedle != NULL"
# 81 "strp.c" 3 4
  , "strp.c", 81, __extension__ __PRETTY_FUNCTION__))
# 81 "strp.c"
                                                ;


   if (*pcNeedle == '\0') {
      return (char *)pcHaystack;
   }

   while (*pcHaystack != '\0') {
      const char *haystackPoint = pcHaystack;
      const char *needlePoint = pcNeedle;


      while (*haystackPoint != '\0' && *needlePoint != '\0' && *
         haystackPoint == *needlePoint) {
            haystackPoint++;
            needlePoint++;
         }


      if (*needlePoint == '\0') {
         return (char *)pcHaystack;
      }

      pcHaystack++;
   }
   return 
# 106 "strp.c" 3 4
         ((void *)0)
# 106 "strp.c"
             ;
}
