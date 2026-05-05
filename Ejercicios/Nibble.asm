%include "../LIB/pc_iox.inc"

section .data

section .bss

section .text
global _start

_start:

mov al, 35h
call print_nibble

fin:
mov eax, 1
mov ebx, 0
int 0x80

print_nibble:
and al, 0Fh
jmp mostrarDigito

mostrarDigito:
call pHex_n

ret
