! Calculate the roots of a quadratic equation

program quadform
    implicit none

    ! DEFINE VARS
    real :: a, b, c
    real :: disc, root1, root2

    ! USER INPUT
    print *, 'Enter values for a,b, and c separated by commas or spaces'
    read *, a, b, c

    ! DISCRIMINANT
    disc = b**2 - 4 * a * c

    ! LOGIC
    if ( disc < 0 ) then
        print *, 'roots are imaginary'
    else
        root1 = ( -b + sqrt(disc))/ 2*a
        root2 = ( -b - sqrt(disc))/ 2*a
        print *, 'roots are ', root1, 'and', root2
    end if


end program quadform
