#include <stdlib.h>
#include <stdio.h>

new_test(malloc_test){
    void * mem = malloc(sizeof(int));
    if (mem){
        free(mem);
        return 0;
    }
    puts("Cannot allocate heap memory");
    free(mem);
    return 1;
} 

