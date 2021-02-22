
include emu8086.inc

.STACK 100h
.DATA 

.CODE
 MAIN PROC
    
    
    MOV AX,@DATA
    MOV DS,AX  
  
    OPERATOR:
    PRINTN 'ENTER YOUR OPERATOR(/,*,+,-):'
    MOV AH,1
    INT 21H
    CMP AL,'+'
    JZ ADDER
    CMP AL,'-'
    JZ SUBTRACT
    CMP AL,'*'
    JZ MULTIPLICATION
    CMP AL,'/'
    JZ DIVIED   
    CALL NEWLINE
    JMP OPERATOR  
    
    MULTIPLICATION:
    CALL NEWLINE
    PRINT 'ENTER FIRST NUMBER:'
    MOV AH,1 
    INT 21H
    SUB AL,48
    mov Bl,Al
    CALL NEWLINE         
    PRINT 'ENTER SECOND NUMBER:'  
    MOV AH,1   
    INT 21h  
    SUB AL,48
    
    MUL BL 
    ADD AL,48
    MOV CL,AL
    CALL NEWLINE
    PRINT "RESULT IS = "
    MOV Dl,Cl
    MOV AH,2
    INT 21H
    JMP EXIT
    
    DIVIED:
    CALL NEWLINE
    PRINTN 'ENTER FIRST NUMBER:'
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV bl,AL  
    CALL NEWLINE
    PRINTN "ENTER SECOND NUMBER:"
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV bh,AL
    
    MOV CL,bl
    MOV CH,00
    MOV AX,CX  
    
    DIV bh
    
    MOV AH, 00
     
    ADD AH,48
    ADD AL,48
    
    MOV BX,AX 
    
    CALL NEWLINE
    PRINT "RESULT = "
    MOV DL,BL        
    MOV AH,2
    INT 21H 
    JMP EXIT  
      
    ADDER:
    CALL NEWLINE
    PRINT 'ENTER FIRST NUMBER:'
    MOV AH,1 
    INT 21H
    SUB AL,48
    mov bl,al
    
    CALL NEWLINE    
    PRINT 'ENTER SECOND NUMBER:'  
    MOV AH,1   
    INT 21h 
    SUB AL,48
    ADD bl,AL
    
    CALL NEWLINE
    PRINT 'ADDITION IS = '
    ADD BX,48
    MOV DX,BX
    MOV AH,2
    INT 21H
    JMP EXIT  
    
    SUBTRACT: 
    CALL NEWLINE
    PRINT 'ENTER FIRST NUMBER:'
    MOV AH,1 
    INT 21H
    SUB AL,48
    mov Bl,Al
    CALL NEWLINE        
    PRINT 'ENTER SECOND NUMBER:'  
    MOV AH,1   
    INT 21h
    SUB AL,48
    MOV CL,AL
    CALL NEWLINE
    
    SUB BX,CX
    ADD BX,48         
    CALL NEWLINE
    PRINT "RESUT IS = "
    MOV Dl,Bl
    MOV AH,2
    INT 21H
    JMP EXIT  
    
    EXIT:
    MOV AH,4CH
    INT 21H
    main endp    
NEWLINE PROC
    mov ax,10
    mov dx,ax
    mov ah,2
    int 21h
    mov ax,13
    mov dx,ax
    mov ah,2
    int 21h
    RET          
NEWLINE ENDP
 end