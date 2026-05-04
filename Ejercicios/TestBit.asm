%include "../LIB/pc_io.inc"

section .data

section .bss

section .text
global _start

_start:

mov cl, 2                  ;  número del bit a verificar su estado.  
call TestBit               ;  el estado del bit N del registro AL se copia a la bandera de acarreo.  
jc es1                     ;  Una vez regresando la bandera C tiene el valor del bit N de AL.
jmp es0                                          

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

TestBit:
mov al, 0000100b
mov bl, al
shr bl, cl
shr bl, 1

ret
