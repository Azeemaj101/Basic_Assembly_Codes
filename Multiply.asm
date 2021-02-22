
;Program For MULTIPLICATION

    
mov al,2      ;2 mov in AX
mov bl,3      ;5 mov in BX 
mul bl        ;MUL AX*BX(4*5 = 20)
 
mov dx,ax     ;Dx=20 mov in AX
mov ah,2      ;for output
int 21h       ;intrupt

mov ah,4ch    ;clear register
int 21h
