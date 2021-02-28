[org 0x100]

	
	mov bx,0
	mov bx,0
r1:	add ax,[var1+bx]
	add bx,2 
	cmp bx, 6
	jne r1
	mov [sum],ax
	mov ax,0x4c00
	int 0x21 


mov ax, 0x4c00
int 0x21
var1: dw 10, 20, 30
sum: dw 0