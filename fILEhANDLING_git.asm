.model tiny
.stack
.data
dsp1 db 10,13,'AZEEM2','$'
name1 db 'testfile.txt',0
inp1 db 18 dup(0)
handle dw ?
.code
.startup
		lea dx,name1	; Offset of file name
		xor cx,cx	; File attribute
		mov ah, 3ch	; Create file 
		mov al,00h
		int 21h
		jc myexit	; Exit if error occurs.
		
		lea dx,name1	; Offset of file name
		mov al,02h	; Open file for read and write
		mov ah,3dh	; Open file
		int 21h
		jc myexit	; Exit if error occurs.
		mov handle,AX	; Store handle of file for future usage

		lea dx,dsp1	; Offset of text to be written
		mov bx,handle	; Store handle of file in BX
		mov cx,16	; Number of bytes to write
		mov ah,40h	; Write to file   
		mov al,2
		int 21h
		jc myexit	; Exit if error occurs.

		mov bx,handle	; Store handle of file in BX
		mov ah,3eh	; Close file
		int 21h
		jc myexit	; Exit if error occurs.

		lea dx,name1	; Offset of file name
		mov al,00h	; Open file for read.
		mov ah,3dh	; Open file
		int 21h
		jc myexit	; Exit if error occurs.
		mov handle,AX	; Store handle of file for future usage

		lea dx,inp1	; Offset of text to be read to in memory
		mov bx,handle	; Store handle of file in BX
		mov cx,0FH	; Number of bytes to read
		mov ah,3fh	; Read file
		int 21h
		jc myexit	; Exit if error occurs.

		mov bx,handle	; Store handle of file in BX
		mov ah,3eh	; Close file
		int 21h
		jc myexit	; Exit if error occurs.

	myexit:	mov ah,4ch
		int 21h
.exit
end