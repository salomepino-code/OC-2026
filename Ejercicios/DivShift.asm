;unsigned int DivShift(unsigned int a, unsigned int b)
DivShift:
push ebp
mov ebp, esp

mov eax, [ebp+8]
mov cl, [ebp+12]

shr eax, cl

pop ebp
ret