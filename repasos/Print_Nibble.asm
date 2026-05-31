;librerias

section .text
global Print_Nibble

Print_Nibble:
mov al, 10011111b
mov cl, 4

.loop:
shr al, 
adc al, 0
call putchar
dec cl
jnz .loop
ret