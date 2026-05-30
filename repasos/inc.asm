inc:
push ebp
mov ebp, esp

mov eax, [ebp+8]
inc byte[eax]

pop ebp
ret  