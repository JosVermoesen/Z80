10 e$=CHR$(27)+"[":DEF FNa$(x,y)=e$+mid$(str$(x),2)+";"+mid$(str$(y),2)+"H":cls$=e$+"2J"+fna$(1,1):curoff$=e$+"?25l":curon$=e$+"?25h"
11 rev$=e$+"42;30m":norm$=e$+"32;40m"
20 print norm$cls$curoff$kio
30 top$=chr$(201)+string$(78,205)+chr$(187):print fna$(1,1)top$
40 for t=2 to 23:bleft$=chr$(186)+mid$(str$(t),2):print fna$(t,1)bleft$fna$(t,80)chr$(186):next t
50 bot$=chr$(200)+string$(78,205)+chr$(188):print fna$(24,1)bot$
60 print fna$(10,15)"Done!":print fna$(11,15)"Press [R]etry, [K]ey Testing, [E]nd program or [Q]uit Basic"
70 resp$="RKEQ":gosub 20000:goto 20
20000 at$=upper$(inkey$):if at$="" then goto 20000
20005 print fna$(12,15)"You pressed: "at$:if instr(resp$,at$)=0 then 20000
20010 if at$="R" then 20020 else if at$="E" then 20030 else if at$="Q" then 20040 else if at$="K" then 20050
20020 RETURN
20030 print cls$curon$:end
20040 print cls$curon$:system
20050 option run:gosub 30000:option stop:goto 20
30000 in$=inkey$:if in$="" then 30000 else if upper$(in$)="Q" then return
30005 print fna$(13,15)"Length of this key: ";:print len(in$)
30010 print fna$(14,15)"ASCII value of this key: ";:print asc(in$)
30020 print fna$(15,15)"Press [Q]uit to stop key testing"
30030 goto 30000
