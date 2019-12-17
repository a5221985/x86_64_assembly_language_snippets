section .data
    digit db 0, 10

section .text
    global _start

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

%macro printDigit 1
    mov rax, %1
    call _printRAXDigit
%endmacro

_start:
    printDigit 3
    printDigit 4

    exit

_printRAXDigit:
    push rbp
    mov rbp, rsp
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall    
    pop rbp
    ret
