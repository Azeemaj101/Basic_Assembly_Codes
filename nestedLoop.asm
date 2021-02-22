.MODEL SMALL
.DATA
INNER DB 10,13,'*$'
OUTER DB 10,13,'#$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,12
    L1:
    LEA DX,OUTER
    MOV AH,9
    INT 21H 
    MOV BX,CX
    MOV CX,5
    L2: 
    LEA DX,INNER
    MOV AH,9
    INT 21H
    
    LOOP L2
    MOV CX,BX
    LOOP L1
    
    MAIN ENDP
END
       