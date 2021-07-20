.DEFAULT_GOAL: clean
c_sources= fib_lib.c fib_fast.c
c_objects= fib_lib.o fib_fast.o

all: 
	$(c_objects): $(c_sources) fib_lib.h
	gcc -c $< -o $@

clean:
	rm -f *.o