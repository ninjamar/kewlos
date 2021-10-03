print_str:
	lodsb
	cmp al,0x00
	je .done
	
	mov ah,0x0E
	int 0x10
	
	jmp print_str

.done:
	ret
