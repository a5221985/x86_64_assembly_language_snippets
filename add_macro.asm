section .text
    global _start

%include "lib.asm"

%macro printDigitSum 2
    mov rax, %1
    add rax, %2
    call printDigit rax 
%endmacro

_start:
    printDigitSum 3, 2
    exit 
