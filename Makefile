.PHONY: tests clean
tests: src/unit.c src/tests.m4
	mkdir -p build/c
	m4 -D test_includes=$(shell ls tests/*.m4 | tr '\n' ',') < src/tests.m4 > build/c/tests.h
	cp src/unit.c build/c/unit.c
	gcc build/c/unit.c -Wall -Wpedantic -Werror -Debug -O0 -o run_tests

clean:
	rm -rf build run_tests

