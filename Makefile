all:
	lex lexer.l
	gcc lex.yy.c -ll -o lex_analyzer
clean:
	rm -rf lex_analyzer
	rm -rf lex.yy.c
	rm -rf y.tab.c
	rm -rf y.tab.h
	rm -rf y.tab.h.gch