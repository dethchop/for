%{
#include "y.tab.h"
%}

%%
"for"	{return FOR;}
[A-Za-z][A-Za-z0-9]*	{return ID;}
"="	{return '=';}
[0-9]+	{return NUM;}
"<"|">"|"<="|">="|"=="|"!="	{return RELOP;}
")"	{return ')';}
"("	{return '(';}
";"	{return ';';}
"++"	{return INC;}

[ \t\n]	;
.	{return yytext[0];}

%%

int yywrap()
{
	return 1;
}

