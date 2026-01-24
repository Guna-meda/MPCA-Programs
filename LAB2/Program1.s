;Dhatri S
;Program basd on value in R0
;Store 1 in r1 if r0 is 0 ,2 if positive , 3 if negetive

.DATA
A: .WORD 46

.TEXT
LDR R0,=A
LDR R0, [R0]
MOV R1,#0
CMP R0 , #0
ADDEQ R1,R1,#1
ADDGT R1, R1,#2
ADDLT R1,R1,#3

SWI 0X011
