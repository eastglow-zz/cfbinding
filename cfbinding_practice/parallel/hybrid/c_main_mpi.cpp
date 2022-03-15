#include <stdio.h>
#include <mpi.h>

extern "C" {
  void printc_myrank(MPI_Comm);

  MPI_Fint f_MPI_Comm_c2f(MPI_Comm *comm) 
  {
    return MPI_Comm_c2f(*comm);
  }

  MPI_Comm f_MPI_Comm_f2c(MPI_Fint *comm) 
  {
    return MPI_Comm_f2c(*comm);
  }
}



int main(int argc, char *argv[]){
  
  int ierr, myrank;
  ierr = MPI_Init(&argc, &argv);

  ierr = MPI_Comm_rank(MPI_COMM_WORLD, &myrank);
  printf("1 myrank = %d\n", myrank);
  printc_myrank(MPI_COMM_WORLD);
  printf("2 myrank = %d\n", myrank);

  MPI_Finalize();
  return 0;
}
