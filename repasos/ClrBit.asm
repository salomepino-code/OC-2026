section .text
global ClrBit

ClrBit:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
mov edx, 1
rol edx, cl
not edx
and eax, edx
pop ebp
ret

;====== OTRA FORMA ======
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
ror eax, cl
and al, 11111110b
rol eax, cl
pop ebp
ret
