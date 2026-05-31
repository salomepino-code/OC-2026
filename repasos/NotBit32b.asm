section .text
global NotBit32b

;MI FORMA
NotBit32b:
push ebp 
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]

ror eax, cl
xor al, 0001b
rol eax, ecx
pop ebp 
ret

;OTRA FORMA
mov edx, 1
shl dl, cl
xor eax, edx
