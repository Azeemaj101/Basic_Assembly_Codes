ORG 100H
.MODEL SMALL
.STACK 100H
.DATA
     
  STARE DW 1
  SPACER DW 5
    
  STAR1 DW 8
  SPACE1 DW 5  
  
  STAR2 DW 1
  SPACE2 DW 5 
  
  STAR3 DW 1
  STAR4 DW 3
  LO DW 7
  
  
  
     
.CODE
MAIN PROC
                
    MOV CX,5
      
    
OUTER1:

    MOV BX,CX
   
    MOV CX,SPACER
K1:
    MOV DX," "
    MOV AH,2
    INT 21H   
  
    LOOP K1


MOV CX,STARE
L1:
    MOV DX,"*"
    MOV AH,2
    INT 21H
    LOOP L1

     
  

MOV CX,SPACER
L2:
   MOV DX," "
   MOV AH,2
   INT 21H
   LOOP L2
           
           
MOV CX,STAR1   
   
L3:
   MOV DX,"*"
   MOV AH,2
   INT 21H
   CMP STAR1,0
   JE EN
   LOOP L3
   EN:       
         
    
MOV CX,5   
    
L5:
   CMP STAR3,7
   JAE EC 
   MOV DX," "
   MOV AH,2
   INT 21H
   LOOP L5
   JMP EZ
   EC:
   MOV CX,LO
   L8:
   MOV DX," "
   MOV AH,2
   INT 21H
   LOOP L8
   INC LO
   
EZ:
MOV CX,STAR3     
L6:  
    CMP STAR3,7
    JAE EM
    MOV DX,"*"
    MOV AH,2
    INT 21H
    LOOP L6
    JMP ED
    EM:
    MOV CX,STAR4
    L7:    
    MOV DX,"*"
    MOV AH,2
    INT 21H
    LOOP L7
    MOV STAR4,1
    ED:

    
    
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H 
    
    
INC STAR3 

INC STAR3             
DEC SPACER    
INC STARE                  
DEC STAR1 
DEC STAR1    
INC SPACER

MOV CX,BX

LOOP OUTER1              
MAIN ENDP 
       


END