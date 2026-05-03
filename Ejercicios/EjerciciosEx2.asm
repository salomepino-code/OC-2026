%include "../LIB/pc_io.inc"

section .data
cadena  db "hola", 0
section .bss

section .text
global _start

_start:

mov ebx, cadena ; cadena terminada en cero ya definida en .data
call PrintStr

mov ebx, cadena
call InvertirStr 

mov ebx, cadena         ;  se invierte cadena directamente en su zona de memoria
call PrintStr            ;  se presenta en pantalla odnuM aloH


mov eax, 1
mov ebx, 0
int 0x80

PrintStr:

loop:
mov al, [ebx]
cmp al, 0
jz fin
call putchar
inc ebx
jmp loop

fin:
ret

InvertirStr:

mov esi, ebx
mov edi, ebx

.buscarFin:
cmp byte [edi], 0
jz .encontrado

inc edi
jmp .buscarFin

.encontrado:
dec edi

.intercambiar:
cmp esi, edi
jae .fin

mov al, [esi]
mov dl, [edi]
mov [esi], dl
mov [edi], al
inc esi
dec edi
jmp .intercambiar

.fin:
ret

