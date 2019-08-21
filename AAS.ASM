data segment
msg1 db 'first num:$'
msg2 db 'second num:$'
msg3 db'difference is:$'
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        lea dx,msg1
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov bl,al
        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        mov ah,00h
        sub al,bl
        aas
        add ax,3030h
        mov bx,ax
        lea dx,msg3
        mov ah,09h
        int 21h
        mov dl,bh
        mov ah,02h
        int 21h
        mov dl,bl
        mov ah,02h
        int 21h
int 03h
code ends
end start

