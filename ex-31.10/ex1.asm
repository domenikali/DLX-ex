;Write a program that insert 0 to 7 as word in the memory starting from 0xE0008000

init: LHI R2,0xE000
      ADDI R3,R0,0x0007
loop: SW R3,0x081C(R2)
      SUBI R2,R2,0x0004
      SUBI R3,R3,0x0001
      BNEZ R3,loop
      HALT