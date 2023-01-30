ORG &8000	;recommended address
LD A,4		;load 4 into register A
INC A		;increment by one => 5
INC A		;same => 6
LD B,10		;load 10 into register B
ADD B		;add B to A, so A is now 16
LD (&7000),A	;load A to the destination address 7000
RET