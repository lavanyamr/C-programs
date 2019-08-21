data segment
     a db 10 dup(13h)
     c db 2 dup(?)
data ends
code segment
assume cs:code,ds:data
start:mov ax,data
      mov ds,ax
      mov cx,9
      lea si,a
      mov bl,00h
      mov al,[si]
    up:add al,[si+1]
      adc bl,00h
      inc si
      loop up
      mov c,al
      mov c+1,bl
int 03h
code ends
end start
