;Write an ALP using to add only even numbers stored in memory location for a given set of numbers and store the sum in the memory location.

.DATA

A: .WORD 1,2,3,4,5,6,7,8,9,10
SUM:.WORD 0

.TEXT

LDR R0,=A
LDR R1,=SUM
MOV R5,#0
MOV R2,#10
MOV R3,#0
LDR R7,[R0]
ANDS R4,R7,#1
CMP R4,#0
ADDEQ R5,R5,R7

LOOP:   LDR R7,[R0,#4]!
	ANDS R4,R7,#1
	CMP R4,#0
	ADDEQ R5,R5,R7
	SUB R2,R2,#1
	CMP R2,#0
	BNE LOOP

STR R5,[R1]
SWI 0X011