! Subroutine.f90:	Demonstrates the call 'for' a simple subroutine
! =================================================================

Subroutine g( x, y, ans1, ans2 )					! Define subroutine
	Implicit None
	Real(8) :: x, y, ans1, ans2
	ans1 = sin( x*y ) + 1.0
	ans2 = ans1 ** 2
End Subroutine g

Program Main_program								! Demos the call
	Implicit None
	Real*8 :: Xin = 0.25, Yin = 2.0, Gout1, Gout2
	call g( Xin, Yin, Gout1, Gout2 )				! call subroutine g
	write(*, *) 'The answers are: ', Gout1, Gout2
End Program Main_program