data segment
   a db 10h
   b db 16h
   c db 2 dup(?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov bl,a
      mov al,b
      mov ah,00h
      div bl
      mov c,al
      mov c+1,ah
int 03h
code ends
end start
