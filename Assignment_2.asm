.MODEL SMALL  ;Code OR Data <= 64KB

.DATA         ;Use for Declared Variables 

 VAR  DB 'NAME: Muhammad Azeem $'
 VAR1 DB 10,13,'LAHORE GARRISON UNIVERSITY $' ;10 or 13 for new lines
 VAR2 DB 10,13,'SECTION G (BSCS-FALL-310 $'   ;$ this is a terminator of string

.CODE          ;Start Code

MAIN PROC         ;Main Code

L1:               ;Label
    MOV AX,@DATA  ;Data pass in AX
    MOV DS,AX     ;AX Pass in DS(Data Segment 16 Bit)
    LEA DX,VAR    ;LEA for string we also use offset
    MOV AH,09H    ;09H use for print string
    INT 21H       ;intrupt
    JMP C         ;Jump to C
                  
B:                ;Lable B
    LEA DX,VAR2   ;LEA for string we also use offset
    MOV AH,09H    ;09H use for print string
    INT 21H       ;intrupt
           
    MOV AH,4CH    ;Use For Return    
    INT 21H       ;intrupt

C:  
    LEA DX,VAR1   ;LEA for string we also use offset
    MOV AH,09H    ;09H use for print string
    INT 21H       ;intrupt
    JMP B         ;Jump to B
    
    MAIN ENDP     ;END Main

END            ;END Code
 
  



