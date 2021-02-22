.MODEL SMALL
.DATA 
STR DB 'A','Z','E','E','M'
.CODE
MAIN PROC    
   MOV AX,@DATA
   MOV DS,AX
   MOV SI,OFFSET STR
   MOV CX,5
   
   L1:
   
   
   MOV DX,[SI]
   MOV AH,2
   INT 21H
   INC SI
      
   LOOP L1 
    MAIN ENDP
END

;53 - 52 =1
;49 - 50 =1
