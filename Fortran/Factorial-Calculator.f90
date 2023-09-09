program Factorial
    implicit none
    integer :: n = 1
    integer :: result = 1

    print *, '#! : '

    read(*,*) n

    Do While (n .GT. 0)
        result = result * n
        n = n - 1
    end do

    print *, result
end program Factorial