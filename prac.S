.global asm_func1
asm_func1:
    # write below this line 
    #######################
    lw t0, 0(a7)
    addi t0, t0, 13
    beqz t0, _fail
    li a0, 0
    ret

_fail:
    li a0, 1

    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func2
asm_func2:
    # write below this line 
    #######################



    #######################
    # write above this line 
    ret     # do not remove!

.global asm_func3
asm_func3:
    # write below this line 
    #######################

    

    #######################
    # write above this line 
    ret     # do not remove!