;librerias

section .text
global Print_Nibble

Print_Nibble:
mov al, 10011111b
mov dl, al
rol dl, 4
mov cl, 4

.loop:
shl dl,1
jc .uno
jmp .cero

.uno:
mov al, '1'
call putchar
dec cl
jnz .loop
ret

.cero:
mov al, '0'
call putchar
dec cl
jnz .loop
ret
