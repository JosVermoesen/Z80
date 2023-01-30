; AMSTRAD CPC
 .ORG 8000H	  ; Recommended address for the CPC

 LD A,4	      ; Load 4 into register A
 INC A		  ; Increment by one => 5
 INC A		  ; Same => 6
 LD B,10	  ; Load 10 into register B
 ADD A,B	  ; Add B to A, so A is now 16
 LD (7000H),A ; Load A to destination address 7000

 HALT