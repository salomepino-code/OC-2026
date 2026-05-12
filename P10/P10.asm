section .text
global suma
global mystrlen
global getBit


; int suma(int a, int b)

suma:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    add eax, [ebp + 12]
    pop ebp
    ret


; int mystrlen(char *str)

mystrlen:
    push ebp
    mov ebp, esp
    mov ecx, [ebp + 8]
    xor eax, eax

.loop:
    cmp byte [ecx + eax], 0
    je  .done
    inc eax
    jmp .loop

.done:
    pop ebp
    ret


; int getBit(int value, int numbit)

getBit:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
    mov ecx, [ebp + 12]
    shr eax, cl
    and eax, 1
    pop ebp
    ret

section .note.GNU-stack noalloc noexec nowrite progbits