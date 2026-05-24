section .text
global strlen
global mystrlen
global getBit

streln:
mov ecx, 0
mov ebx, eax

loop:
mov eax, [ebx+1]
inc ecx
jz mostrar
jnz loop

mostrar:
mov eax, ecx
ret
