esPalindromo:
push ebp
mov ebp, esp
mov eax, [ebp+8]
and al, 0x0f
mov edx, [ebp+8]
ror edx, 12
and dl, 0x0f
cmp al, dl
jnz .noPalindromo

mov eax, [ebp+8]
ror eax, 4
and al, 0x0f
mov edx, [ebp+8]
ror edx, 8
and dl, 0x0f
cmp al, dl
jnz .noPalindromo
jmp .siPalindromo

.noPalindromo:
mov al, 0
jmp .fin

.siPalindromo:
mov al, 1

.fin:
pop ebp
ret
