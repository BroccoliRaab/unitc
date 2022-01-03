#include <stdlib.h>
#include <stdio.h>

new_test(malloc_test){
    if (malloc(sizeof(int))){
        return 0;
    }
    puts("Cannot allocate heap memory");
    return 1;
} 

