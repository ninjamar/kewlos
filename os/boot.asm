;this is 16 bit mode BIOS
[ORG 0x7C00]

main:
	mov si,msg
	call print_str
	
	jmp $


%include 'printlib.asm'
msg db "KewlOS,0
times 510-($-$$) db 0
dw 0xaa55
