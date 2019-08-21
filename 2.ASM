data segment
a db 04
c dw (?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        mov ah,00h
        mov al,a
        mul al
        mov c,ax
int 03h
code ends
end start
