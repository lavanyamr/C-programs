data segment
msg1 db 10,13, 'enter divident:$'
msg2 db 10,13, 'enter divisor:$'
msg3 db 10,13, 'reminder is:$'
msg4 db 10,13, 'quotientis:$'
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
        mov bh,al
        sub bh,30h
        mov ah,01h
        int 21h
        mov bl,al
        sub bl,30h
        lea dx,msg2
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        sub al,30h
        mov cl,al
        mov ax,bx
        aad
        div cl
        mov cx,ax
        add cx,3030h
        mov bx,ax
        lea dx,msg3
        mov ah,09h
        int 21h
        mov dl,ch
        mov ah,02h
        int 21h
        lea dx,msg4
        mov ah,09h
        int 21h
        mov dl,cl
        mov ah,02h
        int 21h
int 03h
code ends
end start

