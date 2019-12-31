	global	power
	section	.text
power:
	cmp	rsi,	0	; if b == 0, return 1
	jne	calculate
	mov	rax,	1
	ret
calculate:
	mov	rax,	1	; if b > 0, m <- a
loop:
	mul	rdi		; m <- m * a
	dec	rsi		; b <- b - 1	
	cmp	rsi,	0	; if b == 0, done
	jg	loop		; if b > 0, loop through
	ret
