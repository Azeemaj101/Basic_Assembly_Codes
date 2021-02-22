include "EMU8086.INC"
.model small

.data
STR DB 20 DUP('$')

.code
main PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET STR
    
    L1:
    MOV AH,1
    INT 21H
    CMP AL,13
    JE PRO
    
    MOV [SI],AL
    INC SI
    JMP L1
    
    PRO:
    PRINTN ""
    MOV SI,OFFSET STR
    
    L2:
    CMP [SI],'$'
    JE PRO1
    
    ADD [SI],32 
    MOV DX,[SI]
    MOV AH,2
    INT 21H
    INC SI
    JMP L2
    
    PRO1:
    
    MAIN ENDP
END