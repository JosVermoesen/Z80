;Content    Labels, Loop, Conditions, LDIR, Constants

SCRSIZE EQU &4000  ;size of CPC screen
SCRSTART EQU &C000 ;start of the CPC screen

 ;EQU defines a symbol - thisê isê aê constant that the assembler will remember, 
 ;it allows us to define something once, and use it in many places
 ;if we change our mind later, weê onlyê need to change it in this one place
 ;not all the places we used it!

ORG &8100

LD HL,SCRSTART   ;when we use LDIR, HL is the source memory address
                 ;as a test, we're going to copy from the start of memory

LD DE,SCRSTART+1 ;when we use LDIR, DE is the destination address 
                 ;we're setting it to the start of the CPC screen memory

LD BC,SCRSIZE-1  ;when we use LDIR, BC is the bytecount 
                 ;We're going to copy a full screen of data

LD (HL),0

LDIR ;LDIR copies a byte from (HL) to (DE), then increments HL and DE,
     ;finally it decreases BC, and repeats until BC=0
     ;LDIR stands for LoaD Increment Repeat!
     ;put a breakpoint on ldir,ê andê seeê what LDIR is really doing!
             
RET
;-------

SCREENBYTE_CYAN EQU %00001111

ORG &8200

LD A,SCREENBYTE_CYAN
 ;Set the accumulator to binary number %00001111 (15 in decimal)

FILL_LOOP:
 ;This is a label - it's like a symbol that points to position in code
 ;the compiler will remember where this code is, so we can use it for jumps or calls

 ;Our code started at &8200, and since the line above takes 2 bytes 
 ;'FillAgain' will equal &8202!
 
 ;The compiler puts the byte memory location into our jump statement automatically
 ;so we don't need to worry about it!

LD HL,SCRSTART   ;these are the same as the previous example
LD DE,SCRSTART+1
LD BC,SCRSIZE-1

LD (HL),A        ;this time we fill the bytes with A instead of zero

LDIR             ;Fill the range (screen)

DEC A            ;decrease A by 1

CP 255           ;comparing, when A goes below zero, it wraps around to 255 

JP NZ, FILL_LOOP
 ;Z80 has a set of flags (Z for 0, NZ for !0, C for carry and NC for !carry

 ;A compare with a jump is effectively a loop
 ;in comparison with BASIC IF A <> 255 THEN GOTO FILL_LOOP

 ;the Z flag means Zero, but when we're doing a comparison it means
 ;"Equals" or "Zero difference"
 
 ;it's weird, but that's because CP # 'pretends' to subtract # ... and
 ;sets the flags as if it had.

 ;if A=255, then subtracting 255 would equal zero - but of course CP
 ;doesn't really change A

 ;NZ has the effect of  Not Equals (<> or !=) (NonZero difference)
 ;The C flag is Carry, and NC is NoCarry...

RET