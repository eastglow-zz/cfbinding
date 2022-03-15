subroutine print_something()
  implicit none

  write(*,*) 'abcdefg'

end subroutine print_something

subroutine printc_something() bind(c, name="printc_something")
  use iso_c_binding
  implicit none

  call print_something
end subroutine
