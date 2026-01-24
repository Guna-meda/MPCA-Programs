.DATA
A: .WORD 4
B: .WORD 5
C: .WORD 0

.TEXT
  
LDR   R0, =A
LDR   R1, =B
LDR   R2, =C

LDR   R3, [R0]        
LDR   R4, [R1]       

ADD   R5, R3, R4      

MOV   R6, R4, LSL #3  
MOV   R7, R4, LSL #2  
ADD   R6, R6, R7      
ADD   R6, R6, R4      

ADD   R5, R5, R6      
STR   R5, [R2]
