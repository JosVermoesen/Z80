;'Case' statement, Addition, Subtraction, 'Multiplication' and 'Division',
; Passing data to basic

ORG &8000

LD A,(&9000)
 ;Load A from memory &9000

LD BC,(&9001)
 ;Load BC from &9001... note 16 bit pairs are stored in memory backwards,
 ;so C is read from &9001 and B is read from &9002 !!

 ;We're going to do a 'case' statement, comparing A to 0-3,
 ;jumping depending on value
CP 0
JR Z,MATH_ADD
CP 1
JR Z,MATH_SUB
CP 2
JR Z,MATH_MULT
CP 3
JR Z,MATH_DIV

LD A,0
 ;Default action if user entered a different value
 ;PRO-TIP... XOR A has the same result and is smaller and faster!

SAVE_RESULT:
LD (&9003),A
 ;Save the result back to memory so basic can get it.
RET

MATH_SUB:
LD A,C
SUB B
JR SAVE_RESULT

MATH_ADD:
LD A,C
ADD B
JR SAVE_RESULT

MATH_MULT:
LD A,B
CP 0
 ;See if B=0 we're going to give up if it is
JR Z,SAVE_RESULT
LD A,0
 ;We can use Xor A instead of this command

MATH_MULT_AGAIN:
ADD C
 ;Add C
DJNZ Math_MULT_AGAIN
 ;Decrease B and repeat until B=0
JR SAVE_RESULT

MATH_DIV:
LD A,C
CP 0
 ;we can use or a instead of this command
JR Z,SAVE_RESULT
 ;See if C=0, and give up if it is
LD D,0
 ;We need A for our divide command, so we use D for our result

MATH_DIV_AGAIN:
SUB B
 ;Subtract B from A

INC D
 ;Add one to our count

JP NC,MATH_DIV_AGAIN
 ;Did we go below Zero? the Carry bit will be set,
 ;so if NC is true, we have not and need to repeat

DEC D
 ;We get here when we've gone below zero, because we've gone too far
 ;we need to reduce D by one to get the proper number

LD A,D
JR SAVE_RESULT