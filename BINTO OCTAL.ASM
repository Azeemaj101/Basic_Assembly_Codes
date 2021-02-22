;display the binary of a given decimal number
.model small
.stack 100h
.data

                        msg         db  10,13,  "Enter a single digit base-10 number: $"
                        msg1        db  10,13,  "Invalid Entry: $"
                        msg2        db  10,13,  "It''s equivalent binary is: $"

.code
main proc

                        mov ax,@data
                        mov ds,ax
                        lea dx,msg
                        mov ah,9
                        int 21h
                        
                        mov ah,1
                        int 21h
                        
                        
                                                            cmp     al,48
                                                            jnge    invalid                 ;to check whether a user entered a number between 0 - 9
                                                            
                                                            cmp     al,57
                                                            jnle    invalid                 ;to check whether a user entered a number between 0 - 9
                                                            
                                                            lea dx,msg2
                                                            mov ah,9
                                                            int 21h
                                                            ;**********************************************************************
                                                            and al,15
                                                            mov cl,3                       ;first binary digit is printed
                                                            mov bl,al
                                                            mov bh,bl
                                                            
                                                            shr bh,cl
                                                            add bh,48
                                                            mov ah,2
                                                            mov dl,bh
                                                            int 21h
                                                            ;**********************************************************************                                                            xor bh,bh
                                                            xor bh,bh
                                                            mov bh,bl
                                                            mov cl,2                      ;second binary digit is printed
                                                            and bh,4
                                                            shr bh,cl
                                                            
                                                            add bh,48
                                                            mov ah,2
                                                            mov dl,bh
                                                            int 21h
                                                            ;***********************************************************************
                                                            xor bh,bh
                                                            mov bh,bl                    ;third binary digit is printed
                                                            and bh,2
                                                            shr bh,1
                                                            add bh,48
                                                            mov ah,2
                                                            mov dl,bh
                                                            int 21h
                                                            ;***********************************************************************
                                                            xor bh,bh
                                                            mov bh,bl
                                                            and bh,1                    ;fourth binary digit is printed
                                                            add bh,48
                                                            mov ah,2
                                                            mov dl,bh
                                                            int 21h
                                                            ;***********************************************************************
                                                            jmp exit
                                                            
                            
                            invalid:
                                                            lea dx,msg1
                                                            mov ah,9
                                                            int 21h
                                                            
                            exit:
                                                            mov ah,4ch
                                                            int 21h                            
                                                            
                            main endp
end main
