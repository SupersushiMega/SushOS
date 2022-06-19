;start of print function
;function input is stored in bx and represents the start address of the string
;IMPORTANT: STRING MUST HAVE HAVE THE VALUE(NOT CHARACTER) 0 AT THE END TO INDICATE THE END OF THE STRING.
;Example of a correct definition:
;db "hello Test Test",0
print:
	pusha	;store current state of registers
	
;loop for printing the string
printLoop:
	;get current character from address in bx
	mov al, [bx]
	
	;check if current character is 0(end of string)
	cmp al, 0	;compare current character with 0
	je endPrint	;jump out of loop if current character is equal to 0
	
	;print current character
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	int 0x10	;raise general interrupt for video services
	add bx, 1	;go to next character
	
	;jump to start of loop
	jmp printLoop

endPrint:
	popa	;recover register states from stack
	ret	;exit function
	
;function for going to the next line
print_NL:
	pusha
	
	;newline
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 0x0a	;write newline to al
	int 0x10	;raise general interrupt for video services
	
	;cariage return
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 0x0d	;write cariage return to al
	int 0x10	;raise general interrupt for video services
	
	popa
	ret