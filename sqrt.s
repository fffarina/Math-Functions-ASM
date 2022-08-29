	.global _sqrt

	.text

_root_dbl:

	sqrtsd %xmm0, %xmm0
	ret
