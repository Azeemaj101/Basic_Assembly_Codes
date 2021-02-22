.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
    
    ;BOX
    MOV AH,6        ;SCROLL WINDOW
    MOV AL,0        ;START FROM 0 LINE
    
    MOV BH,10101100B        
    MOV CH,5        ;START ROW
    MOV CL,2        ;START COLUMN
    MOV DH,15       ;END OF ROW
    MOV DL,20       ;END OF COLUMN
    INT 10H
  
    
    ;CURSER
    MOV AH,2
    MOV BH,0
    MOV DH,10   
    MOV DL,10
    INT 10H
    
    ;TEXT
    
    MOV AH,9
    MOV AL,'A'
    MOV BL,11111100B
    MOV BH,0         ;PAGE NUMBER
    MOV CX,3
    INT 10H 
    MOV DX,'Z'
    MOV AH,2
    INT 21H
   ;*********
    
   MOV AH,6        ;SCROLL WINDOW
   MOV AL,0        ;START FROM 0 LINE
    
    MOV BH,11001100B        
    MOV CH,18        ;START ROW
    MOV CL,2        ;START COLUMN
    MOV DH,30       ;END OF ROW
    MOV DL,20 
    INT 10H
    
    ;CURSER
    MOV AH,2
    MOV BH,0
    MOV DH,20   
    MOV DL,10
    INT 10H 
            
            
    ;TEXT
    
    MOV AH,9
    MOV AL,'J'
    MOV BL,11111100B
    MOV BH,0         ;PAGE NUMBER
    MOV CX,4
    INT 10H 
    
    
    MOV AH,4CH
    INT 21H
               
    
MAIN ENDP
END