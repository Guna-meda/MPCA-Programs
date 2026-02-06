.TEXT
MOV R0, #0xA5A5A5A5   
MOV R1, #32       
MOV R2, #0           

LOOP:
AND R3, R0, #1       
ADD R2, R2, R3       

LSR R0, R0, #1       

SUB R1, R1, #1       
CMP R1, #0
BNE LOOP
AND R4, R2, #1      
CMP R4, #0
MOVEQ R7, #0         
MOVNE R7, #1        


END:
SWI 0x011
