	.global _factorial

	.text

_factorial:

	movl %edi, %eax
	cmpl $0, %edi
	je _invalid
	cmpl $1, %edi
	je _invalid

_loopr:

	dec %edi
	imul %edi, %eax
	cmpl $1, %edi
	je end
	jmp _loopr

_end:

	ret

_invalid:

	movl $0, %eax
	ret
