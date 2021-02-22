                         ;Name=M.Azeem 3RD(G) 310 

          ;Addition Program
          
MOV ax,5   ;5 MOV IN AX 
MOV bx,2   ;2 MOV IN BX
MOV ax,bx  ;BX MOV IN AX

MOV ax,4   ;4 MOV IN AX
ADD ax,bx  ;BX ADD IN AX
MOV bx,ax  ;AX MOV IN BX
MOV dx,bx  ;BX MOV IN DX

MOV ah,2   ;2 MOV IN AX This is a command
INT 21h    ;Intrupt to print a char. 
              
              
          ;Subtract Program

MOV ax,8   ;8 MOV IN AX
MOV bx,2   ;2 MOV IN BX
MOV ax,bx  ;BX MOV IN AX

MOV ax,5   ;5 MOV IN AX
SUB ax,bx  ;BX ADD IN AX
MOV bx,ax  ;AX MOV IN BX
MOV dx,bx  ;BX MOV IN DX

MOV ah,2   ;2 MOV IN AX This is a command
INT 21h    ;Intrupt to print a char.  


          ;MULTIPLY Program

MOV ax,65  ;65 MOV IN AX
MOV bx,65  ;65 MOV IN BX
MOV ax,bx  ;BX MOV IN AX

MOV ax,1   ;1 MOV IN AX

MUL bx     ;BX ADD IN AX

MOV bx,ax  ;AX MOV IN BX
MOV dx,bx  ;BX MOV IN DX

MOV ah,2   ;2 MOV IN AX This is a command
INT 21h    ;Intrupt to print a char.

MOV ah,4ch ;4ch MOV IN AX This is a command FOR CLEAR REGISTER
INT 21h    ;Intrupt to print a char.