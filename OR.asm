ORG 0000H
SETB P0.1;CONFIGURE AS INPUT
SETB P0.2;CONFIGURE AS LED
SETB P0.3;CONFIGURE AS INPIUT
LOOP:MOV C,P0.0;MOVING/READING POSTPIN P0.0 TO CARRY BIT
CPL C;COMPLEMENT CARRY BIT
MOV 00H,C;MOVE C BIT TO 00H
MOV C,P0.1;MOVE P0.1 TO C
CPL C;COMPLEMENT C
ORL C,00H;USING OR OPERATION FOR DATA IN C&OOH
CPL C;COMPLEMENT C
MOV P0.2,c;MOVE C TO P0.2(LED)
SJMP LOOP;JUMP TO LABEL LOOP
END
