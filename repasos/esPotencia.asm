esPotenciaDe2(uint32_t n)
Recibe n en EAX, retorna 1 en AL si n es potencia de 2, 0 si no.
Pista: una potencia de 2 tiene exactamente un bit en 1. Hay un truco con AND que lo resuelve en 2 instrucciones.

esPotenciaDe2:
push ebp 
mov ebp, esp
push ebx
mov eax, [ebp+8]
mov ebx, 2

.loop:
xor edx, edx
div ebx
cmp edx, 0
jnz .noEs
cmp eax, 1
jle .uno
jmp .loop

.noEs:
mov al, 0
jmp .fin

.uno:
mov al, 1
.fin:
pop ebp
ret