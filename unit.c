#include <stdio.h>
#include "tests.h"
int main(){
    unsigned int failed_tests = 0;
    int failure;
    for (size_t i=0; unit_tests[i]!=NULL; i++){
        failure = unit_tests[i]();
        printf("TEST #%d - ", i);
        if (failure) {
            printf("FAILED\n");
        } else {
            printf("PASSED\n");
        }
        failed_tests += failure;
    }
    if (failed_tests){
        printf("FAILED %u TESTS.\n", failed_tests);
    }else{
            puts("ALL TESTS PASSED");   
    }
    return 0;
}
