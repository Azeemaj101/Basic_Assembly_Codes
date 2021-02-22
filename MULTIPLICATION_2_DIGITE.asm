.model small
.DATA

.CODE
MAIN PROC
    MOV AL,5
    MOV BL,10
    
    MUL BL
    AAM
    
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