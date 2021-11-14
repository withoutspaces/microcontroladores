;
; Exercícios.asm
;
; Created: 07/11/2021 10:07:01
; Author : danie
;


.cseg
myInitials: .db "DMS", 0

.cseg
ldi ZH, high(myInitials*2)
ldi ZL, low(myInitials*2)
lpm
adiw Z, 1
lpm R1, Z
adiw Z, 1
lpm R2, Z

.dseg	

myInitials2:
.cseg
sts myInitials2, R0
sts myInitials2 + 1, R1
sts myInitials2 + 2, R2



loop:
	rjmp loop