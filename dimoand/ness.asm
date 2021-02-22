ORG 100H
.MODEL SMALL
.STACK 100H
.DATA
     
  STAR DW 1
  SPACE DW 5
    
  STAR1 DW 7
  SPACE1 DW 5  
  
  STAR2 DW 1
  SPACE2 DW 5 
  
  STAR3 DW 1
  
  
  
     
.CODE
MAIN PROC

        
    MOV CX,5
      
    
OUTER1:

    MOV BX,CX
   
    MOV CX,SPACE
K1:
    MOV DX," "
    MOV AH,2
    INT 21H   
  
            LOOP K1


MOV CX,STAR
L1:
    MOV DX,"*"
    MOV AH,2
    INT 21H
  
    
            LOOP L1

     
  

MOV CX,SPACE
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
            LOOP L3
          
          
    
MOV CX,5   
    
L5: 
   MOV DX," "
   MOV AH,2
   INT 21H
          
           LOOP L5


MOV CX,STAR3     
L6:
  MOV DX,"*"
  MOV AH,2
  INT 21H
         LOOP L6 
  

    
    
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H 
    
    
INC STAR3
INC STAR3         
DEC SPACE    
INC STAR                  
DEC STAR1 
DEC STAR1    
INC SPACE

MOV CX,BX

LOOP OUTER1              
MAIN ENDP 
       


END