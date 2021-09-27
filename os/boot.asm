;this is 16 bit mode BIOS

%include 'utils.asm' ;use the utils file

mov dx,0 ; initalize main loop counter
main: ;main loop


	cmp dx,1 ;check if dx = 1
	jne main ; if !dx = 1 jump to main
	add dx,1 ; increase counter
	call text ; get value from last compare and call if true
	
times 510-($-$$) db 0 ; fill rest of boot with '0'


dw 0xaa55 ; some sort of magic number
