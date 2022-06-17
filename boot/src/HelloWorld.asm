;reset registers
mov al, 0
mov bl, 0
mov cl, 0
mov dl, 0
mov ah, 0
mov bh, 0
mov ch, 0
mov dh, 0

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 0x0d	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'S'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'u'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 's'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'h'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'O'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'S'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'V'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, '0'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 0x0a	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 0x0d	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'H'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'e'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'l'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'l'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'o'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, ' '	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'W'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'o'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'r'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'l'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

mov ah, 0x0e	;enable tty mode by writing 0x0e into higher part of ax
mov al, 'd'	;write letter to be writen int lower part of register ax
int 0x10	;raise general interrupt for video services

; Imfinite loop
jmp $
	
;fill with 510 zeros minus the size of previous code
times 510-($-$$) db 0

;magic number to indicate bootsector
dw 0xaa55