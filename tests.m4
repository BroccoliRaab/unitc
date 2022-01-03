divert(0)
/* C Includes */

/* End C Includes */

define(`new_test', `divert(1) __test_case_$1, divert(0)int __test_case_$1()')

/* Test File Includes */

 include(example.m4)

/* End Test File Includes */

int (*unit_tests[])(void)= {
    undivert(1)
    NULL
};

