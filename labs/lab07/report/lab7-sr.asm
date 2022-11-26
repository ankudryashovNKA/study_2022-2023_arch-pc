%include 'in_out.asm'

SECTION .data
msg: DB 'Введите x для функции f(x) = (x/2 + 8)*3: ',0
rem: DB 'Результат: ',0

SECTION .bss
x:   RESB 80

SECTION .text
GLOBAL _start

 _start:
 mov eax,msg
 call sprint
 
 mov ecx,x
 mov edx,80
 call sread
 
 mov eax,x
 call atoi
 
 xor edx,edx
 mov ebx,2
 div ebx
 
 add eax,8
 mov ebx,3
 mul ebx
 
 mov edi,eax
 mov eax,rem
 call sprint
 
 mov eax,edi
 call iprintLF
 call quit