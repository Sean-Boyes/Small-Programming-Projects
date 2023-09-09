program Circle
    implicit none
    real :: pi
    real :: result
    integer :: radius

    pi = 3.1415

    print *, 'Radius: '
    read(*,*) radius

    result = pi * radius ** 2.0
    print *, result
    
end program Circle