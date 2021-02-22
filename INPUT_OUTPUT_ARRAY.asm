.MODEL SMALL
.DATA

SETARR DB 'ENTER YOUR ARRAY VALUES TOTAL SIZE = 100 =>$'
OPARR  DB 10,13,'ARRAY VALUES IS = $'
ARR DB 100 DUP('$')
SPACE DB 20

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,OFFSET SETARR
    MOV AH,9
    INT 21H 
    
    MOV SI,OFFSET ARR
    
    L1:
    MOV AH,1
    INT 21H
    CMP AL,13
    JE OP
    MOV [SI],AL
    
    MOV DX,32
    MOV AH,2
    INT 21H
    
    INC SI
    JMP L1
    
    
    OP:
    MOV DX,OFFSET OPARR
    MOV AH,9
    INT 21H
    
    MOV SI,OFFSET ARR
    O:
    CMP [SI],'$'
    JE DEAD
    MOV DX,[SI]
    MOV AH,2
    INT 21H
    
    MOV DX,32
    MOV AH,2
    INT 21H
    
    INC SI
    JMP O
    
    DEAD:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END
    
    