data segment
   msg1 db 10,13, 'enter two digit dividend:$'
   msg2 db 10,13, 'enter one digit diviser:$'
   rem db 10,13, 'reminder is:$'
   quot db 10,13, 'quotient is:$'
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
      lea dx,rem
      mov ah,09h
      int 21h
      mov dl,ch
      mov ah,02h
      int 21h
      lea dx,quot
      mov ah,09h
      int 21h
      mov dl,cl
      mov ah,02h
      int 21h
int 03h
code ends
end start

