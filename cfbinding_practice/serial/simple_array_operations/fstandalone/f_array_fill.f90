subroutine arrayfill(arr)
use arrsizes
implicit none
real, intent(out) :: arr(0:im-1)
integer :: i

do i=0, im-1
  arr(i) = i
enddo

return
end subroutine arrayfill
