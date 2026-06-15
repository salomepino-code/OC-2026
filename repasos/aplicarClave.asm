uint32_t aplicarClave(uint32_t dato, uint32_t clave);
Recibe un dato y una clave. Retorna dato XOR clave. Si el resultado es 0, retorna la clave original en su lugar.

aplicarClave:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov edx, [ebp+12]
xor eax, edx
cmp eax, 0
jz .retornaClave
.fin

.retornaClave:
mov eax, edx

.fin:
pop ebp
ret