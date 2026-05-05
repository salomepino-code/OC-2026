%include "../LIB/pc_io.inc"

section .text
global _start

_start:

mov eax, 6 

esPrimo:
cmp eax, 2
jb noPrimo
cmp eax, 2
je siPrimo
test eax, 1
jz noPrimo

mov ebx, 2
mov ecx, eax

loop:
cmp ebx, ecx
je siPrimo
xor edx, edx
mov eax, ecx
div ebx
cmp edx, 0
jz noPrimo
inc ebx
jmp loop

noPrimo:
mov al, '0'
mov edx, 10        
call putchar
jmp fin

siPrimo:
mov al, '1'
mov edx, 10        
call putchar
jmp fin

fin:
mov eax, 1
mov ebx, 0
int 0x80

 