program mini_hw2
implicit none

! Define parameters 
integer, parameter :: nx = 21
integer, parameter :: nt = 10
real, parameter :: dx = 100
real, parameter :: dt = 10.0
real, dimension(nx) :: psi
real, dimension(nx) :: psif
real, parameter :: c = 10.0
 
! Define indecies
integer :: i
integer :: n