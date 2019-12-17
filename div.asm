section .data
    digit db 0, 10
section .text
    global _start
_start:
    mov rax, 9
    mov rbx, 3
    push rax
    push rbx
    call _div
    call _printDigit
    call _exit
_div:
    push rbp
    mov rbp, rsp
    mov rax, [rbp+24]
    div qword [rbp+16]
    pop rbp
    ret
_printDigit:
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
_exit:
    mov rax, 60
    mov rdi, 0
    syscall
    ret
