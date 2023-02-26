; AMSTRAD CPC
 .ORG 8000H	  ; Recommended address for the CPC

 LD A,4	      ; Load value 4 into register A (sometimes called acumulator)
 INC A		  ; Increment by one => 5
 INC A		  ; Again => 6
 LD B,10	  ; Load value 10 into register B
 ADD A,B	  ; Add B to A, so A is now 16 (10H)
 LD (7000H),A ; Load value of A to destination address 7000

 HALT