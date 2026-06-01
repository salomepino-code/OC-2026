section .text
global XchgBits

XchgBits:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
call getBit
mov bl, [ebp+16]
call putBit
mov edx, eax
mov eax, [ebp+8]
mov cl,[ebp+16]
call getBit
mov bl, [ebp+12]
call putBit

pop ebp
ret

getBit:
ror eax, cl
mov dl, al
and dl, 00000001b 
rol eax, cl
ret

putBit:
ror eax, cl
and al, 11111110b
or al, dl
rol eax, cl
ret