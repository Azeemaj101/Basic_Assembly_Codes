.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV DX,'1'
    MOV AH,2
    INT 21H
    
    MOV DX,10
    MOV AH,2
    INT 21H
    
    MOV DX,13
    MOV AH,2
    INT 21H 
    
    MOV DX,'1'
    MOV AH,2
    INT 21H
    
    MOV DX,10
    MOV AH,2
    INT 21H
    
    MOV DX,13
    MOV AH,2
    INT 21H
    
    MOV DX,'2'
    MOV AH,2
    INT 21H
    
    MOV DX,10
    MOV AH,2
    INT 21H
    
    MOV DX,13
    MOV AH,2
    INT 21H
    
    MOV DX,'2'
    MOV AH,2
    INT 21H
    MAIN ENDP
END