%include "../LIB/pc_io.inc"

section .data
cadena  db "hola", 0
section .bss

section .text
global_start

_start:

mov ebx, <cadena> ; cadena terminada en cero ya definida en .data
call PrintStr

PrintStr:
call putchar 
ret

mov eax, 1
mov ebx, 0
int 0x80
