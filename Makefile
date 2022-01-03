.PHONY: tests clean
tests: unit.c tests.m4
	m4 <tests.m4 >tests.h
	gcc unit.c -Wall -Wpedantic -Werror -Debug -O0 -o run_tests

clean:
	rm tests.h run_tests

