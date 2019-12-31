	global	gcd
	section	.text
gcd:
	cmp	rdi,	0	; a == 0?
	jne	calculate	; if not, calculate gcd
	mov	rax,	rsi	; if true, return b
	ret
calculate:
	push	rdi
	push	rsi
	call modulo
	pop	rsi
	pop	rdi
	mov	r8,	rdi	; t <- a
	mov	rdi,	rax	; a <- b % a
	mov	rsi,	r8	; b <- a
	call	gcd
	ret
modulo:
	cmp	rsi,	rdi
	jl	done
	sub	rsi,	rdi
	jmp	modulo
done:
	mov	rax,	rsi
	ret
