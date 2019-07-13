CFLAGS=-std=c11 -g -static

a1: a1.c

test: a1
	./test.sh

clean:
	rm -f a1 *.o *~ tmp*

.PHONY: test clean
