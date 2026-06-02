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

pop ebp
ret

strncpy:
