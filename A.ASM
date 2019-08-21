data segment
a dw 1515h
b db 0d1h
c dw 2 dup(?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov ax,a
      mov bl,b
      div bl
      mov c,ax
      int 03h
      code ends
      end start
