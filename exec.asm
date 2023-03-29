%include "linux64.inc"

section .data
	nl	db	10
section .bss
	num	resb	1
section .text
	global _start
_start:
	pop	rcx
	printnum ecx, num
	printchar nl

	pop	rsi
	printstr rsi

	exit 0
