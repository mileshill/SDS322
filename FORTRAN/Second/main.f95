program main
        use Triangle       ! derived type and functions
        implicit none
        
        ! variables
        real :: a, b, c, isRight         ! legs of triangle
        real, dimension(3) :: interior   ! values of acute angles
        type(tri) :: my_tri         ! type instantiation

        ! initialize vars
        a=0.; b=0.; c=0.; isRight=0.; interior=0.

        ! obtian user input: expecting 2 or 3 args        
        write(*,*) 'Enter 3 parameters for pythagorean test'
        write(*,*) 'Enter 2 parameters and 0 for hypotenuse'
        read *,  a, b, c

        ! Use case #1
        if (c .eq. 0.0) then
                write(*,*) 'Hypot:', hypot(a,b)         ! Two params -> hypt
                stop
        endif

        ! Assign attributes to triangle
        call set_attributes(a,b,c, my_tri)

        call print_attributes( my_tri )
                                           
end program main
       
