program fmain

USE MPI

implicit none

integer(4) :: ierr, myrank, mycommsize
TYPE(MPI_Comm) :: mympicomm

call MPI_INIT(ierr)
call MPI_COMM_SIZE(MPI_COMM_WORLD, mycommsize, ierr)
call MPI_COMM_RANK(MPI_COMM_WORLD, myrank, ierr)

!Call the subroutine below
call print_myrank(MPI_COMM_WORLD)
call printc_myrank(MPI_COMM_WORLD)

!Just to make sure if this main code runs
!write(*,*) 'myrank = ',myrank

call MPI_FINALIZE(ierr)
end program
