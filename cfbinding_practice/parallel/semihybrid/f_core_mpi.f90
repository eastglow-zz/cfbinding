subroutine core_print_myrank() bind(c, name="f_core_print_myrank")
use mpi
use iso_c_binding
integer(4) :: myrank, ierr

call MPI_Init(ierr)
call MPI_Comm_rank(MPI_COMM_WORLD, myrank,ierr)

write(*,*)'myrank from core',myrank

call MPI_Finalize(ierr)

end subroutine core_print_myrank
 
