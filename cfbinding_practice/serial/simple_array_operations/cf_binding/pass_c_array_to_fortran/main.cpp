#include <stdio.h>

extern "C" {
  void copy_f_array(double [], const int *); 
}

int main(int argc, char *argv[])
{
  const int N = 5;

  double carray[N] = {0.1, 0.2, 0.3, 0.4, 0.5};

  copy_f_array(carray, &N);

  for (int i=0;i<N;i++) {
    printf("%d %lf\n", i, carray[i]);
  }

  return 0;
}
