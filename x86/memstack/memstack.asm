# x86 Assembly Memory and stack

.global _start
.intel_syntax
.section .text

_start:
	
	#push "ABC\n" on top of the stack
		# note: intel is little endian. It will read bytes from LSB (least significant byte) to MSB (most significant byte). 
		# So the result will be:
		# 41 42 43 0a
		# In ascii 41 = A, 42 = B, 43 = C, 0a = \n
	push 0x0a434241

	#write syscall, %esp is stack pointer 
	mov %eax, 4
	mov %ebx, 1
	mov %ecx, %esp
	mov %edx, 4
	int 0x80
	
	#Alternative to push, move to the adress that %esp is point to.
		#note: dword ptr specifies the lenght of string for mov command as 4 bytes
	mov dword ptr [%esp], 0x0a434241

	#write syscall, %esp is stack pointer 
	mov %eax, 4
	mov %ebx, 1
	mov %ecx, %esp
	mov %edx, 4
	int 0x80

	#exit syscall
	mov %eax, 1
	mov %ebx, 0
	int 0x80

.section .data
