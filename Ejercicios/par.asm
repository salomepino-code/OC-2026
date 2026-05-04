%include "../LIB/pc_io.inc"

section .data

section .bss

section .text
global _start

_start:

mov edx, 00000110
call EsPar               ;  Determina si EDX contiene un valor par retornando AL = 1
jc es0                   ;   de lo contrario retorna AL=0.    
jmp es1                                            

es1:
mov al, '1'
call putchar
jmp fin

es0:
mov al, '0'
call putchar
jmp fin

fin:
mov eax, 1
mov ebx, 0
int 0x80

EsPar:
mov al, ebx
mov bl, al
shr bl, 1

ret
