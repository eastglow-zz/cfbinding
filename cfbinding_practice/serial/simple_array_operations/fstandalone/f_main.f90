program fmain
use arrsizes
implicit none

real, dimension(:), allocatable :: arr
integer :: i

im = 5

allocate(arr(0:im-1))

call arrayfill(arr)

do i=0, im-1
  write(*,*)"arr(",i,")=",arr(i)
enddo

end program fmain
