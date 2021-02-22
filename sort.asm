.MODEL SMALL
.STACK 100H
.DATA 
ELEMENT DB '7','1','0','5','3'
SIZE DB 5

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV CX,OFFSET SIZE
    MOV SI,OFFSET ELEMENT
    MOV DI,OFFSET ELEMENT
    MOV AX,1
    DEC CX
    
    O:
    
    PUSH CX
    MOV BL,[SI]
    MOV CX,OFFSET SIZE
    SUB CX,AX
    
    I:
    INC DI
    CMP BL,[DI]
    JNB GOTO
    
    MOV DL,[DI]
    MOV [DI],BL
    MOV [SI],DL
    
    MOV BL,DL
    
    GOTO:
    CMP CX,0
    JE L1
    LOOP I
    
    L1:
    INC AX
    INC SI
    POP CX
    MOV DI,SI
    
    LOOP O
    
    mov si,offset element                       
        mov cx,5
        l3:
        mov dx,[si]

        mov ah,2
        int 21h
        inc si

        loop l3 
        
        mov ah,4ch
        int 21h 
    
    MAIN ENDP
END