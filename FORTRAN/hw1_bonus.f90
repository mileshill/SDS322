 PROGRAM funLoop
        IMPLICIT NONE
        
        INTEGER :: i, total
        INTEGER, PARAMETER :: n = 999
        
        total = 0
        do i=1, n
                if ((mod(i,3) .eq. 0) .or. (mod(i,5) .eq. 0)) then
                        total = total + i
                end if
        end do
        
        print *, total        

END PROGRAM funLoop
