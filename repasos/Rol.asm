section .text
global rol

rol:
push ebp
mov ebp, esp
push ebx
mov edx, [ebp+8]
mov ebx, [ebp+12]
mov ecx, [ebp+16]

;==== OPCIONAL ====

.reducir:
cmp ecx, ebx
jb .repetir
sub ecx, ebx
jmp .reducir

;==================

.repetir:
shl edx, 1
adc edx, 0
dec ecx
cmp ecx, 0
jnz .repetir

pop ebx
pop ebp
ret