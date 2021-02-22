; SUBTRACT
.model small
.stack 100h
.data
.code
main proc
    mov cx,5
    mov bx,10
    sub bx,cx
    add bx,48
    
    mov dx,bx
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main



