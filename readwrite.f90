program ReadWrite 
!variable declaration 
    implicit none 
    integer :: a 
    real*8 :: x 
!executable code 
    write(*,*),"type an integer number" 
    read(*,*)a 
    
    write(*,*),"Type a real number"
    read(*,*)x
    
    write(*,*)a,x 
end program   
