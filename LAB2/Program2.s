;Write an ARM program taht generates 75 * R0 using shift and add/subtract operations

.TEXT

MOV R0 , #1
ADD R1,R0,R0 ,LSL #1
ADD R1,R1,R0, LSL #3
ADD R1,R1,R0 ,LSL #6
