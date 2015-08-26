! How fast will a sand-size particle fall through water
program particle
implicit none

real :: rho_s = 2.7     ! particle density [g/cm^3]
real :: rho_l = 1.0     ! water density    [g/cm^3]
real :: D = 0.01        ! particle diamter [cm]
real :: g = 981         ! acceleration due to grav [cm/s^2]
real :: n = 0.01        ! viscosity        [g/cm s]

real :: v               ! velocity         [cm/s]

v = ((rho_s - rho_l) * D**2 * g ) / ( 18 * n )  ! velocity equation

print *, v

end program particle
