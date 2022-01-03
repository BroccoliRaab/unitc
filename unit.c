#include <stdio.h>
#include "tests.h"
int main(){
    unsigned int failed_tests = 0;
    for (size_t i=0; unit_tests[i]!=NULL; i++){
        failed_tests += unit_tests[i]();
    }
    if (failed_tests){
        printf("FAILED %u TESTS.\n", failed_tests);
    }else{
            puts("ALL TESTS PASSED");   
    }
    return 0;
}
