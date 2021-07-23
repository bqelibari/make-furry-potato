# PATHS ##############################################
basedir:= $(shell pwd)
pathfs := fib_slow_dir
pathff := fib_fast_dir
patho := objects
pathb := build
pathh := headers

# SOURCES ############################################
srcs := fib_lib.c fib_fast.c fib_slow.c
headers := fib_lib.h

# OBJECTS ############################################
obj := $(addprefix $(patho)/, $(patsubst %.c,%.o,$(srcs)))
fib_fast_objects := $(filter-out %_slow.o, $(obj))
fib_slow_objects := $(filter-out %_fast.o, $(obj))

# OUTPUT FILES #######################################
fib_fast := $(pathb)/fib_fast
fib_slow := $(pathb)/fib_slow

vpath %.c $(pathff)/ $(pathfs)/
vpath %.o $(patho)/

all:$(fib_fast) $(fib_slow)

$(patho):
	mkdir -p $@

$(patho)/%.o: %.c | $(patho)
	gcc -c $< -o $@

$(fib_fast): $(fib_fast_objects)
	gcc -o $@ $(fib_fast_objects)

$(fib_slow): $(fib_slow_objects)
	gcc -o $@ $(fib_slow_objects)
	
clean:
	rm -fr $(patho)