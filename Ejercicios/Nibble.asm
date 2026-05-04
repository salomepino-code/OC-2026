%include "../LIB/pc_io.inc"

section .data

section .bss

section .text
global _start

_start:

call print_nibble

fin:
mov eax, 1
mov ebx, 0
int 0x80

print_nibble:
mov al, 35h
and al, 0Fh
jmp mostrarDigito

mostrarDigito:
exter pHex_n

ret
