; this file contains printing utilities


print_char:
	mov	ah,	0x0E
	int 0x10

print_str:
	push ax
	push si
	call .loop
	
.loop
	lodsd
	
	cmp al,0
	je .done
	
	call print_char
	
	jmp .loop

.done:
	ret
