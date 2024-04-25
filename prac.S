.global asm_func1
asm_func1:
    # write below this line 
    #######################
    srai a7, a7, 13
    li a0, 0x1
    and a0, a0, a7
    xori a0, a0, 1

    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func2
asm_func2:
    # write below this line 
    #######################
    # a0 32-bit value
    li t0, 2
    blt a0, t0, _not_prime
_loop:
    rem t1, a0, t0
    beqz t1, _not_prime
    addi t0, t0, 1
    li t2, 2
    div t3, a0, t2
    ble t0, t3, _loop
    j _prime

_not_prime:
    li a0, 0
    ret

_prime:
    li a0, 1

    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func3
asm_func3:
    # write below this line 
    #######################
    li t0, 0 # index
    li t1, 1 # value to store

_loop_func3:
    sw t1, 0(a0)
    addi t0, t0, 1
    addi t1, t1, 1
    addi a0, a0, 4
    blt t0, a1, _loop_func3

    #######################
    # write above this line 
    ret     # do not remove!