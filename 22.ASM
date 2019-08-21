data segment
   a dw 1220h
   b dw 1330h
   c dw 2 dup(?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov bx,a
      mov ax,b
      mul bx
      mov c,ax
      mov c+2,dx
int 03h
code ends
end start

