.MODEL SMALL
.DATA


.CODE
MAIN PROC
    MOV DX,65
    MOV CX,26
    D1:
    CALL OUTPUT
    CALL NEWLINE
    INC DX
    LOOP D1
    RET
    MAIN ENDP
    
NEWLINE PROC
        PUSH DX
        MOV DX,0AH
        CALL OUTPUT
        MOV DX,0DH
        CALL OUTPUT
        POP DX
        RET
        NEWLINE ENDP 
OUTPUT PROC
    MOV AH,2
    INT 21H 
    RET
    OUTPUT ENDP
        
END
        