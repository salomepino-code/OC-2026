void intercambiar(uint32_t *a, uint32_t *b);
Intercambia los valores en las dos direcciones sin usar una variable temporal en memoria, solo registros.

intercambiar:
push ebp
mov ebp, esp
push ebx
mov ebx, [ebp+8]
mov eax, [ebx]
mov ecx, [ebp+12]
mov edx, [ecx]
mov [ebx], edx
mov [ecx], eax
pop ebp
ret