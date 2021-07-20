#include "fib_lib.h"
#include "stdio.h"

int fib_slow(int n) {
  if (n == 0) {
    return 0;
  }
  if (n == 1) {
    return 1;
  } else {
    return (fib_slow(n - 1) + fib_slow(n - 2));
  }
}

int fib_fast(int n) {
  int cache[n + 1];
  cache[0] = 0, cache[1] = 1;

  for (int cache_index = 2; cache_index <= n; cache_index++) {
    cache[cache_index] = cache[cache_index - 1] + cache[cache_index - 2];
  }
  return cache[n];
}
