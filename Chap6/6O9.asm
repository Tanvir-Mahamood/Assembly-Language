;6.9 COUNT THE CHARACTERS IN A LINE

.MODEL SMALL
.STACK 100H
.DATA
    MSZ1 DB 'I LOVE ROWNIK $'
.CODE
MAIN PROC 
    MOV DX, 0 ;COUNT CHARACTERS
    MOV AH, 1
    INT 21H
    
    WHILE_:
        CMP AL, 0DH
        JE EXIT
        INC DX
        INT 21H
        JMP WHILE_ 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN