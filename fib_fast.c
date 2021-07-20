#include "fib_lib.h"
#include "stdio.h"

int main(void) {
  int fib;
  printf("Input: ");
  scanf("%d", &fib);
  printf("Fib(%d) = %d\n", fib, fib_fast(fib));
}
