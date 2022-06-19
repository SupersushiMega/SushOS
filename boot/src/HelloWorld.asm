%include "path"
[org 0x7c00] ;memory offset

	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'a'	;write newline to al
	int 0x10	;raise general interrupt for video services

mov bx, antiDupString	;print anti duplication string (see definition of string for details)
call print

	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'b'	;write newline to al
	int 0x10	;raise general interrupt for video services

mov bx, OS_Version
call print

	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'c'	;write newline to al
	int 0x10	;raise general interrupt for video services

call print_NL

	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'd'	;write newline to al
	int 0x10	;raise general interrupt for video services

mov bx, msg
call print

	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'e'	;write newline to al
	int 0x10	;raise general interrupt for video services

; Imfinite loop
jmp $

;when testing on pysical hardware some characters were printet multiple times after a specific amount of printed characters.
;this will print spaces before to trigger the duplication before the first actual character is printet
antiDupString:
	db '              ',0x0d,0

OS_Version:
	db "SushOS V0.01",0
	
msg:
	db "Hello World",0
	
;fill with 510 zeros minus the size of previous code
times 510-($-$$) db 0

;magic number to indicate bootsector
dw 0xaa55