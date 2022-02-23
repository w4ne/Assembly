; main.asm
; Author: w4ne
; Date: 23/02/2022

global _start

section .text
_start:
    call _print ; Prints "Hello World!"
    call _exit  ; Sets registers to 0 and exits
    ret

_print:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, mlength
    syscall
    ret

_exit:
    xor rax, rax
    xor rdi, rdi
    xor rsi, rsi
    xor rdx, rdx

    mov rax, 60
    syscall
    ret

section .data
    message db "Hello World!", 12
    mlength equ $ - message
