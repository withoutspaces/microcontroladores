;
; while_loop.asm
;
; Created: 13/11/2021 19:28:16
; Author : daniel

.def m = r16
.def n = r17
.def a = r18
.def b = r19

ldi m, $5
ldi n, $A
ldi a, $5
ldi b, $A

while: 
	cp m, n
	brsh end_while
	cp a, b
	brsh end_while
	inc a
	inc m
	rjmp while
end_while:
	rjmp end_while
