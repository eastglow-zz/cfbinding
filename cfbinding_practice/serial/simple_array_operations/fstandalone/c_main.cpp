#include <stdio.h>
#include <stdlib.h>
#include <math.h>

extern "C" {
  void f_create_array(double*, int*);
  double *u_f;
  double *usize_f;
}

int main (int argc, char *argv[])
{
  double *u_c;
  int *usize_c;
  f_create_array(u_c, usize_c);
  for (int i=0;i<usize_c;i++) {
    printf("%d, %lf\n", i, u_c[i]);
  }
  
  return 0;
}
