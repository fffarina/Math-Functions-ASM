    .global _root

    .text

_root:

    movsd %xmm0, %xmm1
    divsd .LC0(%rip), %xmm0
    movl $16, %edx
    jmp _test

_loop:

    movsd %xmm1, %xmm2
    divsd %xmm0, %xmm2
    addsd %xmm2, %xmm0
    divsd .LC0(%rip), %xmm0 
    dec %edx

_test:

    cmpl $0, %edx
    jne _loop
    ret

.LC0:

    .long 0x0
    .long 0x40000000
