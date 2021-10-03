;this is 16 bit mode BIOS
[ORG 0x7C00]

mov dx,1
main:
	mov si,msg
	call print_str
	
	jmp m2

m2:
	call get_keypress_echo
	jmp m2

%include 'iolib.asm'
msg db "KewlOS",0
times 510-($-$$) db 0
dw 0xaa55
