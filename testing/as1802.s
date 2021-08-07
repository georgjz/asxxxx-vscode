; taken from:
; http://www.cosmacelf.com/publications/books/short-course-in-programming.html

    ;  PROGRAM 7.6	-- TV DIGITAL CLOCK
    ;
.module TVDIGICLK

REST:   GHI 0d0	        ; INITIALIZE R1, R2, R3
        PHI 0d1
        PHI 0d2
        PHI 0d3
        LDI INTS        ; R1 = INTERRUPT PC
        PLO 0d1
        LDI 0xFF	    ; R2 = STACK
        PLO 0d2
        LDI MAIN        ; R3 = MAIN PC
        PLO 0d3
        RET	            ; X=0!
        #23	            ; SET X=2, P=3
MAIN:	INP 0d1	        ; TURN ON TV
        BR TEST	        ; DO DIAGNOSTIC

; are mnemonics comments a problem? ghi