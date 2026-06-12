;============
; Ejercicio1
;============

mov eax, 0
mov ecx, 0

.while:
cmp eax, 10
jle .inc
sub eax, 3
inc ecx
cmp ecx, 5
je .fin
jmp .while

.inc:
add eax, ecx
inc ecx
cmp ecx, 5
je .fin
jmp .while

.fin:
;salida

;============
; Ejercicio2
;============
mov ebx, 10
mov ecx, 3
mov eax, 0

.loop:
test ebx, 1
jnz .fin
add eax, ecx
.fin:
dec ebx
cmp ebx, 0
jg .loop



