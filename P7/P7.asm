%include "../LIB/pc_iox.inc"

section .data
    N dw 0

section .text
    global _start

_start:

;inciso a
mov eax, 0x22446688
ROL eax, 1

extern pBin_dw
mov al, 10
call putchar

;inciso b
mov cx, 0x3F48
sal cx, 

extern pBin_dw
mov al, 10
call putchar



; fin del programa
    mov eax, 1
    int 0x80