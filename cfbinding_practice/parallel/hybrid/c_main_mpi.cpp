#include <stdio.h>
#include <mpi.h>

extern "C" {
  void printc_myrank(MPI_Fint);

  //MPI_Fint f_MPI_Comm_c2f(MPI_Comm *comm)
  //{
  //  return MPI_Comm_c2f(*comm);
  //}

}



int main(int argc, char *argv[]){

  int ierr, myrank;
  MPI_Fint fmpicomm;
  ierr = MPI_Init(&argc, &argv);
  ierr = MPI_Comm_rank(MPI_COMM_WORLD, &myrank);

  fmpicomm = MPI_Comm_c2f(MPI_COMM_WORLD);  //convert MPI_Comm, C-pointer to MPI_Fint, fortran integer. This macro is defined in mpi.h

  printf("1 myrank = %d\n", myrank);

  printc_myrank(fmpicomm);

  printf("2 myrank = %d\n", myrank);

  MPI_Finalize();
  return 0;
}
