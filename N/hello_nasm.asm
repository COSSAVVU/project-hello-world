section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    mov edx, len        ; message length
    mov ecx, hello      ; message to write
    mov ebx, 1          ; file descriptor (stdout)
    mov eax, 4          ; system call number (sys_write)
    int 0x80            ; call kernel

    mov eax, 1          ; system call number (sys_exit)
    int 0x80            ; call kernel

section .data
hello db 'Hello, World!', 0
len equ $ - hello
