.MODEL SMALL
.DATA


.CODE
MAIN PROC
    MOV DX,97
    MOV CX,26
    D1:
    MOV AH,2
    INT 21H
    CALL NEWLINE
    INC DX
    LOOP D1
    RET
    MAIN ENDP
    
NEWLINE PROC
        PUSH DX
        ;PUSH AX
        MOV DX,0AH
        MOV AH,2
        INT 21H
        MOV DX,0DH
        MOV AH,2
        INT 21H
        ;POP AX
        POP DX
        RET
        NEWLINE ENDP
        
END
        