! Calculate location of frets on standard guitar

program Fretboard_Calculator
    implicit none


    integer :: total_frets = 24
    real :: scale_length = 25.5         ![inches]
    real :: fconst = 2.0**(1.0/12.0)    ! fretboard constant        
    integer :: fret                     ! var to be calculated


    ! FORMATTING
    100 format ( i3, 5x, f5.2)          ! ( int of 3 blocks, five spaces, floating point: 5 blocks, 2 decimals )

    ! WRITE TO FILE
    open( unit = 1, file = 'frets.dat' ) ! unit equals is a labeling

    do fret = 1, total_frets
        write(unit=1, fmt=100) fret, scale_length / (fconst ** fret)
    end do

    ! CLOSE THE FILE
    close( unit= 1 )

end program Fretboard_Calculator
