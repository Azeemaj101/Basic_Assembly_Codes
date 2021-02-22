.model SMALL

.stack 100h

.data

filename DB 'PRO.txt',0

address DW ?

buffer  DB 1000 DUP('$')

.code

Main proc

    Mov AX,@DATA
    MOV DS,AX
    ;OPEN FILE
    MOV AH,3DH
    MOV AL,0
    LEA DX,filename
    INT 21H
    MOV ADDRESS,AX
    
    MOV AH,3FH
    MOV BX,ADDRESS
    MOV CX,1000
    LEA DX,buffer
    INT 21H 
    
     MOV SI,OFFSET buffer 
            L1:
            CMP [SI],'*'
            JE SPACE
            CMP [SI],'$'
            JE DEAD
            
            MOV DL,[SI]
            MOV AH,2
            INT 21H
            JMP DOWN
            
            SPACE:
            MOV DX,10
            MOV AH,2
            INT 21H
            MOV DX,13
            MOV AH,2
            INT 21H
            DOWN: 
            INC SI
            LOOP L1
            DEAD:
    
    ;MOV DX,OFFSET BUFFER
;    MOV AH,9
;    INT 21H
;    
    ;CLOSE FILE
    MOV AH,3EH
    MOV BX,ADDRESS
    INT 21H
    
    MAIN ENDP
END