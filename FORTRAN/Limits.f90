! Limits.f90:	Determines machine precision
! ==========================================
Program Limits
	implicit none

	Integer :: i, n
	Real*8  :: epsilon_m, one    	! Doulbe Precision
	n = 60							! Number of iterations

	! Set initial values
	epsilon_m = 1.0
	one = 1.0

	! Within a DO-LOOP, calculate each step and print.
	! Loop will execute 60 times in a row as i is 
	! 	incremented from 1 to n ( n = 60 )

	do i = 1, n, 1
		epsilon_m = epsilon_m / 2.0		! reduce epsilon
		one = 1 + epsilon_m				! recalculate one
		print *, i, one, epsilon_m
	end do
End Program Limits