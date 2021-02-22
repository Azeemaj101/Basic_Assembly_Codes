;          DIVIDE CODE
.MODEL SMALL
.DATA
QUO DW ?
REM DW ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX, 27
    MOV DX, 0
    MOV BX, 3
    
    DIV BX
    
    MOV QUO,AX
    MOV REM,DX
    
    
    
    ADD REM,48
    MOV DX, REM
    MOV AH,2
    INT 21H  
    
    ADD QUO,48
    MOV DX,QUO
    MOV AH,2
    INT 21H
MAIN ENDP
END