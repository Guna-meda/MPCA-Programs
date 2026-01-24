;To find GCD of 2 numbers using conditional instructions only

.TEXT
MOV R0,#25
MOV R1,#5

LOOP:   CMP R0,R1
	SUBGT R0,R0,R1
	SUBLT R1,R1,R0
	BNE LOOP

SWI 0X011