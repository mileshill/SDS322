 PROGRAM oddeven
        implicit none
        
        integer :: i
        integer :: n, rem
                

        print *, 'Give you integer input'
        read *, n

        do i=1, n
               rem = mod(i,2)
               select case ( rem  )
                        case ( 0  )
                                print *, i, 'is even'
                        case default
                                print *, i, 'is odd'
               end select
        end do


END PROGRAM oddeven
