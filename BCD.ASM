data segment
   b db 64h
   c db (?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov al,b
      mov bl,al
      and bl,0f0h
      mov cl,04h
      ror al,cl
      mov bh,0ah
      mul bh
      add al,bl
      mov c,al
int 03h
code ends
end start
