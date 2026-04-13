%include "../LIB/pc_iox.inc"

section .data
    N dw 0

section .text
    global _start

_start:
    ; inciso a)
    mov ebx, 0x5C4B2A60
    add ebx, 0x0021D05E

    mov eax, ebx
    call pHex_dw
    mov al, 10
    call putchar

    ; inciso b)
    push bx
    mov ax, bx
    call pHex_w
    mov al, 10
    call putchar

    ; inciso c)
    mov al, bl
    mov bl, 8
    mul bl
    mov [N], ax

    mov ax, [N]
    call pHex_w
    mov al, 10
    call putchar

    ;inciso d)
    inc word [N]

    mov ax, [N]
    call pHex_w
    mov al, 10
    call putchar

    ; inciso e)
    mov ax, 0xFABE
    mov bl, 0xFF
    div bl 

    ;cociente en al
    call pHex_b
    mov al, 10
    call putchar

    ;residuo en ah
    mov al, ah
    call pHex_b
    mov al, 10
    call putchar

    ;inciso f)
    mov al, ah
    mov ah, 0
    add ax, [N]

    call pHex_w
    mov al, 10
    call putchar

    ; inciso g)
    mov[N], ax
    dec word [N]

    mov ax, [N]
    call pHex_w
    mov al, 10
    call putchar

    pushf
    pop ax
    call pHex_w
    mov al, 10
    call putchar

    ; inciso h)
    pop ax
    pop ax
    call pHex_w
    mov al, 10
    call putchar

    ; fin del programa
    mov eax, 1
    int 0x80  
