    .global _pow

    .text

_pow:

    movl %edi, %eax
    dec %esi
    jmp _test

_loop:

    imull %edi, %eax
    dec %esi

_test:

    cmpl $0, %esi
    jg _loop
    ret
