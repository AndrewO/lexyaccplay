LEX = lex
CC = cc

lineno: lineno.yy.c
	$(CC) lineno.yy.c -Wall -g -o lineno -ll -lm
lineno.yy.o: lineno.yy.c
lineno.yy.c: lineno.l
	$(LEX) -o lineno.yy.c lineno.l

wc:: wc.yy.c
	$(CC) wc.yy.c -Wall -g -o wc -ll -lm
wc.yy.o: wc.yy.c
wc.yy.c: wc.l
	$(LEX) -o wc.yy.c wc.l

clean:
	-rm -rf *.o *.yy.c *.tab.* lineno wc *.dSYM
