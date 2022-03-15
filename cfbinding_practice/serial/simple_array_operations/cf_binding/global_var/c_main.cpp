#include <stdio.h>

extern "C" {
  int f_IM;
  void print_f_IM();
}

int main()
{
  f_IM = 5;
  print_f_IM();
  return 0;
}
