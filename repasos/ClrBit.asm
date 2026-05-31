section .text
global ClrBit

ClrBit:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
mov edx, 0
rol edx, cl
not edx
and eax, edx
pop ebp
ret
