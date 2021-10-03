print_str:
	lodsb
	cmp al,0x00
	je .done
	
	mov ah,0x0E
	int 0x10
	
	jmp print_str

.done:
	ret

get_keypress:
	mov ah,0x0
	int 0x16
	ret

get_keypress_echo:
	call get_keypress
	mov si,ah
	call print_str
