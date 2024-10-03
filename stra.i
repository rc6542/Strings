# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"





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
# 7 "stra.c" 2
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



# 8 "stra.c" 2


# 9 "stra.c"
size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;
   
# 12 "stra.c" 3 4
  ((
# 12 "stra.c"
  pcSrc != 
# 12 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 12 "stra.c"
  "pcSrc != NULL"
# 12 "stra.c" 3 4
  , "stra.c", 12, __extension__ __PRETTY_FUNCTION__))
# 12 "stra.c"
                       ;
   while (pcSrc[uLength] != '\0')
      uLength++;
   return uLength;
}

char* Str_copy(char pcDest[], const char pcSrc[]) {
    size_t i = 0;
    
# 20 "stra.c" 3 4
   ((
# 20 "stra.c"
   pcDest != 
# 20 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 20 "stra.c"
   "pcDest != NULL"
# 20 "stra.c" 3 4
   , "stra.c", 20, __extension__ __PRETTY_FUNCTION__))
# 20 "stra.c"
                         ;
    
# 21 "stra.c" 3 4
   ((
# 21 "stra.c"
   pcSrc != 
# 21 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 21 "stra.c"
   "pcSrc != NULL"
# 21 "stra.c" 3 4
   , "stra.c", 21, __extension__ __PRETTY_FUNCTION__))
# 21 "stra.c"
                        ;
    while (pcSrc[i] != '\0') {
        pcDest[i] = pcSrc[i];
        i++;
    }

    pcDest[i] = '\0';
    return pcDest;
}

char* Str_concat(char pcDest[], const char pcSrc[]) {
    size_t i = 0, j = 0;
    
# 33 "stra.c" 3 4
   ((
# 33 "stra.c"
   pcSrc != 
# 33 "stra.c" 3 4
   ((void *)0) 
# 33 "stra.c"
   && pcDest != 
# 33 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 33 "stra.c"
   "pcSrc != NULL && pcDest != NULL"
# 33 "stra.c" 3 4
   , "stra.c", 33, __extension__ __PRETTY_FUNCTION__))
# 33 "stra.c"
                                          ;

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

int Str_compare(const char str1[], const char str2[]) {
    size_t i = 0;
    
# 49 "stra.c" 3 4
   ((
# 49 "stra.c"
   str1 != 
# 49 "stra.c" 3 4
   ((void *)0) 
# 49 "stra.c"
   && str2 != 
# 49 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 49 "stra.c"
   "str1 != NULL && str2 != NULL"
# 49 "stra.c" 3 4
   , "stra.c", 49, __extension__ __PRETTY_FUNCTION__))
# 49 "stra.c"
                                       ;

    while (str1[i] != '\0' && str2[i] != '\0') {
        if (str1[i] != str2[i]) {
            return (int)(str1[i] - str2[i]);
        }
        i++;
    }

    return (int)(str1[i] - str2[i]);
}

char *Str_search(const char pcHaystack[], const char pcNeedle[]) {
    size_t i, j;
    
# 63 "stra.c" 3 4
   ((
# 63 "stra.c"
   pcHaystack != 
# 63 "stra.c" 3 4
   ((void *)0) 
# 63 "stra.c"
   && pcNeedle != 
# 63 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 63 "stra.c"
   "pcHaystack != NULL && pcNeedle != NULL"
# 63 "stra.c" 3 4
   , "stra.c", 63, __extension__ __PRETTY_FUNCTION__))
# 63 "stra.c"
                                                 ;


    if (pcNeedle[0] == '\0') {
        return (char *)pcHaystack;
    }


    for (i = 0; pcHaystack[i] != '\0'; i++) {

        j = 0;
        while (pcNeedle[j] != '\0' && pcHaystack[i + j] == pcNeedle[j]) {
            j++;
        }


        if (pcNeedle[j] == '\0') {
            return (char *)&pcHaystack[i];
        }
    }

    return 
# 84 "stra.c" 3 4
          ((void *)0)
# 84 "stra.c"
              ;
}
