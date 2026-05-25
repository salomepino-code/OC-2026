section .text
global strlen
global copiar
global clrBit

;=========
;INCISO 1 
;=========

strlen:
push ebp
mov ebp, esp

mov edi, [ebp + 8]
mov ecx, 0

.loop:
cmp byte[edi], 0
jz .fin
inc ecx
inc edi
jmp .loop

.fin:
mov eax, ecx
pop ebp
ret

;=========
;INCISO 2 
;=========

copiar:
push ebp
mov ebp, esp

push esi
push edi
push ebx

mov edx, [ebp + 16]
mov esi, [ebp + 12]
add esi, edx
mov edi, [ebp + 8]
mov ebx, edx
mov ecx, [ebp + 20]

.loop
cmp ebx, ecx
jae .fin
mov al, [esi]
mov [edi], al
inc esi
inc edi
inc ebx 
jmp .loop

.fin:
mov byte[edi], 0

pop ebx
pop edi
pop esi
pop ebp 
ret

;=========
;INCISO 3 
;=========

clrBit:
push ebp
mov ebp, esp

push ecx
push edx

mov edx, [ebp + 8]
mov al, [ebp + 12]

mov eax, 1
shl eax, cl
not eax
and edx, eax

pop edx
pop ecx

pop ebd
ret

