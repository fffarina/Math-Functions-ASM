    .global _pow_float

    .text

_pow_float:

    movsd %xmm0, %xmm1
    dec %edi
    jmp _test

_loop:

    mulsd %xmm1, %xmm0
    dec %edi

_test:

    cmpl $0, %edi
    jg _loop
    ret
