; http://map.grauw.nl/resources/z80instr.php

; LOAD B WITH 12H AND C WITH 78H
; LD B,12H      ; 7 CYCLES
; LD C,78H      ; 7 CYCLES
;               ; 14 CYCLES AND 4 BYTES

; LD BC,1278H   ; 10 CYCLES
;               ; 10 CYCLES AND 3 BYTES

; LD A,0        ; 7
; LD B,A        ; 4
;               ; 11 CYCLES AND 3 BYTES

; XOR A          ; 4
; LD B,A         ; 4
;                ; 8 CYCLES AND 2 BYTES

; LOOP EXAMPLE
 LD B,5         ; 7

; LOOP WITH JUMP
;  DEC B          ; 4
; JP NZ,LOOP     ; 10
                ; 7 + (14 * 5) = 77 CYCLES
                ; 6 BYTES (JP NZ)

; CHECK WITH SCIENTIFIC CALCULATOR
; ENABLE LOGGING IN THE SIMULATOR TO CHECK THIS
; 4MHZ => 19.25�S (1/x OF 4MHZ = 0.2500 * 77)

; CHANGE CLOCK FREQUENCY IN SIMULATOR TO 1.79 AND CHECK AGAIN
; 1.79 4MHZ => 43.0168�S (1/x OF 4MHZ = 0.5586592178... * 77)

; LOOP WITH JUMP RELATIVE
; LOOP
 ; DEC B          ; 4
 ; JR NZ,LOOP     ; 12/7
                ; 7 + (16 * 5) = 82 CYCLES
                ; 5 BYTES (JR NZ)
; 1.79 4MHZ => 45.81�S (1/x OF 4MHZ = 0.5586592178... * 82)

; LOOP WITH DECREMENT JUMP NON ZERO
; IS EVEN FASTER AND TAKES LESS SPACE
LOOP
 DJNZ LOOP      ; 13/8
                ; 7 + (13 * 5) = 67 CYCLES
                ; 4 BYTES (DJNZ)
; 1.79 4MHZ => 37.43�S (1/x OF 4MHZ = 0.5586592178... * 67)

