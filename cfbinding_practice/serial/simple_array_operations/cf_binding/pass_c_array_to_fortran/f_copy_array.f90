module CopyArray
use iso_c_binding
implicit none
public copy_f_array
contains

subroutine copy_f_array(c_array, n) bind(c, name="copy_f_array")
use iso_c_binding
implicit none
integer, intent(in) :: n
real(c_double), intent(out), dimension(n) :: c_array
real(c_double), dimension(:), allocatable :: f_array
integer :: i

allocate(f_array(n))

f_array(1) = 10
f_array(2) = 20
f_array(3) = 30
f_array(4) = 40
f_array(5) = 50

do i=1,n
  c_array(i) = f_array(i)
enddo

end subroutine copy_f_array

end module CopyArray
