PUBLIC _SPOOFER_STUB

.code

_SPOOFER_STUB PROC
pop r11
pop r10
mov rax, [rsp + 24]

mov r10, [rax]
mov[rsp], r10

mov r10, [rax + 8]
mov[rax + 8], r11

mov[rax + 16], rdi
lea rdi, fixup
mov[rax], rdi
mov rdi, rax

jmp r10

fixup :
sub rsp, 16
mov rcx, rdi
mov rdi, [rcx + 16]
jmp QWORD PTR[rcx + 8]
_SPOOFER_STUB ENDP

END