.global _mul_shift

.text

_mul_shift:

	movl $0, %edx
	jmp test_while

if_test:
		
	testl $0x01, %esi				
	jz int_while
	addl %edi, %edx

int_while:
	
	sall %edi
	shrl %esi

test_while:

	cmpl $0, %esi
	jne if_test
	movl %edx, %eax
	ret	
	