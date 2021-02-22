.model small
.DATA

.CODE
MAIN PROC
    MOV AX,26
    MOV BL,5
    
    DIV BL
    
    MOV CH,AH
    MOV CL,AL
    
    MOV DL,CH
    ADD DL,48
    MOV AH,2
    INT 21H
    
    MOV DL,CL
    ADD DL,48
    MOV AH,2
    INT 21H
    
    
    MAIN ENDP
END