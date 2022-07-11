# x86 Assembly helloworld
# intel system interupt: int 0x80

.global _start
.intel_syntax
.section .text

_start:
	#Write syscall	
	mov %eax, 4
	mov %ebx, 1
	#to load variable use lea %reg, [var_name]
	lea %ecx, [message]
	mov %edx, 13
	int 0x80
	
	#Exit syscall with code 0
	mov %eax, 1
	mov %ebx, 0
	int 0x80

.section .data
	#Variable declaration
	message:
	.ascii "Hello World\n"

