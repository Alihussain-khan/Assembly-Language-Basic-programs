[org 0x100]
mov bx, var1
mov ax,[bx]
add bx,2
add ax,[bx]
add bx,2
mov [bx],ax
mov ax,ox4c00
int 0x21
var1: dw 5
dw 10
dw 15
dw 0