	global	_start

section	.data
	mod	db	0

section	.text

_start:
	mov	rax,	25
	mov	rbx,	10

	push	rbx
	push	rax
	call	_modulo
	pop	rdx
	pop	rdx

	push	rax
	call	_printNumber
	pop	rdx

        call	_exit

_printNumber:
	push	rbp
	mov	rbp,	rsp
	mov	rbx,	[rbp + 16]
digit:
	cmp	rbx,	0
	je	done

	push	rbx
	call	_printDigit
	pop	rdx

	mov	rax,	rbx
        mov	rcx,	0x0a
	idiv	rcx
	mov	rbx,	rax
	
	jmp	digit
done:
	pop	rbp
	ret

_printDigit:
	push	rbp
	mov	rbp,	rsp
	mov	rax,	[rbp + 16]
	add	rax,	48
	mov	[mod],	al
	mov	rax,	1
	mov	rdi,	1
	mov	rsi,	mod
	mov	rdx,	2
	pop	rbp
	syscall
	ret

_exit:	
        push	rbp
        mov	rbp,	rsp
	mov	rax,	60
	mov	rdi,	0
	syscall
	pop	rbp
        ret
	
_modulo:
	push	rbp
	mov	rbp,	rsp
	mov	rax,	[rbp + 16]
	mov	rbx,	[rbp + 24]
minus:
	cmp	rax,	rbx
	jl	modulo	
	sub	rax,	rbx
	jmp	minus
modulo:
	pop	rbp
	ret
	
