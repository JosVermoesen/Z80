ORG &8000  ;start of program

 LD A, "H"
 RST 16

 RET


ORG &8100

LD HL,MESSAGE
 ;load message into HL
CALL PRINT_STRING
 ;print message

RET
 ;return to firmware

PRINT_STRING:
 LD A,(HL)
  ;load one by one character from message
 CP 255
  ;check for end of message
 RET Z
  ;return if end of message
 INC HL
  ;increment message pointer
 CALL PRINT_CHAR
  ;print each character
 JR PRINT_STRING
  ;repeat until end of message

MESSAGE: DB 'Hello World 2022!',255
 ;message to print

NEW_LINE:
 LD A,13
  ;load newline
 CALL PRINT_CHAR
  ;print newline
 LD A,10
  ;load line feed
 JP PRINT_CHAR
  ;print line feed