ORG 0000H

    ; --- Setup Memory ---
    MOV 40H, #60H        ; 40H contains 60H
    MOV 60H, #0AAH       ; 60H contains AAH

    ; --- Modified Program 1: Direct Access using temp register ---
    MOV R0, #40H         ; Load address 40H
    MOV A, @R0           ; Read value at 40H → 60H
    MOV R5, A            ; Store result in R5

    ; --- Modified Program 2: Indirect Access using Accumulator ---
    MOV A, 40H           ; A = 60H (pointer value)
    MOV R1, A            ; Move pointer to R1
    MOV A, @R1           ; Read value at 60H → AAH
    MOV R6, A            ; Store result in R6

    SJMP $               ; Infinite loop
END
