str_cnt_chr:
push ebp
mov ebp, esp
push ebx

mov ebx, [ebp+8]
mov edx, [ebp+12]
mov eax, 0

.loop:
cmp byte[ebx], 0
je .fin
cmp byte[ebx], dl
je .inc
inc ebx
jmp .loop

.inc:
inc eax
inc ebx
jmp .loop

.fin:
pop ebx
pop ebp
ret