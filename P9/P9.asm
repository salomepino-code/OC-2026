%include "../LIB/pc_io.inc"
%include "../LIB/pc_iox.inc"

section .data
N equ 5
msg db "numero no valido", 0

section .bss
vector1 resb 10
vector2 resb 10

section .text
global _start

_start:

;INCISO D (main)

mov ebx, vector1
call leerVector

mov ebx, vector2
call leerVector

mov ebx, vector1
mov edx, vector2
call sumar

mov ebx, vector1
call mostrar

fin:
mov eax, 1
mov ebx, 0
int 0x80

;INCISO A 
leerVector:
mov ecx, 0

.leer:
call getche
cmp al, '0'
jb .leer
cmp al, '9'
ja .leer

mov [ebx], al
inc ebx
inc ecx
cmp ecx, N 
jb .leer

ret 

;INCIDO B
mostrar:

mov ecx, 0

.mostrar:
mov al, [ebx]
call pHex_b
mov al,10	
call putchar
inc ebx
inc ecx
cmp ecx, N 
jb .mostrar

ret

;INCIDO C
sumar:

mov ecx, 0

.sumar:
mov al, [ebx]
mov dl, [edx]
add al, dl
mov [ebx], al
inc ebx
inc edx
inc ecx
cmp ecx, N 
jb .sumar

ret



