ShiftX:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
cmp cl, 1
jz .derecha
jmp .izquierda

.derecha:
shr eax, 1
jmp .fin

.izquierda:
shl eax, 1
jmp.fin

.fin:
pop ebp
ret