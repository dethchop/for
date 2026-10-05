%{
#include <stdio.h>

int yylex();
void yyerror(char *s);

%}

%token FOR INC ID NUM RELOP	

%%

start: FOR '(' assign ';' condition ';' increment ')' 
{
	printf("Valid FOR argument\n");
}
;

assign : ID '=' NUM
;

condition : ID RELOP NUM
;

increment : ID INC
;

%%

int main()
{
	printf("Enter FOR statement:\n");
	yyparse();
	return 0;
}
void yyerror(char *s)
{
	printf("Invalid FOR Statement\n");
}


