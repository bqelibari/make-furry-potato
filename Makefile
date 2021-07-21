.DEFAULT_GOAL: clean

c_objects := $(patsubst %.c,%.o,$(wildcard *.c))
fib_fast_objects := $(filter-out fib_slow.o, $(c_objects))
fib_slow_objects := $(filter-out fib_fast.o, $(c_objects))
all: objects fib_fast fib_slow

objects: $(c_objects)

fib_fast: $(fib_fast_objects)
	gcc -o $@ $(fib_fast_objects)

fib_slow: $(fib_slow_objects)
	gcc -o $@ $(fib_slow_objects)

clean:
	rm -f *.o fib_fast fib_slow