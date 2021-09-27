;this is 16 bit mode BIOS

hello: ;this function writes hello to the screen
	mov ah, 0x0e ;set ah to tty mode
	mov al,'k'
	int 0x10
	mov al,'e'
	int 0x10
	mov al,'w'
	int 0x10
	mov al,'l'
	int 0x10
	mov al,'O'
	int 0x10
	mov al,'S'
	
	mov al,'\n'
	int 0x10
	
	int 0x10
	mov al,'H' ; set al to 'H'
	int 0x10 ;call ah and process the data stored in al
	mov al,'e'
	int 0x10
	mov al,'l'
	int 0x10
	int 0x10
	mov al,'o'
	int 0x10
	mov al,' '
	int 0x10
	mov al,'W'
	int 0x10
	mov al,'o'
	int 0x10
	mov al,'r'
	int 0x10
	mov al,'l'
	int 0x10
	mov al,'d'
	int 0x10
	mov al,'!'
	int 0x10

mov dx,0 ; initalize main loop counter
main: ;main loop


	cmp dx,1 ;check if dx = 1
	jne main ; if !dx = 1 jump to main
	add dx,1 ; increase counter
	call hello ; get value from last compare and call if true
	
times 510-($-$$) db 0 ; fill rest of boot with '0'


dw 0xaa55 ; some sort of magic number
