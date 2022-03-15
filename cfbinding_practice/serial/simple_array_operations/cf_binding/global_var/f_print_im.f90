subroutine print_im() bind(c,name="print_f_IM")
use iso_c_binding
use arrsizes
implicit none

write(*,*) im

end subroutine print_im
