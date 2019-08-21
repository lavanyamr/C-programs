data segment
      a dw 7521h
      b dw 9751h
      c dw 2 dup(?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov ax,a
      sub ax,b
      mov c,ax
      mov bx,0000h
      sbb bx,0000h
      mov c+2,bx
int 03h
code ends
end start
