#include <stdlib.h>
#include <stdio.h>

new_test(val_dne_0){
    return (1==0);
}
#include <string.h>

#define len strlen
new_test(len_eq_2,){
    char str[] = "hi";
    if (len(str)==2){
        return 0;
    }
    printf("Expected 2. Got %d.", len(str));
    return 1;
}
