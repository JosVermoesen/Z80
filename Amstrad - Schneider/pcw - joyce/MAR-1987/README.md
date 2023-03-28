# INSTRUCTIES VOOR PCW CP/M BOX EMULATOR

Zie ook: [PDF Scan van handleiding 1987][pdf]

## MAAK EEN 'PROGRAMMA START .DSK' VOOR DRIVE B

- Duidt voor opstart van CP/M BOX voor A: het PCW 8256 [B] CPM PLUS.dsk
  (of een kopij ervan) aan, alsook een blanco CF2DD .DSK voor drive B:
- Zorg zowel voor A: als voor B: dat de optie DUMP aangevinkt staat

- Copiêer met PIP: PIP zelf, SUBMIT, SETKEYS, SETDEF en BASIC naar B:

  A>PIP  
   *b:=a:pip.com
  *b:=a:submit.com
  *b:=a:basic.com
  *b:=a:setkeys.com
  \*b:=a:setdef.com

  ENTER/RETURN om PIP te verlaten

  - PIP is nodig om de bestanden van B: naar M: te kopiëeren later.
  - SUBMIT is nodig om het batch bestand MAR.SUB uit te voeren.
  - BASIC is essentiëel, MAR is een MALLARD BASIC programma.
  - SETKEYS is handig om via functietoets F1 de menu opnieuw te laden.

- Vervang opstart .DSK A: door distributie .DSK kant A
  Tijp in: b:submit 8512a en sluit af met ENTER/RETURN
- Vervang distributie .DSK kant A door .DSK voor kant B
  Tijp in: b:submit 8512b en sluit af met ENTER/RETURN

## DATA .DSK VIRTUELE A: EN B

- VOORZIE EEN BLANCO CF2 VIRTUEEL .DSK BESTAND VOOR DRIVE A:
- VOORZIE EEN BLANCO CF2DD .DSK BESTAND VOOR DRIVE B:

## OPSTART PROGRAMMA

- Start de PCW IN CP/M BOX (CP/M PLUS BOOT) via
  PCW 8256 [B] CPM PLUS.dsk OF EEN KOPIJ ERVAN!
- Breng 'programma start .DSK' in drive b:
- Maak B drive standaard => B: + ENTER/RETURN
- SUBMIT MAR laadt de programmaonderdelen naar drive M:, activeert
  de F1 als sneltoets en zal tot slot het opstartprogramma laden
- Eens het VSOFT aanmeldingsscherm geladen, voorzie zoals gevraagd
  zowel voor a: als voor b: de data dsk's en druk pas daarna V voor
  vervolg!
- Indien data diskettes leeg blijken, kan U een nieuw bedrijf opstarten

## GOED OM WETEN

- Tik kortstondig elke toets op toetsenbord. De emulator kan
  anders de buffer voor toetsaanslagen in MALLARD BASIC niet aan.
  Vooral wanneer U via menu options een en ander gaat uitproberen!
  Tip: verwijder het bestandje config en start cpmbox opnieuw voor
  een verse start met standaard UK QUERTY toetsenbord
- Breng voor een nieuw bedrijf als boekjaar 87 in (boekjaar 1987).
  De administratie is uiteraard niet meer van deze tijd!
  (in Belgische franken, gebruikelijke btw percentages van toen,
  veelvuldig werk met (ketting)printer enz...)
- Bij aanmaak van een nieuw bedrijf voor de blanco diskettes
  zal er een paswoord gevraagd worden. Breng langzaam 6 cijfers in
  (eerste poging voor paswoord) en het programma zal U een hint
  geven voor het echte 6-cijfer paswoord. Schrijf dit op voor later
  of voer dit nummer in binnen de 2 laatste kansen.
  Na 3 kansen wordt het programma verlaten en dient U opnieuw op te
  starten via de programma startdiskette in drive B:
- De MALLARD BASIC programmacode op de distributiediskettes is niet
  beveiligd en kan U vrij raadplegen.

Veel vintage pret met ons MALLARD BASIC boekhoudprogramma!
Jos VERMOESEN

[pdf]: VSOFT-MAR-PCW-1987-NL.pdf
