section .data
    msg db '0', 0
    msg2 db '1', 0

section .text
    global _start

_start:
    jmp start_loop

start_loop:
    rdtsc                      
    and eax, 1                   

    cmp eax, 0
    je print_0                  


    jmp print_1                 
print_0:
    mov rdi, 1                   
    mov rsi, msg                 
    mov rdx, 1                   
    mov rax, 0x1                
    syscall

    jmp start_loop

print_1:
    mov rdi, 1                  
    mov rsi, msg2                
    mov rdx, 1                  
    mov rax, 0x1                
    syscall

    jmp start_loop
