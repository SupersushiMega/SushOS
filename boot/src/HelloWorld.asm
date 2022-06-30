[org 0x7c00] ;memory offset

mov bx, antiDupString	;print anti duplication string (see definition of string for details)
call print

mov bx, OS_Version
call print

call print_NL

mov bx, msg
call print

call print_NL

mov bl, 0x7d
call printHex

call print_NL

mov bl, 0xa0
call printHex

call print_NL

mov bl, 0xff
call printHex

call print_NL

mov bl, 0x00
call printHex

; Imfinite loop
jmp $

%include "string.asm"

;when testing on pysical hardware some characters were printet multiple times after a specific amount of printed characters.
;this will print spaces before to trigger the duplication before the first actual character is printet
antiDupString:
	db '              ',0x0d,0

OS_Version:
	db "SushOS V0.0001",0
	
msg:
	db "Hello World",0
	
;fill with 510 zeros minus the size of previous code
times 510-($-$$) db 0

;magic number to indicate bootsector
dw 0xaa55