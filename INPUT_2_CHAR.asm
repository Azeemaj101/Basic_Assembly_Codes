.MODEL SMALL
.DATA     
ARR DW 2 DUP('$')
VAR DW '00$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,OFFSET VAR
    
    MOV SI,OFFSET ARR
    
    MOV AH,1
    INT 21H
    MOV [BX],AL
    
    MOV AH,1
    INT 21H
    MOV [BX+1],AL
    
    MOV DX,VAR
    MOV [SI],DX
     
     CALL NEWL
    MOV DX,OFFSET ARR
    MOV AH,9
    INT 21H   
    
    MAIN ENDP
 
 NEWL PROC
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H
     RET       
    NEWL ENDP
END