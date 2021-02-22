include "EMU8086.INC"
.MODEL SMALL

.DATA
.code
main proc
    MOV AX,2
    MOV BX,3
    CMP AX,BX
    JE B1
    PRINTN "NOT EQUAL"
    JMP COD2
    
    B1:
    PRINTN "EQUAL"  
    
    COD2:
    CMP AX,BX
    JZ B2
    PRINTN "NOT ZERO"
    JMP COD3
    
    B2:
    PRINTN "IS ZERO"        
    
    COD3:
    CMP AX,BX
    JNZ B3
    PRINTN "IS NOT ZERO"
    JMP COD4
    
    B3:
    PRINTN "IS ZERO"
    COD4: 
     
    CMP AX,BX
    JNE B4
    PRINTN "IS NOT EQUAL"
    JMP COD5
    
    B4:
    PRINTN "IS EQUAL"
    COD5:
           
        
    
    main endp
end