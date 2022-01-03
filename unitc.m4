divert(0)

define(`new_test', `divert(1) $1, divert(2) "$1", divert(0) int $1()')

define(`include_all',
    `ifelse(
        $1, `', , `1', `1', `changecom(`{',`}') include($1) changecom() include_all(shift($@))'
    )'
)
include_all(test_includes)


static const int (*_unitc_unit_tests[])(void)= {
    undivert(1)
    NULL
};

static const char * _unitc_test_names[] = {
    undivert(2)
};

#include <stdio.h>
int main(){
    unsigned int failed_tests = 0;
    for (size_t i=0; _unitc_unit_tests[i]!=NULL; i++){
        int result = !!(_unitc_unit_tests[i]());
        printf("%s: %s.\n",_unitc_test_names[i], result?"FAILED":"PASSED");
        failed_tests += result;
    }
    if (failed_tests){
        printf("FAILED %u TESTS.\n", failed_tests);
    }else{
        puts("ALL TESTS PASSED");   
    }
    return failed_tests;
}
