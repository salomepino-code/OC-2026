section .text
global strlen
global str_mid
global clrBit

strlen:
    push ebp
    mov  ebp, esp
    push esi
    mov  esi, [ebp + 8]
    mov  ecx, 0
.loop:
    cmp  byte [esi], 0
    jz   .fin
    inc  ecx
    inc  esi
    jmp  .loop
.fin:
    mov  eax, ecx
    pop  esi
    pop  ebp
    ret

str_mid:
    push ebp
    mov  ebp, esp
    push esi
    push edi
    push ebx
    mov  edx, [ebp + 16]
    mov  esi, [ebp + 12]
    add  esi, edx
    mov  edi, [ebp + 8]
    mov  ebx, edx
    mov  ecx, [ebp + 20]
.loop:
    cmp  ebx, ecx
    jae  .fin
    mov  al, [esi]
    mov  [edi], al
    inc  esi
    inc  edi
    inc  ebx
    jmp  .loop
.fin:
    mov  byte [edi], 0
    pop  ebx
    pop  edi
    pop  esi
    pop  ebp
    ret

clrBit:
    push ebp
    mov  ebp, esp
    push ecx
    push edx
    mov  edx, [ebp + 8]
    mov  ecx, [ebp + 12]
    mov  eax, 1
    shl  eax, cl
    not  eax
    and  eax, edx
    pop  edx
    pop  ecx
    pop  ebp
    ret
