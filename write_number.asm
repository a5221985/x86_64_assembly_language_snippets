	global	_start
section	.data
	number	db	125
section	.text
_start:
	push	number
	call	print_number

	mov	rax,	60
	mov	rdi,	0
	syscall
print_number:
	push	ebp
	mov	ebp,	esp
		
