%include "../LIB/pc_io.inc"  

section	.data                                       
msg db "caracter menor a 5", 0
msg2 db "caracter es letra", 1

section	.text
	global _start    

_start:

;INCISO A
leer: 
call getche
cmp al, '0'
jb leer
cmp al, '9'
ja leer
cmp al, '5'
jae finA
mov edx, msg2
call puts

finA: 
mov eax, 1
mov ebx, 0
int 00h

;INCISO B
leerS: 
call getche
cmp al, '0'
jb leerS
cmp al, '9'
ja leerS
cmp al, al
jae finNumero
mov edx, msg
call puts

finNumero: 
mov eax, 1
mov ebx, 1
int 00h



 
