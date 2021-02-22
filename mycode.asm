
.model small
.stack 100h
.data
.code
main proc
    mov dl,'A'
    mov AH, 2
    int 21h 
    
    mov dl,'Z'
    mov AH, 2
    int 21h
    
    mov dl,'E'
    mov AH, 2
    int 21h  
    
    mov dl,'E'
    mov AH, 2
    int 21h
    
    mov dl,'M'
    mov AH, 2
    int 21h 
    
    mov ah,4ch
    int 21h
    ;mov BX,2
    ;sub Ax,BX
    main endp
end main