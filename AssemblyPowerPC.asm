.data
msg:
    .string "Hello, world!\n"
    len = . - msg

.text

    .global _start
_start:

    li      0,4
    li      3,1
    lis     4,msg@ha
    addi    4,4,msg@l
    li      5,len
    sc

    li      0,1
    li      3,1
    sc