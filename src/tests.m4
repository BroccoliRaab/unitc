divert(0)

define(`new_test', `divert(1) __test_case_$1, divert(0)int __test_case_$1()')

define(`include_all',
    `ifelse(
        $1, `', , `1', `1', `include($1) include_all(shift($@))'
    )'
)
include_all(test_includes)

int (*unit_tests[])(void)= {
    undivert(1)
    NULL
};

