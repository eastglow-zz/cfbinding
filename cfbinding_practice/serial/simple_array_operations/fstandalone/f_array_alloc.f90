subroutine array_alloc()
use arrsizes
implicit none
real, allocatable, dimension(:) :: arrayout
integer :: i

allocate(arrayout(0:im-1))  ! im is defined in the parent subroutines

call arrayfill(arrayout)

do i=0,im-1
  write(*,*)i,arrayout(i)
enddo

return
end subroutine array_alloc

