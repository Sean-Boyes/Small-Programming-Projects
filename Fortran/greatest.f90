program test
    integer :: a,b,c
    integer, dimension(3) :: num
    integer :: swap

    print *, 'a: '
    read(*,*) a
    print *, 'b: '
    read(*,*) b
    print *, 'c: '
    read(*,*) c
    num(1) = a
    num(2) = b
    num(3) = c
    IF (num(MINVAL(num)) == num(2)) then
      swap = num(1)
      num(1) = num(2)
      num(2) = swap
    END IF
    IF (num(2) > num(3)) then
      swap = num(3)
      num(3) = num(2)
      num(2) = swap
    END IF
    IF (num(1) > num(2)) then
      swap = num(1)
      num(1) = num(2)
      num(2) = swap
    END IF
    IF (num(1) >= 2 .and. num(2) >= 2 .and. num(3) >= 2) then 
      res = num(1) * num(2) * num(3)
    ELSE IF (num(3) >= 2) then
      res = (num(1) + num(2)) * num(3)
    ELSE
      res = num(1) + num(2) + num(3)
    END IF
    print *, res
end program test