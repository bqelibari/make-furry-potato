#include "../unity/unity.h"
#include "fib_lib.h"

void setUp(void) {}

void tearDown(void) {}

void test_fib_slow(void) {
  TEST_ASSERT_EQUAL(1, fib_slow(1));
  TEST_ASSERT_EQUAL(1, fib_slow(2));
  TEST_ASSERT_EQUAL(55, fib_slow(10));
}

void test_fib_fast(void) {
  TEST_ASSERT_EQUAL(1, fib_fast(1));
  TEST_ASSERT_EQUAL(1, fib_fast(2));
  TEST_ASSERT_EQUAL(55, fib_fast(10));
}

int main(void) {
  UNITY_BEGIN();
  RUN_TEST(test_fib_slow);
  RUN_TEST(test_fib_fast);
  return UNITY_END();
}
