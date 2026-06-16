section .text
global XchgBits

XchgBits:
push ebp
mov ebp, esp
mov eax, [ebp+8]
mov cl, [ebp+12]
call getBit
mov cl, [ebp+16]
call putBit

mov edx, eax
mov eax, [ebp+8]
mov cl, [ebp+16]
call getBit
mov eax, edx
mov cl, [ebp+12]
call putBit
pop ebp
ret 

;========= OTRA FORMA =======
mov eax, [ebp+8]

mov cl, [ebp+12]
call getBit
mov dl, ch

mov cl, [ebp+16]
call getBit
mov dh, ch

mov ch, dl
mov cl[ebp+16]
call putBit

mov ch, dh
mov cl, [ebp+12]
call putBit

;=============================
getBit:
ror eax, cl
mov ch, al 
and ch, 00000001b
rol eax, cl
ret

putBit:
ror eax, cl
and al, 11111110b
or al, ch
rol eax, cl
ret