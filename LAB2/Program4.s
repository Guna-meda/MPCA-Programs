;Add 2 numbers from memory and store result in memory using byte addition

.DATA

A:.BYTE 50
B:.BYTE 60
C:.BYTE 0

.TEXT
LDR   R0, =A
LDR   R1, =B
LDR   R2, =C
LDRB  R3, [R0]
LDRB  R4, [R1]
ADD   R5, R3, R4
STRB  R5, [R2]

SWI 0X011