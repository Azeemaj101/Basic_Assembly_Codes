;***********Macro*********
STRING MACRO P1
MOV DX,OFFSET P1
MOV AH,9
INT 21H   
CALL NEWLINE
ENDM    
.MODEL SMALL
.STACK 100H
.DATA
STR1 DW 'LAHORE GARRISON UNIVERSITY $'
STR2 DW 'LAHORE PAKISTAN $'
STR3 DW 'SECTION G $' 
STR4 DW 'ASSEMBLY LANGUAGE LAB CLASS $'
         
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX    

STRING STR1  
STRING STR2
STRING STR3 
STRING STR4

RET   
MAIN ENDP  

NEWLINE PROC
MOV DX,10
MOV AH,2
INT 21H
MOV DX,13
MOV AH,2
INT 21H      

RET
NEWLINE ENDP    

END