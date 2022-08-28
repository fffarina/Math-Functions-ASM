	.global _rand_double

	.text

_rand_double:

	xor %rdx, %rdx
	rdrand %edx
	pxor %xmm0, %xmm0
	cvtsi2sdq %rdx, %xmm0
	movl $-1, %r8d
	cvtsi2sdq %r8, %xmm1
	divsd %xmm1, %xmm0
	ret

