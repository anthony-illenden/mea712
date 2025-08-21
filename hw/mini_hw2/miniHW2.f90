program mini_hw2
implicit none

! Define parameters 
integer, parameter :: nx = 21 ! number of points on the domain
integer, parameter :: nt = 10 ! number of time steps
real, parameter :: dx = 100 ! length of spacing between points on the domain
real, parameter :: dt = 10.0 ! length of time steps
real, dimension(nx) :: psi 
real, dimension(nx) :: psif
real, parameter :: c = 10.0 ! current of constant speed
 
! Define indecies
integer :: i
integer :: n

stop
end