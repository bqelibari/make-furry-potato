include inc_test1 inc_test2

.DEFAULT_GOAL: clean
.PHONY: clean

c_sources = fib_lib.c fib_fast.c #deferred (expanded when needed. First or second expansion)
c_objects := fib_lib.o fib_fast.o #immediate expansion along with != and +=
#+= is immediate if the right hand variable was set using :=, deferred otherwise.

all: 
	@echo $(c_sources) $(c_objects)

clean:
	rm -f *.o