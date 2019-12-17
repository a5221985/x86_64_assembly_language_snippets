section .data         ; data is defined here, .bss - reserve memory
    text db "Hello, World!", 10    ; db - define bytes, data, 10 - newline, text - name assigned to memory address
section .text         ; code is defined here
    global _start     ; linker knows the label if defined here
_start:               ; label - replaced by assembler, _start - OS starts from here
    mov rax, 1        ; ID - sys_write
    mov rdi, 1        ; first arg - file descriptor - sysout
    mov rsi, text     ; second arg - buffer - mem address
    mov rdx, 14       ; third arg - count
    syscall           ; kernel request

    mov rax, 60       ; ID - sys_exit
    mov rdi, 0        ; first arg - error code - 0 - no error
    syscall           ; kernel request
