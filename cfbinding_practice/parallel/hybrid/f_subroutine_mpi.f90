
!subroutine print_myrank(mympicomm)
!!include 'mpif.h'
!use mpi
!!TYPE(MPI_Comm), INTENT(IN) :: mympicomm 
!integer(4), INTENT(IN) :: mympicomm 
!integer(4) :: myrank, ierr

!call MPI_COMM_RANK(mympicomm, myrank, ierr)

!write(*,*)'myrank from pure f sub',myrank

!end subroutine print_myrank

subroutine printc_myrank(mympicomm) bind(c, name="printc_myrank")
!use mpi
use iso_c_binding
include 'mpif.h'

INTEGER(4), INTENT(IN), value :: mympicomm

integer(4) :: myrank, ierr

!conv_comm_f2c = MPI_Comm_f2c(conv_comm_c2f)
!call print_myrank(mympicomm)
call MPI_Comm_rank(mympicomm, myrank,ierr)
!ierr = mympi_comm_rank(mympicomm,myrank)
write(*,*)'myrank from c-f hybrid',myrank

end subroutine printc_myrank
