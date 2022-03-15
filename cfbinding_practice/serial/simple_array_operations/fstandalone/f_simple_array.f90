subroutine create_array(u, usize) bind(c, name="f_create_array")
use iso_c_binding
implicit none
int :: arrsize = 5
real(c_double), dimension(0:arrsize-1), intent(out) :: u bind(c, name="u_f")
int(c_int), intent(out) :: usize bind(c, name="usize_f")
int :: i

do i = 0, arrsize-1
  u(i) = i
end do
usize = arrsize

end subroutine create_array
