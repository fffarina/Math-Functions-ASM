.global _mul_shift

.text

_mul_shift:

	movl $0, %edx
	jmp _test_while

_if_test:
		
	testl $0x01, %esi				
	jz _int_while
	addl %edi, %edx

_int_while:
	
	sall %edi
	shrl %esi

_test_while:

	cmpl $0, %esi
	jne _if_test
	movl %edx, %eax
	ret	
	
