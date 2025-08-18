program mini_hw1
implicit none

! Define parameters
integer :: nx
integer :: dx
integer :: i
integer :: x
real :: pi
real :: psi
character(len = 80) :: fmt


! Define values for some parameters
nx = 21
dx = 100
pi = 3.14159263


! Write descriptive header
open(10, file = 'output.txt')
write(10, *) '# nx dx'
write(10, *) '# ', nx, dx


! Do loop for wave function
do i = 1, nx
    x = real(i - 1) * dx
    psi = cos((2 * pi * x) / (1000))
    print*, "x= ", x, 'psi= ', psi
    !write(fmt, '(a, i4, a)') '(', nx, '(e10.4, 1x))'
    !write(10, fmt) (psi(i), i=1, nx)

end do

close(10)
stop
end
    