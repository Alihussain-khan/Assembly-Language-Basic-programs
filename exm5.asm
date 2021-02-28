[org 0x100]
jmp start
array: dw 60, 55, 45, 50, 40, 35, 25, 30, 10, 0
change: db 0
start: mov bx, 0
	mov byte [change], 0
lup:    mov ax, [array+bx]
	cmp ax,[array+bx+2]
	jbe nochange
	mov dx,[array+bx+2]
	mov [array+bx], dx
	mov byte [change],1
noswap: add bx,2
	cmp bx,18
	jne lup
	cmp byte [change], 1
	je start
mov ax,0x4c00
int 0x21