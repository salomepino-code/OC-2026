%include "../LIB/pbin.o"

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

extern pBin_w
mov al, 10
call putchar


;inciso c
esi, 0x20D685F3
XOR esi, 1

extern pBin_w
mov al, 10
call putchar

;inciso d
push esi

extern pBin_w
mov al, 10
call putchar

;inciso e
mov ch, 0xA7

extern pBin_w
mov al, 10
call putchar






; fin del programa
    mov eax, 1
    mov ebx, 0
    int 0x80