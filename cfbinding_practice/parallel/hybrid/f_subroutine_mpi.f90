
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
use mpi
use iso_c_binding

interface 
  integer function MPI_Comm_c2f(c_handle) bind(c, name="f_MPI_Comm_c2f")
    use iso_c_binding
    type(c_ptr), value :: c_handle
  end function
  type(c_ptr) function MPI_Comm_f2c(c_handle) bind(c, name="f_MPI_Comm_f2c")
    use iso_c_binding
    integer, value :: c_handle
  end function
  integer function mympi_comm_rank(c_handle, myrank) bind(c, name="MPI_Comm_rank")
    use iso_c_binding
    type(c_ptr), value :: c_handle
    integer, intent(out) :: myrank
  end function
end interface

type(c_ptr), INTENT(IN), value :: mympicomm
integer(4) :: myrank, ierr
integer :: conv_comm_c2f
type(c_ptr) :: conv_comm_f2c

conv_comm_c2f = MPI_Comm_c2f(mympicomm)
!conv_comm_f2c = MPI_Comm_f2c(conv_comm_c2f)
!call print_myrank(mympicomm)
call MPI_Comm_rank(conv_comm_c2f, myrank,ierr)
!ierr = mympi_comm_rank(mympicomm,myrank)
write(*,*)'myrank from c-f hybrid',myrank

end subroutine printc_myrank
