;Write the code to calculate the sum of 8 words stored in the memory starting from 0x00000800 and store the result in 0xE0000200

init:   ADDI R2,R0,0x200
        ADD R3,R0,R0
memory: SW R0,0x0800(R2)
        SUBI R2,R2,0x0004
        BNEZ R2,memory
        ADDI R2,R0,0x200
loop:   LW R4,0x0800(R2)
        ADD R3,R3,R4
        SUBI R2,R2,0x4
        BNEZ R2,loop
        SW R3,0x0200(R0)
        HALT
