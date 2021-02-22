.MODEL SMALL
.DATA 
STR DB 5,2,3,4,5,6
.CODE
MAIN PROC    
   MOV AX,@DATA
   MOV DS,AX
   MOV CX,6
   L1:
   MOV SI,OFFSET STR
   ADD [SI],48
   
   MOV DX,[SI]
   MOV AH,2
   INT 21H
   
   MOV BX,[SI]
   INC [SI]
      
   
   LOOP L1 
    MAIN ENDP
END

;53 - 52 =1
;49 - 50 =1
