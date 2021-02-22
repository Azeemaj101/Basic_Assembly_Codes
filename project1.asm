org 100h
; clear the screen
mov ax,0600h ;scroll the screen
mov bh,07 ;normal attribute
mov cx,0000 ;from row=00,column=00
mov dx,184fh ;to row=18h, column=4fh
int 10h ;invoke the interrupt to clear screen
mov ah,00 ;set mode
mov al,13h ;mode=13(CGA High resolution)
int 10h ;invoke the interrupt to change



 ; Start drawing house

; top horizontal line (house)
mov cx,130 ;start line at column=130 and
mov dx,75 ;row=75
houseT: mov ah,0ch ;ah=0ch to draw a line
mov al,01h ;pixels=light grey
int 10h ;invoke the interrupt to draw the
inc cx ;increment the horizontal position
cmp cx,216 ;draw line until column=216
jnz houseT 


; bottom horizontal line (house)
mov cx,130
mov dx,125
houseB: mov ah,0ch
mov al,01h
int 10h
inc cx
cmp cx,216
jnz houseB  


; left vertical line (house)
mov cx,130
mov dx,75
houseL: mov ah,0ch
mov al,03h
int 10h
inc dx
cmp dx,125
jnz houseL   

; right vertical line (house)
mov cx,216
mov dx,75
houseR: mov ah,0ch
mov al,03h
int 10h
inc dx
cmp dx,126
jnz houseR


; left roof line (house)
mov cx,130
mov dx,75
houseLR: mov ah,0ch
mov al,09h
int 10h
inc cx
dec dx
cmp cx,173
cmp dx,32
jnz houseLR


; right roof line (house)
mov cx,173
mov dx,32
houseRR: mov ah,0ch
mov al,09h
int 10h
inc cx
inc dx
cmp cx,216
cmp dx,75
jnz houseRR  

 
 
 
; left door line (house)
mov cx,164
mov dx,125
hseLD: mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,100
jnz hseLD 
         
         
; right door line (house)
mov cx,182
mov dx,125
hseRD: mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,100
jnz hseRD 


; top door line (house)
mov cx,164
mov dx,100
hseTD: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,183
jnz hseTD
 
 
; left window vert line1 (house)
mov cx,136
mov dx,85
hseLWV1: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz hseLWV1

; left window vert line2 (house)
mov cx,146
mov dx,85
hseLWV2: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz hseLWV2 

;left window vert line3 (house)
mov cx,156
mov dx,85
hseLWV3: mov ah,0ch
mov al,07h
int 10h
inc dx 
cmp dx,105
jnz hseLWV3

; right window vert line1 (house)
mov cx,190
mov dx,85
hseRWV1: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz hseRWV1 


; right window vert line2 (house)
mov cx,200
mov dx,85
hseRWV2: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz hseRWV2  


; left window vert line3 (house)
mov cx,210
mov dx,85
hseRWV3: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105  
jnz hseRWV3 


; window horz line1 (house)
mov cx,136
mov dx,85
hseWH1: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,156
jnz hseWH1
mov cx,190 ;this line continues for the second
mov dx,85
hseWH1b: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,210
jnz hseWH1b  
 
 
 ; window horz line2 (house)
mov cx,136
mov dx,95
hseWH2: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,156
jnz hseWH2
mov cx,190
mov dx,95
hseWH2b: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,210
jnz hseWH2b 


; window horz line3 (house)
mov cx,136
mov dx,105
hseWH3: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,157
jnz hseWH3
mov cx,190
mov dx,105
hseWH3b: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,211
jnz hseWH3b 


; left path top (path)
mov cx,164
mov dx,126
pthLT: mov ah,0ch
mov al,05h ;pixels=light red
int 10h
dec cx
inc dx 
cmp cx,144
cmp dx,146
jnz pthLT 


; right path top (path)
mov cx,182
mov dx,126
pthRT: mov ah,0ch
mov al,05h
int 10h
dec cx
inc dx
cmp cx,162
cmp dx,146
jnz pthRT 


; left path middle (path)
mov cx,144
mov dx,146
pthLM: mov ah,0ch
mov al,05h
int 10h
inc dx
cmp dx,166
jnz pthLM 


; right path middle (path)
mov cx,162
mov dx,146
pthRM: mov ah,0ch
mov al,05h
int 10h
inc dx
cmp dx,166
jnz pthRM   


; left path bottom (path)
mov cx,144
mov dx,166
pthLB: mov ah,0ch
mov al,05h
int 10h
dec cx
inc dx
cmp cx,114
cmp dx,196
jnz pthLB 


; right path bottom (path)
mov cx,162
mov dx,166
pthRB: mov ah,0ch
mov al,05h
int 10h
dec cx
inc dx
cmp cx,132
cmp dx,196
jnz pthRB
 



; left trunk base (tree)
mov cx,40
mov dx,135
treLTB: mov ah,0ch
mov al,06h ;pixels=brown
int 10h
inc cx
dec dx
cmp cx,55
cmp dx,120
jnz treLTB   


; right trunk base (tree)
mov cx,86
mov dx,135
treRTB: mov ah,0ch
mov al,06h
int 10h
dec cx
dec dx
cmp cx,71
cmp dx,120
jnz treRTB


; left trunk vert (tree)
mov cx,55
mov dx,120
treLTV: mov ah,0ch
mov al,06h
int 10h
dec dx
cmp dx,80
jnz treLTV 


; right trunk vert (tree) 
mov cx,71
mov dx,120
treRTV: mov ah,0ch
mov al,06h
int 10h
dec dx
cmp dx,80
jnz treRTV
mov dx,80
mov bx,101

DrwTree:
mov cx,126
sub cx,bx ;keeps green tree symmetrical

GrTree: mov ah,0ch
mov al,02h ;pixels=green
int 10h
inc cx
cmp cx,bx
jnz GrTree
cmp bx,65 ;when bx reaches a
jle break

sub dx,3 ;moves green line up
sub bx,2 ;makes tree narrow on each pass

jmp DrwTree

break: 