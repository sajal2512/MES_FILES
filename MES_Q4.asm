ORG 0000H

    CLR A              ; Clear accumulator

    ; Step 1: Load first hex digit (1)
    ORL A, #01H        ; A = 01H

    ; Step 2: Shift left by 4 bits (nibble shift)
    SWAP A             ; A = 10H
    ORL A, #06H        ; A = 16H

    ; Step 3: Shift left again
    SWAP A             ; A = 61H
    ANL A, #0F0H       ; Mask lower nibble → A = 60H
    ORL A, #05H        ; A = 65H

    ; Step 4: Final digit
    SWAP A             ; A = 56H
    ORL A, #07H        ; A = 57H (lower byte of 1657H)

FINISH:
    SJMP $
END
