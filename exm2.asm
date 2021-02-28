[org 0x100]

mov ax, [var1]
mov bx, [var2]
add ax, bx
mov bx, [var3]
add [var4], ax

mov ax,0x4c00
int 0x21

var1: dw 5
var2: dw 10
var3: dw 15
var4: dw 0