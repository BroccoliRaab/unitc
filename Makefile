.PHONY: clean
run_tests: unitc.c
	gcc unitc.c -Wall -Wpedantic -Werror -Debug -O0 -o run_tests
unitc.c:  unitc.m4 tests/*.m4
	m4 -D test_includes=$(shell ls tests/*.m4 | tr '\n' ',') < unitc.m4 > unitc.c
clean:
	rm -rf unitc.c run_tests

