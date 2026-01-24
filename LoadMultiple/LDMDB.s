;load multiple decrement before , this decrements the value before the firt operation also , 
;so1000 also will not stored if we take r0 till 36 , that is why we took r0 as 40 so even 100 will come

.DATA

A: .WORD 100 , 200, 300 ,400, 500,00,700,800,900,1000
B: .WORD 0,0,0,0,0,0,0,0

.TEXT

LDR R0,=A
ADD R0,R0,#40
LDR R11,=B
ADD R11,R11,#-4
LDMDB R0!,{R1-R10}
STMDB R11!,{R1-R10}
.END