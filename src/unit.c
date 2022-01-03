#include <stdio.h>
#include "tests.h"
int main(){
    unsigned int failed_tests = 0;
    for (size_t i=0; unit_tests[i]!=NULL; i++){
        int result = !!(unit_tests[i]());
        printf("%s: %s.\n",test_names[i], result?"FAILED":"PASSED");
        failed_tests += result;
    }
    if (failed_tests){
        printf("FAILED %u TESTS.\n", failed_tests);
    }else{
        puts("ALL TESTS PASSED");   
    }
    return failed_tests;
}
