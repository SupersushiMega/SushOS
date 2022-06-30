;print function
;===========================================================================================================
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
;===========================================================================================================
	
	
;printHex function
;===========================================================================================================
;This function prints the value in the register bl as a hex value

printHex:
	pusha	;store current state of registers
	
	
	;0x
;===========================================================================
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, '0'	;write the char '0' into al to display it at the interrupt 
	int 0x10	;raise general interrupt for video services
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, 'x'	;write the char 'x' into al to display it at the interrupt
	int 0x10	;raise general interrupt for video services
;===========================================================================
	
	
	;high nibble
;===========================================================================
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, bl	;copy lower part of bx into lower part of ax
	shr al, 4	;shift right by 4 bits to move high nibble to low nibble
	and al, 0x0f	;remove high nibble
	cmp al, 0x0a	;compare al with 0x0a to check if a number or a letter is required
	
	jl highPrint	;skip letter offset if lower nibble is less than 0x0a (not a letter)
	add al, ('A'-'9')-1	;add offset to make value of lower nibble point to corresponding letter
	
highPrint:
	add al, '0'	;add offset to make value of lower nibble point to corresponding number
	int 0x10	;raise general interrupt for video services
;===========================================================================
	
	
	;low nibble
;===========================================================================
	mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
	mov al, bl	;copy lower part of bx into lower part of ax
	and al, 0x0f	;remove high nibble
	cmp al, 0x0a	;compare al with 0x0a to check if a number or a letter is required
	
	jl lowPrint	;skip letter offset if lower nibble is less than 0x0a (not a letter)
	add al, ('A'-'9')-1	;add offset to make value of lower nibble point to corresponding letter
	
lowPrint:	
	add al, '0'	;add offset to make value of lower nibble point to corresponding number
	int 0x10	;raise general interrupt for video services
;===========================================================================
	
	popa	;recover register states from stack
	ret	;exit function
;===========================================================================================================
	

;function for going to the next line
;===========================================================================================================
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
;===========================================================================================================