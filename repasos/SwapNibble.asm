section .text
global SwapNibble

SwapNibble:
push ebp
mov ebp, esp
mov eax, [esp+8]
mov cl, [esp+12]
call getNibble
mov cl, [esp+16]
call putNibble
mov edx, eax
mov eax, [esp+8]
mov cl, [esp+16]
call getNibble
mov eax, edx
mov cl, [esp+12]
call putNibble
pop ebp
ret

getNibble:
shl cl, 2
ror eax, cl
mov dl, al
and al, 0x0f
rol eax, cl
ret

putNibble:
shl cl, 2
ror eax, cl
and al, 0xf0
or al, dl
rol eax, cl
ret