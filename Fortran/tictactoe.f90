PROGRAM TICTACTOE
    INTEGER :: result = 0
    INTEGER :: moveX
    INTEGER :: moveY
    INTEGER, DIMENSION(3,3) :: board = 0

    DO WHILE (result .EQ. 0)
        print *, 'moveX: ' 
        READ(*,*) moveX
        print *, 'moveY: ' 
        READ(*,*) moveY

        !REPEAT PLACMENT
        IF (moveX .EQ. 1 .AND. moveY .EQ. 1) THEN 
            PRINT *, 'ALREADY WENT THERE'
            CYCLE 
        ENDIF

        !CAN'T GO THERE
        IF (moveX .EQ. 2 .AND. moveY .EQ. 2) THEN 
            PRINT *, 'COMPUTER ALREADY WENT THERE'
            CYCLE 
        ENDIF

        !OUT OF BOUND
        IF (moveX .GT. 3 .OR. moveX .LT. 1 .AND. moveY .GT. 3 .OR. moveY .LT. 1) THEN 
            PRINT *, 'OUT OF BOUND'
            CYCLE 
        ENDIF
        board(moveX,moveY) = 1

        !INSERT BOT

        PRINT *, board(1,:)
        PRINT *, board(2,:)
        PRINT *, board(3,:)
    END DO
END