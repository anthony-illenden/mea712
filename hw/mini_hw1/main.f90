program mini_hw1
implicit none

! Define parameters
integer, parameter :: nx = 21
real, parameter :: dx = 100
integer :: i
real, dimension(nx) :: pi = 3.14159263
real, dimension(nx) :: psi
real, dimension(nx) :: x
character(len = 80) :: fmt


! Write descriptive header
open(10, file = 'output.txt')
write(10, *) '# nx dx'
write(10, *) '# ', nx, dx

! Do loop for wave function
do i = 1, nx
    x(i) = real(i - 1) * dx
    psi(i) = cos((2 * pi(i) * x(i)) / real(1000))
    print*, "x= ", x(i), 'psi= ', psi(i)
end do

! Additional write statements
write(fmt,'(a,i4,a)') '(',nx,'(e10.4,1x))'
write(10,fmt) (psi(i),i=1,nx)


! Close output file, and stop and end the program
close(10)
stop
end
    