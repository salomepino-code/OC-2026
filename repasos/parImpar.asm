;librerias

section .text
global _start

_start:

ParImpar:
test eax, 1
jz .esPar
mov al, '1'
mov edx, 10
call putchar

.fin:
mov eax, 1
mov ebx, 0
int 0x80

;(RET si se llama desde arriba)

.esPar:
mov al, '0'
mov edx, 10
call putchar
jmp .fin
; (o RET)