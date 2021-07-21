.DEFAULT_GOAL: clean
objects := $(patsubst %.c,%.o,$(wildcard *.c))

objects: $(objects)

c_objects: $(objects)
	gcc -o c_objects $(objects)

clean:
	rm -f *.o 