

SwapNibble:
push ebp
mov ebp, esp

mov eax, [ebp+8]
mov cl, [ebp+12]
call getNibble

mov cl, [ebp+16]
call putNibble

mov edx, eax
mov eax, [ebp+8]
mov cl, [ebp+16]
call getNibble

mov eax, edx
mov cl, [ebp+12]
call putNibble

pop ebp
ret

getNibble:
shl cl, 2
ror eax, cl
mov ch, al
and al, 0x0f
rol eax, cl

putNibble:
shl cl, 2
ror eax, cl
and al, 0x0f
or al, ch
rol eax, cl