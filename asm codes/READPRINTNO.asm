ASSUME CS:CODE,DS:DATA
DATA SEGMENT
MSG1 DB 'ENTER THE NUMBER$'
MSG2 DB 0AH,'THE NUMBER IS$'
DATA ENDS
CODE SEGMENT
START:MOV AX,DATA
MOV DS,AX
MOV DX,OFFSET MSG1
MOV AH,09H
INT 21H
MOV AH ,01H
INT 21H
SUB AL,30H
MOV BH 0AH
MUL BH
MOV BH,AL
MOV AH,01H
INT 21H
SUB AL,30H
ADD BH,AL
MOV DX,OFFSET MSG2
MOV AH,09H
INT 21H
MOV CL,0AH
MOV AL,BH
MOV AH,00H
DIV CL
MOV BL,AH
ADD AL,30H
MOV DL,AL
MOV AH,02H
INT 21H
ADD BL,30H
MOV DL,BL
MOV AH,O2H
INT 21H
MOV AH,4CH
INT 21H
CODE ENDS 
END START