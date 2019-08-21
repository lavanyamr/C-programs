data segment
stg1 db 'sdmit'
cnt1 equ $-stg1
stg2 db 'ujire'
cnt2 equ $-stg2
msg1 db 'same $'
msg2 db 'not same $'
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
       mov ds,ax
       mov es,ax
       mov cl,cnt1
       mov bl,cnt2
       cmp cl,bl
       jz found
       lea dx,msg2
       jmp last
found:lea si,stg1
      lea di,stg2
      mov cx,6
      cld     
      repz cmpsb
      jz same
      lea dx,msg2
      jmp last
same:lea dx,msg1
last:mov ah,09h
int 21h
int 03h
code ends
end start

