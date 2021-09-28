; this file contains printing utilities


print_char:
	mov ah,	0x0E
	int 0x10

print_str:
	
	lodsd
	
	cmp al,0x00
	je .done
	
	call print_char
	
	jmp print_str

.done:
	ret
