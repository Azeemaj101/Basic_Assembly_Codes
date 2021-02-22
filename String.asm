.model small
.data
var db 'AZEEM$'
var1 db 'Umar$'
.code
main proc
L1:
    mov ax,@data
    mov ds,ax
    lea dx,var
    mov ah,09h
    int 21h
    jmp C

B:      
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
     
    lea dx,var1
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
    ;RET

C: 
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
          
    mov dl,'C'
    mov ah,2
    int 21h
    jmp B
    
    main endp  

end
 
  



