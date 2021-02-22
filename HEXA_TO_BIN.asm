;To convert a given hexadecimal number to it's binary equivalent
;DOSSEG
.MODEL SMALL
.STACK 100H
.DATA

                                            prompt  DB  10,13,"ENTER THE HEX STRING (IN CAPITALS) $"
                                            MSG1    DB  10,13,"IN BINARY IT IS: $"
                                            MSG2    DB  10,13,"INVALID INPUTS: $"
                                            
.CODE
main proc

                                            MOV AX,@DATA                        ;INITIALIZATION OF DATA SEGMENT
                                            MOV DS,AX
                                            
                       INPUT:       
                                            MOV AH,9
                                            LEA DX, prompt
                                            INT 21H
                                            
                                            MOV BX,0
                                            MOV CL,4
                                            MOV AH,1
                                            INT 21H
                       
                       WHILE:
                                            CMP AL,13
                                            JE OUTPUT
                                            
                                            CMP AL,48
                                            JL ERROR
                                            
                                            CMP AL,57
                                            JG LETTER
                                            
                                            AND AL,0FH
                                            JMP SHIFT
                                            
                      LETTER:               
                                            CMP AL,65
                                            JL ERROR
                                            
                                            CMP AL,70
                                            JG ERROR
                                            SUB AL,55
                                            
                      SHIFT:                
                                            SHL BX,CL
                                            OR BL,AL
                                            INT 21H
                                            JMP WHILE
                                            
                      OUTPUT:       
                                            MOV AH,9
                                            LEA DX,MSG1
                                            INT 21H
                                            MOV AH,2
                                            MOV CX,16
                      TOP:
                                            SHL BX,1
                                            JC SET
                                            MOV DL,48
                                            INT 21H
                                            JMP ITERATION
                                            
                                            
                      SET:
                                            MOV AH,2
                                            MOV DL,49
                                            INT 21H
                      
                      ITERATION:
                                            LOOP TOP
                                            JMP EXIT
                                            
                      ERROR:                
                                            MOV AH,9
                                            LEA DX,MSG2
                                            INT 21H
                                            JMP INPUT
                                            
                      EXIT:     
                                            MOV AH,4CH
                   MAIN ENDP
END MAIN