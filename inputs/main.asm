; main.asm
; Author: w4ne
; Date: 23/02/2022

global _start 

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, mlength
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, answer
    mov rdx, 12
    syscall

    ; Prints Output
    ; -------------
    ; mov rax, 1
    ; mov rdi, 1
    ; mov rsi, answer
    ; mov rdx, 12
    ; syscall

    mov rax, 60
    mov rdi, 0
    syscall
    ret

section .bss
    answer resb 12

section .data
    message db "How are you? ", 13
    mlength equ $ - message
