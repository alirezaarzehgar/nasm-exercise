%include "linux64.inc"

section .data
	msg	db	"Hello, World!", 10, 0
	nl	db	10

section .bss
	buf	resb 1

section .text
	global _start
_start:
	printstr msg

	printnum 9, buf
	printchar nl

	printnum 1234, buf
	printchar nl

	exit 0
