;nested loop second program


.MODEL SMALL
.STACK 100H
.DATA
COUNT DW 1
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

MOV BX,14
MOV CX,15
MOV AX,1

OUTER: 

PUSH CX
MOV CX,BX

SPACE:
mov dl,"*"
MOV AH,2
INT 21H
LOOP SPACE

CMP BX,1
JE L1
JMP L2
L1:
MOV AH,4CH
INT 21H
L2:
MOV CX,COUNT
INNER:
MOV DL,'@'
MOV AH,2
INT 21H
LOOP INNER 
  
MOV DL,10
MOV AH,2 
INT 21H 

MOV DL,13 ;CARRAGE RETURN
MOV AH,2
INT 21H

DEC BX  
POP CX
INC COUNT

LOOP OUTER
MAIN ENDP
END 

*
**
***
****
***** 
******
*******