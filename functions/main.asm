; main.asm
; Author: w4ne
; Date: 21/02/2022

global _start

section .text
_start:
    call _print

    mov rax, 60
    mov rdi, 0
    syscall
    ret

_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, mlength
    syscall
    ret

section .data
    message db "Hello World!", 0xA
    mlength equ $ - message
