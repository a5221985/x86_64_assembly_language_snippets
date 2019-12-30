; ------------------------------------------------------
; An implementation of the recursive function:
;
;	uint64_t factorial(uint64_t n) {
;		return (n <= 1)? 1: n * factorial(n - 1);
;	}
; ------------------------------------------------------

	global	factorial
	section	.text	
factorial:
	cmp	rdi,	0
	jne	calculate
	mov	rax,	1
	ret
calculate:
	push	rdi
	dec	rdi
	call	factorial
	pop	rdi
	mul	rdi
	ret
