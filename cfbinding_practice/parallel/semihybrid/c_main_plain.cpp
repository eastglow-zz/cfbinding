#include <stdio.h>

extern "C" {
  void f_core_print_myrank(void);
}

int main (int argc, char *argv[])
{
  f_core_print_myrank();
  return 0;
}
