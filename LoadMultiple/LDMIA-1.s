 ; Program to transfer data from memory locations to reg using single Load MUltiple Instruction using IA condition

.DATA
A: .WORD 100,200,300,400,500,600,00,800
B: .WORD 0,0,0,0,0,0,0,0

.TEXT

LDR R0,=A
LDR R7,=B
LDMIA R0!,{R1,R8,R9,R11}
.END