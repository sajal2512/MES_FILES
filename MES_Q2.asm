 ;Setup: Load values from RAM into registers for processing
ORG 0000H
MOV 50H, #30H
MOV 51H, #67H
    MOV R0, 50H    ; Load Value A
    MOV R1, 51H    ; Load Value B

CHECK_LOOP:
    ; Check if A is zero
    MOV A, R0
    JZ A_IS_ZERO   ; If A is 0, jump to see if B is also 0 or if A < B

    ; Check if B is zero
    MOV A, R1
    JZ B_IS_ZERO   ; If B is 0 (and A was not), then A > B

    ; Neither are zero yet, decrement both and loop
    DEC R0
    DEC R1
    SJMP CHECK_LOOP

A_IS_ZERO:
    ; A is zero. Now check B.
    MOV A, R1
    JZ BOTH_EQUAL  ; Both reached zero together
    MOV 52H, #0FFH ; A reached zero first (A < B)
    SJMP FINISH

B_IS_ZERO:
    ; B is zero, but A is still > 0
    MOV 52H, #01H  ; B reached zero first (A > B)
    SJMP FINISH

BOTH_EQUAL:
    MOV 52H, #00H  ; Both values hit zero at the same time

FINISH:
    SJMP FINISH    ; End of program
END
