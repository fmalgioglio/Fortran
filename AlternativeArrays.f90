program ArrayHandling 
    implicit none 
    integer, parameter :: n = 8
    ! array definition 
    real*8 :: x(0:n), y(0:n), z(0:n, 0:n)
    integer :: j,k 
    
    ! initialise x 
    do j = 0, n 
        x(j) = 1d0 / dble(n)*dble(j) 
    enddo 
    
    ! give y the values of x plus 1 
    ! è importante notare come y(:) serva a dire che il programma deve
    ! fillare ogni posizione di all'interno di y 
    y(:) = x(:) + 1d0
    
    ! calculate z 
    do j = 0,n 
        do k = 0,n 
            z(j,k) = x(j)**2 + y(k) 
        enddo 
    enddo 
    
    ! output table of values 
    write (*, '(a,9f7.2)')'     X/Y | ', y(:)
    write(*, '(a)')'      | '
    do j = 0, n
        write(*, '(f7.2,a,9f7.2)')x(j),' | ',z(j, :) 
    enddo 
end program ArrayHandling 
