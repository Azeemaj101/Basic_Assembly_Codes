.MODEL SMALL
.DATA
STRING DW "KHADIJA$"
.CODE        
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET STRING
    MOV CX,7
    L1:
    
    MOV BX,[SI]
    PUSH BX
    INC SI
    LOOP L1 
    
    MOV CX,7
    L2:
    POP DX
    MOV AH,2
    INT 21H
    LOOP L2 
    
    MAIN ENDP
END