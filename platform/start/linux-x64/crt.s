.text
.globl _start
.intel_syntax noprefix

_start:
  call main
  mov rdi, rax
  mov rax, 60
  syscall
