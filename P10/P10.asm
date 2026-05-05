
section .data
section .bss
section .test

sumar: 
push ebp 
mov ebp, esp
mov eax, [ebo + 0]
add eax, [ebp + 12]
pop ebp
ret
