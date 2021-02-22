.model small
.data
arr db 20 dup('$')
new1 db 10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    l1:
    mov ah,1
    int 21h
    cmp al,13
    je programend
    mov [si],al
    inc si
    jmp l1
    
    programend:
    lea dx,new1
    mov ah,9
    int 21h
    mov dx,offset arr
    mov ah,9
    int 21h
    
    main endp
end