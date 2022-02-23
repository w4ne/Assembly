; main.asm
; Author: w4ne
; Date: 23/02/2022

global _start

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
    ret 

section .data
    msg db "Hello World!", 12
    len equ $ - msg
