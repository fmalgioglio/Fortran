program VarDec
!declaration of varibles    
    implicit none 
    logical :: logic 
    integer :: a,b 
    real*8 :: x, y1
    character :: one_char 
    character (len=20) :: long_char 
! fixed parameters from variables 
! the d0 specify the double precision variables within the pi space especially for such parameters 
! without the result is 3.1400001049041748 which is 32 bit and stays up to 7/8 digits while with d0 it will be 64 bits and will retain 15/16 digits precision.   
    real*8, parameter :: pi = 3.14  
    integer, parameter :: n = 34 
    write(*,*),"stampa di pi",pi,n  
end program VarDec

