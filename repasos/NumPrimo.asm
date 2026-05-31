section .text
global _start

_start:

mov eax, 6 
call NumPrimo

NumPrimo:
cmp eax, 2
jb .noPrimo
je .siPrimo
test eax, 1
jz .noPrimo

mov ecx, eax
mov ebx, 2

.loop:
cmp ebx, ecx
jz .siPrimo
mov eax, ecx
xor edx, edx
div ebx
cmp edx, 0
jz .noPrimo
inc ebx

.noPrimo:
mov al, 1
ret

.siPrimo:
mov al, 0
ret




