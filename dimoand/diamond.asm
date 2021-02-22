;NESTED LOOPS

org 100h
.model small

.data

space dw 11
star dw  1

space1 dw 5 
star1 dw 13 
.code
main proc
mov ax,@data
mov ds,ax    
    
mov cx,7
outer:
mov bx,cx 

mov cx,space
l1:
mov dl,32
mov ah,2
int 21h

loop l1
dec space

mov cx, star
l2:
mov dl,'*'
mov ah,2
int 21h

loop l2
inc star   ;add star,2
inc star

mov dl,0AH  ;move to newline
mov ah,2
int 21h
mov dl,0DH  ;carriage return
mov ah,2
int 21h

mov cx,bx
loop outer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


mov cx,7
outer1:
mov bx,cx 

mov cx,space1
lo1:
mov dl,32
mov ah,2
int 21h

loop lo1
inc space1

mov cx, star1
lo2:
mov dl,'*'
mov ah,2
int 21h


loop lo2
dec star1   ;add star,2
dec star1

mov dl,0AH  ;move to newline
mov ah,2
int 21h
mov dl,0DH  ;carriage return
mov ah,2
int 21h

mov cx,bx
loop outer1

ret    
    main endp
end













            *
           ***
          *****
         ******* 
         ******* 
          *****  
           ***
            *
          
          
          
          














































