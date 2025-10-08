section .data
    arr dq 5, 12, 8, 15, 20
    len equ 5
    result dq 0

section .text
global _start
_start:
loop_start:
    cmp rcx, len
    je done

    mov rbx, [arr + rcx*8]
    cmp rbx, 10
    jl skip_add

    add rax, rbx

skip_add:
    inc rcx
    jmp loop_start

done:
    mov [result], rax

    mov rax, 60
    xor rdi, rdi
    syscall
