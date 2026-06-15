; void duplicar(uint32_t *dato)

duplicar:
push ebp
mov ebp, esp

mov eax, [ebp+8]
mov edx, [eax]
shl edx, 1
mov [eax], edx

pop ebp
ret