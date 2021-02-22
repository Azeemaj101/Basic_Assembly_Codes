.MODEL SMALL

.DATA

VAR1     DB 'Which element do you want to search in array$'
NotEqual DB 10,13,'Not Found$'
Equl    DB 10,13,'Equal$'
NewLine  DB 10,13,'$'
find     DB ?
arr db '1','2','4','6','8'

.code
main proc    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DL,OFFSET VAR1
    MOV AH,9
    INT 21H
    
    MOV DX,OFFSET NewLine
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV CX,5
    
    MOV SI,OFFSET arr
    
    LM:
    CMP [SI],BL
    JE EQL
    INC SI
    DEC CX
    JNZ LM
    
    MOV DL,OFFSET NotEqual
    MOV AH,9
    INT 21H
    JMP DEAN
    
    EQL:
    MOV DL,OFFSET Equl
    MOV AH,9
    INT 21H 
    
    D:
    MOV AH,4CH
    INT 21H
    
    main endp
end