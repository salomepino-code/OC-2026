%include "../LIB/pc_io.inc"

section .data
N, equ 5
msg db "numero no valido", 0

section .bss

section .text

;INCISO A 
mov ecx, 0
mov ebx, 0

.Leer:
call getche
cmp al, '0'
jb error
cmp al '9'
ja error

sub al, '0'
movzx ebx, al
add ecx, 1
cmp al, N 
ja fin
loop .leer

;INCISO B 


error:
mov edx, msg
call puts
jmp fin

fin:
mov eax, 1
mov ebx, 0
int 0x80

