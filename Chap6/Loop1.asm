;6.8 DISPLAY A ROW OF 80 STARS

.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC 
    MOV CX, 80
    MOV AH, 2
    MOV DL, '*'
    
    JCXZ EXIT ;JUMP IF CX = 0. CAREFUL
    
    TOP:
        INT 21H
        LOOP TOP
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN