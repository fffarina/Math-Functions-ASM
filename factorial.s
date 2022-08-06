	.global _factorial

	.text

_factorial:

	movl %edi, %eax
	cmpl $0, %edi
	je invalid
	cmpl $1, %edi
	je invalid

loopr:

	dec %edi
	imul %edi, %eax
	cmpl $1, %edi
	je end
	jmp loopr

end:

	ret

invalid:

	movl $0, %eax
	ret
