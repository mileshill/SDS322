PROGRAM pattern
        IMPLICIT NONE

        INTEGER :: i, input
        
        print *, 'Enter integer input' 
        read *, input

        select case ( input )
                case ( 1)
                        write(*,*) '*'
                        write(*,*) '*'
                case default
                        do i = 1, input
                                write(*,*) repeat('*',i)
                        end do
                        do i = input-1, 1, -1
                                write(*,*) repeat('*',i)
                        end do
        end select
 
END PROGRAM pattern
