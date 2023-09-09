module Solution
    implicit none
  contains
    pure function finalGrade(exam, projects)
      integer, intent(in) :: exam, projects
      integer :: finalGrade
      if (exam > 90 .or. projects > 10) then
        finalGrade = 100
      else if (exam > 75 .and. projects >= 5) then
        finalGrade = 90
      else if (exam > 50 .and. projects >= 2) then
        finalGrade = 75
      else
        finalGrade = 0
      endif
    end function finalGrade
  end module Solution