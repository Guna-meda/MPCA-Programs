 ; write an ALP to perform addition of 2 no, of size 128 bit and store in register (reuse the register to store the result)

        .TEXT
        MOV     R0, #10      
        MOV     R1, #20
        MOV     R2, #30
        MOV     R3, #40     

        MOV     R4, #50    
        MOV     R5, #60
        MOV     R6, #70
        MOV     R7, #80    

        ADDS    R0, R0, R4  
        ADC     R1, R1, R5
        ADC     R2, R2, R6
        ADC     R3, R3, R7 

        SWI     0x011


