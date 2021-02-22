.MODEL SMALL
.DATA 
STR DB '1','2','3','4','5'
.CODE
MAIN PROC    
   MOV AX,@DATA
   MOV DS,AX
   MOV SI,OFFSET STR
   MOV CX,5
   
   MOV BX,2
   ADD [SI+2],BX
   MOV DX,[SI+2]
   MOV AH,2
   INT 21H
   
   L1:
   MOV DX,[SI]
   CMP [SI],'3'
   JE M
   MOV AH,2
   INT 21H
   INC [SI]
   LOOP L1 
    MAIN ENDP
END

;53 - 52 =1
;49 - 50 =1
