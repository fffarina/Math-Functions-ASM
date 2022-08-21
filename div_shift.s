	.global _div_shift

	.text

_div_shift:

	movl $0xfffffff, %edx		
	movl $0, %eax			
	movl $0, %r8d			
	movl $31, %ecx		
	jmp _for_loop

_for_if:

	movl %esi, %r8d			
	sall %cl, %r8d	
	cmpl %r8d, %edi			
	jb _end_for			
	cmpl $0, %r8d		
	je _end_for		
	movl %edi, %r9d			
	subl %r8d, %r9d			
	cmpl %r9d, %edx			
	jge _int_for			
	movl %r9d, %edx			

_int_for:

	subl %r8d, %edi			
	movl $1, %r10d		
	sall %cl, %r10d			
	addl %r10d, %eax	

_end_for:

	dec %ecx		
	
_for_loop:

	cmpl $0, %ecx			
	jge _for_if		
	ret				
	
