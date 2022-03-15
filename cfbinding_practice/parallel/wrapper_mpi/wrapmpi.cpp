#include <stdio.h>
#include <math.h>
#include <mpi.h>
void mympi_comm_rank_(MPI_Comm *comm, int *myrank, int *ierr)
{
    *ierr = MPI_Comm_rank(*comm, myrank);
}
