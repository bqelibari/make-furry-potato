fib_lib.o: fib_lib.c fib_lib.h
	gcc -c fib_lib.c

fib_fast.o: fib_fast.c fib_lib.h
	gcc -c fib_fast.c

clean:
	rm -f *.o