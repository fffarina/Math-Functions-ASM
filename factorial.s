	.global _factorial

	.text

_factorial:

	movq %rdi, %rax
	cmpq $0, %rdi
	je invalid
	cmpq $1, %rdi
	je invalid

loopr:

	dec %rdi
	imul %rdi, %rax
	cmpq $1, %rdi
	je end
	jmp loopr

end:

	ret

invalid:

	movq $0, %rax
	ret
