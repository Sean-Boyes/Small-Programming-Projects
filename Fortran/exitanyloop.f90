program test
    integer :: i,ii,iii,n,j
    read(*,*) n
    j = 2
    firstloop: do i = 1, j
        n = n + 1
        secondloop: do ii = 1, j
            n = n + 1
            thirdloop: do iii = 1, j
                n = n + 1
                exit firstloop
            end do thirdloop

        end do secondloop

    end do firstloop
print *, n
end program test