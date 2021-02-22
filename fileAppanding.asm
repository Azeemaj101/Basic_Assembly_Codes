.model small
.stack

.data
file db "testfile.txt",0
msg db "Score 10",13,,'$'

.code
start:
main proc
mov ax,@data
mov ds,ax

;load file handler
mov dx,offset file
mov al,1
mov ah,3dh
int 21h

;Appending File
mov bx,ax
mov cx,0
mov ah,42h
mov al,02h
int 21h

;Writing File
mov cx,9; should have been 1 less than length of msg.
mov dx,offset msg
mov ah,40h
int 21h

;close file
mov ah,3eh
int 21h

;exit
mov ax,4c00h
int 21h
main endp
end start
end