%include "../LIB/pc_io.inc"
%include "../LIB/pc_iox.inc"

section .data
N equ 10
msg db "numero no valido", 0

section .bss
vector resb 10

section .text
global _start

_start:

;INCISO A 
mov ecx, 0
mov ebx, vector

leer:
call getche
cmp al, '0'
jb error
cmp al, '9'
ja error

mov [ebx], al
inc ebx
inc ecx
cmp ecx, N 
jb leer
jmp incisoB

incisoB:

mov ecx, 0
mov ebx, vector 

mostrar:
mov al, [ebx]
call pHex_b
mov al,10	; cambio de linea
call putchar
inc ebx
inc ecx
cmp ecx, N 
jb mostrar
jmp fin

;MENSAJE
error:
mov edx, msg
call puts
jmp leer

;SALIR 
fin:
mov eax, 1
mov ebx, 0
int 0x80

