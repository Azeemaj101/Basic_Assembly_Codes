include "EMU8086.INC"
.model small
.stack
.data
.code
main proc
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV bl,AL  
    
    PRINTN ""
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV bh,AL
    
    MOV CL,bl
    MOV CH,00
    MOV AX,CX  
    
    DIV bh
    
    MOV AH, 00
     
    
    
    ADD AH,30H
    ADD AL,30H
    
    
    MOV BX,AX 
    
     PRINTN ""
    
    MOV AH,2
    MOV DL,BH
    INT 21H   
    
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    mov ah,4ch
    int 21h 
    
    main endp
    end main