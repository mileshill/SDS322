module Triangle
        type tri
                real :: a, b, c, alpha, beta, gamm, area, isRight
        end type tri
        contains
        !******************** FUNCTIONS
        ! Right triangle test
        !       if hyp == 0.0, then right Triangle
        function hyp(a,b,c) 
                implicit none
                real, intent(in) :: a, b, c
                real :: hyp
                hyp = a*a + b*b - c*c 
        end function hyp
        ! Law of Cosines
        !       determine all interior angles
        function LofCos(a,b,c)
                implicit none
                real, intent(in) :: a, b, c
                real, dimension(3):: LofCos
                real :: degree = 180.0 / (4.0 * atan(1.))
                ! angles(i) = alpha, beta, gamm
                LofCos(1) = acos((a*a - b*b - c*c)/ (-2.0 * b * c)) * degree
                LofCos(2) = acos((b*b - a*a - c*c)/ (-2.0 * a * c)) * degree
                LofCos(3) = acos((c*c - a*a - b*b)/ (-2.0 * a * b)) * degree
        end function LofCos
        ! Heron's formula for area
        !       works for any triangle
        function heron_area(a,b,c)
                implicit none
                real, intent(in) :: a, b, c
                real :: heron_area
                real :: s
                s = (a + b + c) / 2.0
                heron_area  = sqrt( s * (s - a) * (s - b) * (s - c) )  
        end function heron_area
        !******************** SUBROUTINES
        ! set the attributes
        subroutine set_attributes(a,b,c, myTri)
                implicit none
                real :: a, b, c, area, isRight
                real, dimension(3) :: angles = 0.0
                type( tri ) :: myTri

                myTri%a = a; myTri%b = b; myTri%c = c   ! set the sides
                myTri%isRight = hyp(a,b,c)              ! test for RT

                angles = LofCos(a,b,c)                  ! interior angles
                myTri%alpha = angles(1)                 ! set alpha
                myTri%beta  = angles(2)                 ! set beta
                myTri%gamm  = angles(3)                 ! set gamma
                myTri%area  = heron_area(a,b,c)         ! set area
        end subroutine set_attributes
        ! write the attributes
        subroutine print_attributes( myTri )
                implicit none
                real :: a, b, c, alpha, beta, gamm, area, isRight                
                type( tri ) :: myTri
                ! right triangle print
                if( myTri%isRight .eq. 0.0) then
                        write(*,*) 'Right:', '    True'
                else
                        write(*,*) 'Right:', '   False'
                endif
                ! right other attributes
                write(*,*) 'Sides:', myTri%a, myTri%b 
                write(*,*) 'Hypot:', myTri%c
                write(*,*) 'Angle:', myTri%alpha, myTri%beta, myTri%gamm
                write(*,*) 'Area :', myTri%area
        end subroutine print_attributes
end module Triangle
