.global _div_shift

.text

_div_shift:

	movl $0xeffffff, %edx		
	movl $0, %eax			
	movl $0, %r8d			
	movl $31, %ecx		
	jmp for_loop

for_if:

	movl %esi, %r8d			
	sall %cl, %r8d	
	cmpl %r8d, %edi			
	jb end_for			
	cmpl $0, %r8d		
	je end_for		
	movl %edi, %r9d			
	subl %r8d, %r9d			
	cmpl %r9d, %edx			
	jge int_for			
	movl %r9d, %edx			

int_for:

	subl %r8d, %edi			
	movl $1, %r10d		
	sall %cl, %r10d			
	addl %r10d, %eax	

end_for:

	dec %ecx		
	
for_loop:

	cmpl $0, %ecx			
	jge for_if		
	ret				
	
