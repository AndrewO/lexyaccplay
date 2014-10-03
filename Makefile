LEX = lex
CC = cc

lineno: lineno.yy.c
	$(CC) lineno.yy.c -Wall -g -o lineno -ll -lm
lineno.yy.o: lineno.yy.c

lineno.yy.c: lineno.l
	$(LEX) -o lineno.yy.c lineno.l

clean:
	-rm -rf *.o *.yy.c *.tab.* lineno *.dSYM
