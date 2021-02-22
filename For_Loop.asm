.model small
.stack 100h
.data
var db 'Azeem$'
cont db '0'
.code     
main proc
    mov ax,@data
    mov ds,ax    
    mov cx,10
    L1:
    lea dx,var
    mov ah,9
    int 21h  
    
    mov dl,cont
    mov ah,2
    int 21h
    
    inc cont
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    loop L1
    mov ah,4ch
    int 21h
    main endp
end main
    