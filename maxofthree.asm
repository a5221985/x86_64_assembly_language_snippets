; ------------------------------------------------------
; A 64-bit function that returns the maximum value of its three 64-bit integer
; arguments. The function has signature:
; 
;	int64_t maxofthree(int64_t, int64_t, int64_t)
;
; Note that the parameters have already been passed in rdi, rsi, and rdx. We
; just have to return the value in rax.

	global		maxofthree
	section	 	.text
maxofthree:
	mov		rax,	rdi	; result (rax) initally holds x
	cmp		rax,	rsi	; is x less than y?
	cmovl		rax,	rsi	; if so, set result to y
	cmp		rax,	rdx	; is max(x, y) less than z?
	cmovl		rax,	rdx	; if so, set result to z
	ret

