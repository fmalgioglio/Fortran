program readwriteFormatters 
! variable declaration 
    implicit none 
    integer :: x 
    real*8 :: y

!executable variable 
    write(*,*)"type an integer number" 
    read(*,*)x
    
    write (*,*)"type a real number"
    read(*,*)y 
    
    write(*,'(i3,2x,f10.6)')x, y 
end program readwriteFormatters


    
