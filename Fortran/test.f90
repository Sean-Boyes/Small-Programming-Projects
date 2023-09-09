Program test
    real :: content, evap_per_day, threshold, days
    read(*,*) content
    read(*,*) evap_per_day
    read(*,*) threshold
    days = 0

    threshold = content * (threshold / 100)
    DO WHILE (content .GT. threshold)
        content = content - content * (evap_per_day / 100)
        days = days + 1
    END DO

    print *, days
end program test