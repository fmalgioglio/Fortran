module Volume 
    implicit none 
    !module parameter 
    real * 8, parameter :: pi = 3.14159265358d0
    
!separates variables declarations from subroutines and fucntions 

contains 

    !for calculating the volume of a sphere 
    function vol(r) 
        implicit none 
        
        !input and output variables 
        real*8, intent(in) :: r 
        real*8 :: vol 
        
        ! calculation
        vol = 4d0/3d0*r**3*pi 
        
    end function 

end module 
