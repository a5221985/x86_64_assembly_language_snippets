; ------------------------------------------------------
; Function to calculate GCD of two numbers
; condition: a < b
; Prototype:
;	uint64_t gcd(uin64_t a, uint64_t b);
; ------------------------------------------------------

	global	gcd		; expose gcd function
	section	.text		; code section
gcd:
	cmp	rdi,	0	; a == 0?
	jne	calculate	; if not, calculate gcd
	mov	rax,	rsi	; if true, return b
	ret
calculate:
	mov	r8,	rdi	; t1 <- a
	mov	r9,	rsi	; t2 <- b
	call modulo		; m <- t2 % t1
	mov	rsi,	rdi	; b <- a
	mov	rdi,	r9	; a <- b % a
	call	gcd		; recursive call
	ret
modulo:
	cmp	r9,	r8
	jl	done		; done if t2 < t1
	sub	r9,	r8	; t2 <- t2 - t1
	jmp	modulo		; loop until t2 < t1
done:				; done calculating
	ret
