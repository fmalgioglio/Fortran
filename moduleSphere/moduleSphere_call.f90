include "moduleSphere.f90" 
program sphere 

   ! import variables and subroutines from module Volume
    use Volume
    
    implicit none 
    
    write (*,'(a,f12.7)')'the volume of a sphere is = ', vol(3d0) 
    
end program 
