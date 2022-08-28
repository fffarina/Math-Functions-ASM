	.global _inv_root

	.text

_inv_root:

	rsqrtss %xmm0, %xmm0
	ret
