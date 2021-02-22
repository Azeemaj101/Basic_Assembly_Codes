;convert capital alphabet to small alphabet
.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    mov dl,al
    add dl,32
    
    mov ah, 0Eh       ;print new line sequence
    mov al, 0Dh
    int 10h
    mov al, 0Ah
    int 10h
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
