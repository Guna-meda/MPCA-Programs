;I.	Write a program in ARM7TDMI-ISA to find the sum of N data items at alternate [ odd or even positions] locations in the memory. Store the result in the memory location. 
;a)	Use Pre-indexing addressing mode
;b)	Use post-indexing addressing mode
;c)	Use Auto-indexing addressing mode

.DATA
DATA: .WORD 1,2,3,4,5,6,7,8,9,10

.TEXT

LDR R0,=DATA
MOV R2,#5
MOV R7,#0
MOV R8,#0
MOV R9,#0

	POST:  ;2000
		LDR R1,[R0],#8 ;POST(DEFAULT WRITEBACK)
		ADD R7,R1,R7
		SUBS R2,R2,#1
		BNE POST
LDR R0,=DATA
	PRE:
		LDR R3,[R0,#8] ;PRE INDEXING WITHOUT WRITEBACK
		ADD R8,R8,R3
		add R2,R2,#1
		ADD R0,R0,#8
		CMP R2,#4
		BNE PRE
LDR R0,=DATA
	AUTO:
 		LDR R4, [R0,#8]!  ;PRE INDEXING WITH WRITEBACK IS AUTO 
		ADD R9,R9,R4
		SUBS R2,R2,#1
		BNE AUTO

SWI 0X011