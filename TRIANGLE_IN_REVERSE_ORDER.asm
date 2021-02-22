.MODEL SMALL
.STACK 100H

.DATA

.CODE
MAIN PROC
    MOV BX,5
    MOV CX,5
    L1:
    PUSH CX
    MOV CX,BX
    
    L2:
    MOV DX,'*'
    MOV AH,2
    INT 21H 
    
    LOOP L2
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H
    DEC BX
    POP CX
    LOOP L1
    
    MAIN ENDP
END