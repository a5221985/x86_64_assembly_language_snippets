section .data
    text db "Hello, world!", 10
section .text
    global _start
_start:
    call _printHello
    mov rax, 60
    mov rdi, 0
    syscall
_printHello:
    push rbp
    mov rbp, rsp
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 14
    syscall
    pop rbp
    ret
