;
; MostrarBits.asm
;
; Created: 31/10/2021 23:13:48
; Author : daniel
;


.def count = r16
.def temp = r17

ldi temp, $FF
out DDRB, temp
ldi temp, $FE
out DDRD, temp
ldi count, 0

loop:
    in temp, PIND
    add count, temp
    out PORTB, count
    rjmp loop
	
