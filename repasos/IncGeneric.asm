section .text
global incGeneric

incGeneric:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov ecx, [ebp+12]
cmp ecx, 1
jz .byte
cmp ecx, 2
jz .word
cmp ecx, 4
jz .dword

.byte:
inc byte[eax]
jmp .fin

.word:
inc word[eax]
jmp .fin

.dword:
inc dword[eax]
jmp .fin

.fin:
pop ebp 
ret


