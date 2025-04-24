program SumminUp 
    
    implicit none 
    integer :: i, j, sum 
    
    ! read the varible 
    write(*,'(a)') "type an integer that is > 0"
    read(*,*)i
    
    ! check wheter i > 0
    if (i > 0) then 
        
        ! initialise sum at 0 
        sum = 0 
        
        ! do the summin up 
        do j = 1, i 
            sum = sum + j 
        enddo 
        ! write the result to the console 
        write(*,'(a,i3,a,i10)')"the sum of 1 to ',i,' is: ", sum 
    else 
        write(*,'(a)')"errore: i dovebbe essere più grande di 0" 
    endif 
    
end program SumminUp
    
