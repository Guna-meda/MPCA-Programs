 ; write an ALP to perform addition of 2 no, of size 64 bit and store in register (reuse the register to store the result)

.TEXT
MOV R0, #20      
MOV R1, #30
MOV R2, #40
MOV R3, #50
ADDS R0, R0, R2
ADC  R1, R1, R3
SWI 0X011

