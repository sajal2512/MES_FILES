ORG 0000H

    ; Step 1: Load first digit
    MOV A, #01H        ; A = 1
    MOV B, #0AH        ; B = 10
    MUL AB             ; A = 1 × 10 = 10

    ; Step 2: Add second digit
    ADD A, #05H        ; A = 10 + 5 = 15
    MOV B, #0AH
    MUL AB             ; A = 15 × 10 = 150

    ; Step 3: Add third digit
    ADD A, #00H        ; A = 150
    MOV B, #0AH
    MUL AB             ; A = 150 × 10 = 1500

    ; Step 4: Add last digit
    ADD A, #07H        ; A = 1507

FINISH:
    SJMP $             ; Stop execution

END
