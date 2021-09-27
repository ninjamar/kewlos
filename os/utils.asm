text: ;this function writes hello to the screen
  mov ah, 0x0e ;set ah to tty mode
	mov al,'k' ;set al to 'H'
	int 0x10 ;call ah and process the data stored in al
	mov al,'e'
	int 0x10
	mov al,'w'
	int 0x10
	mov al,'l'
	int 0x10
	mov al,'O'
	int 0x10
	mov al,'S'
	int 0x10

	mov al,0xa
	int 0x10
	mov al,0xd
	int 0x10
	
	int 0x10
	mov al,'H'
	int 0x10
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
