# ARM Saaembly Tutorial 001

#Start programm
.global _start

#After this we have our code
.section .text

# "main"
_start:
	#Write mode (look arm systemcall table)
	mov r7, #0x4
	mov r0, #1
	ldr r1, =message
	mov r2, #13
	swi 0

	#Exit mode
	mov r7, #0x1
	mov r0, #65
	swi 0

# Data or "variables"
.section .data

	#Variable with name "message"
	message:

	#Use ascii format, string
	.ascii "Hello, World\n"
