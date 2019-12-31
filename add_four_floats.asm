; void add_four_floats(float x[4], float y[4])
; x[i] += y[i] for i in range [0, 4)

	global	add_four_floats
	section	.text
add_four_floats:
	movdqa	xmm0,	[rdi]
	movdqa	xmm1,	[rsi]
	addpd	xmm0,	xmm1
	movdqa	[rdi],	xmm0
	ret
