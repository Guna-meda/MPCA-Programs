;Write an ALP to perform Convolution using MUL instruction (Addition of multiplication of respective numbers of loc A and loc B)


.DATA
A: .WORD 10 , 20 , 30 
B: .WORD 1 , 2 , 3

.TEXT
LDR R0,=A
LDR R1,=B
MOV R4,#3
MOV R5,#0
MOV R6,#0
LOOP:
LDR R2,[R0],#4
LDR R3,[R1],#4
MUL R6, R2,R3
ADD R5 , R5 , R6
SUB R4,R4,#1
CMP R4,#0
BNE LOOP
BEQ EXIT
EXIT:
SWI 0X011
    