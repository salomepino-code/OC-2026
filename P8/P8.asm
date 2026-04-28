%include "../LIB/pc_io.inc"

section .data
    msg  db "caracter menor a 5", 0
    msg2 db "caracter es numero", 0
    msg3 db "caracter es letra", 0
    msg4 db "Datos capturados", 0

section .bss
    array resb 10

section .text
    global _start

_start:

;INCISO A
leerA:
    call getche
    cmp al, '0'     
    jb leerA         
    cmp al, '9'
    ja leerA         
    cmp al, '5'
    jae incisoB
    mov edx, msg
    call puts

;INCISO B
incisoB:
leerB:
    call getche
    cmp al, '0'
    jb leerB
    cmp al, '9'
    jbe finNumero
    cmp al, 'A'
    jb leerB
    cmp al, 'Z'
    jbe finLetra
    jmp leerB

finNumero:
    mov edx, msg2
    call puts
    jmp incisoC      

finLetra:
    mov edx, msg3
    call puts

;INCISO C
incisoC:             
    mov cx, 5
    mov bx, 1

filaC:
    cmp bx, cx
    ja incisoD
    mov dx, bx

asteriscoC:
    mov al, '*'
    call putchar
    dec dx
    jnz asteriscoC
    mov al, 10
    call putchar
    inc bx
    jmp filaC

;INCISO D
incisoD:
    mov ecx, 10
    mov edi, array

capturar:
    call getche
    mov [edi], al
    inc edi
    loop capturar

    mov edx, msg4
    call puts
    mov al, 10
    call putchar

    mov ecx, 10
    mov esi, array

mostrar:
    mov al, [esi]
    call putchar
    mov al, 10
    call putchar
    inc esi
    loop mostrar

    mov eax, 1
    mov ebx, 0
    int 0x80




 
