.MODEL SMALL
.STACK 100H
.DATA
    M1 DW 'ENTER A PASSWORD: $'
    M2 DW 'WELCOME! $'
    M3 DW 'INVALIDE INPUT $'
    M4 DW 'MARYAM$'   

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,OFFSET M1
    MOV AH,9
    INT 21H
    
    MOV SI,OFFSET M4
    
    MOV CX,6
    L1:
    MOV AH,8   
    INT 21H
    
    CMP AL,[SI]
    JNE A
               
    MOV DX,'*'
    MOV AH,2
    INT 21H
              
    
    
    INC SI
    
    LOOP L1
    
    MOV DX,OFFSET M2
    MOV AH,9
    INT 21H
    
    RET
 
    A:
       MOV DX,OFFSET M3
       MOV AH,9
       INT 21H
     
    
    RET
    
MAIN ENDP 
END