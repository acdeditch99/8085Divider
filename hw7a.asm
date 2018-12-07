
; This is just a test 8085 assembly program.
; It DIVIDES two 8-bit numbers specified by the user within the program.
; It places the result in register H, AND the quotient in Register L.
;
; CAUTION: Program considers that the Divident is Equal or Larger than the Divisor.
;
; CAUTION: IF DIVISOR IS 0H, THEN PROGRAM SHOULD SET BOTH H AND L TO 0H AND ABORT.
;
;************** write : AARON C. DEDITCH ******************************************
;
	boot	equ	0
	org	100h
;
INIT:	MVI	A, 0FCH ; Initialize:	<A> <- Divident
	MVI	B, 02AH ;		<B> <- Divisor
	JZ	DONE	; Jump to Finish if B = 0
	SUB	B
DIVL:	INR	C
	SUB	B	; Division Loop
	JNC	DIVL	; Check If A is now the Remainder
FNLZ:	ADD	B	
	MOV	H, C	; Finalize:	<H> <- Quotient
	MOV	L, A	;		<L> <- Remainder
;
DONE:	jmp	boot
	end
;
;
;************** write : AARON C. DEDITCH ******************************************
;

