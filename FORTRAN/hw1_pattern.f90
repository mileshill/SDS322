PROGRAM pattern
        IMPLICIT NONE
       
        ! var declaration
        INTEGER :: i, input
        
        ! prompt user	
        print *, 'Enter integer input' 
        read *, input

	! logic block
        select case ( input )
               ! input .eq. 1
		case ( 1 )
                        write(*,*) '*'
                        write(*,*) '*'
                ! input .ne. 1
		case default
			do i = 1, input
                                write(*,*) repeat('*',i)
                        end do
                        do i = input-1, 1, -1
                                write(*,*) repeat('*',i)
                        end do
        end select
 
END PROGRAM pattern
