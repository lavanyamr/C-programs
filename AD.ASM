data segment
src db 0Ah,0Dh,0Bh,0Ch
len equ $-src
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        mov bx,len
        dec bx
     l1:lea si,src
        mov cx,bx

     up:mov al,[si]
        cmp al,[si+1]
        jnc skip
        xchg al,[si+1]
        mov [si],al
       
   skip:inc si
        loop up
        dec bx
        jnz l1
int 03h
code ends
end start
