PrintStr:
.loop:
cmp byte[ebx], 0
jz .fin
mov al, byte[ebx]
call putchar
inc ebx
jmp .loop

.fin:
ret

;===================

InvertirStr:
mov esi, ebx
mov edi, ebx

.encontrarFin:
cmp byte[edi], 0
jz .encontrado
inc edi
jmp .encontrarFin

.encontrado:
dec edi

.intercambiar:
cmp esi, edi
jae .fin
mov al, byte[edi]
mov ah, byte[esi]
mov byte[esi], ah
mov byte[esi], al
inc esi
dec edi
jmp .intercambiar

.fin:
ret

;====================

PrintStrX:
push ebp
mov ebp, esp
push ebx
push edi

mov ebx, [ebp+8]
mov cl, [ebp+12]

mov edi, ebx
cmp cl, 1
jz .normal
cmp cl, 0
jz .buscarFin

.normal:
mov al, byte[ebx]
call putchar
inc ebx
cmp byte[ebx], 0
jz .fin
jmp .normal

.buscarFin:
cmp byte[edi], 0
jz .inverso
inc edi
jmp .buscarFin

.inverso:
dec edi
mov al, byte[edi]
call putchar
cmp edi, ebx
je .fin
jmp .inverso

.fin:
pop edi
pop ebx
pop ebp
ret

;====================
strncpy:
push ebp
mov ebp, esp
push ebx
push esi

mov ebx, [ebp+8]
mov esi, [ebp+12]
mov ecx, [ebp+16]
mov edx, 0

.loop:
cmp byte[esi], 0
jz .acomodar
mov al, byte[esi]
mov byte[ebx], al
inc ebx
inc esi
inc edx
cmp edx, ecx
jz .fin
jmp .loop

.acomodar:
cmp edx, ecx
jz .fin
mov byte[ebx], 0
inc ebx
inc edx
jmp .acomodar

.fin:
pop esi
pop ebx
pop ebp
ret
