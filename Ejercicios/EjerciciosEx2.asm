%include "../LIB/pc_io.inc"

section .data
cadena  db "hola", 0
section .bss

section .text
global _start

_start:

mov ebx, cadena ; cadena terminada en cero ya definida en .data
call PrintStr

mov eax, 1
mov ebx, 0
int 0x80

PrintStr:

loop:
mov al, [ebx]
cmp al, 0
jz fin
call putchar
inc ebx
jmp loop

fin:
ret

