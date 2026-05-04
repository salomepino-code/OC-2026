%include "../LIB/pc_io.inc"

section .data

section .bss

section .text
global _start

_start:
    mov edx, 00000111b  
    call EsPar          
    jc esImpar
    jmp esPar

esPar:
    mov al, '1'
    mov edx, 10        
    call putchar
    jmp fin

esImpar:
    mov al, '0'
    mov edx, 10        
    call putchar
    jmp fin

fin:
    mov eax, 1
    mov ebx, 0
    int 0x80

EsPar:
mov eax, edx
and eax, 1
shr eax, 1
ret