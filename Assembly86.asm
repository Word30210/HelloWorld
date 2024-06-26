section .data
hello_world     db      "Hello, world!", 0x0a
 
        section .text
        global _start
 
_start:
        mov rax, 4
        mov rbx, 1
        mov rcx, hello_world
        mov rdx, 14
        syscall
        mov rax, 1
        mov rbx, 0
        syscall