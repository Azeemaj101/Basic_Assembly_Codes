.model small
.stack 100h
.data
.code
main proc
    mov al,5
    mov bl,3
    add al,bl
    add al,48    
    mov dl,al
    
    mov ah,2
    int 21h
     
    mov ah,4ch
    int 21h
    
    
    main endp
end main



