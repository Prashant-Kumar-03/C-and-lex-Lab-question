/* lex program to count no. of lines spaces and tabs*/
%{
	#include<stdio.h>
	int lc=0, sc=0, tc=0, wc=0, cc=0;
/* lc=lines count, sc=space count, tc=tab count, wc=words count, cc=character count;  */
%}

%%
[\n] {lc++; cc+=yyleng;}
[\t] {tc++; cc+=yyleng;}
[ ] {sc++; cc+=yyleng;}
[^\t\n ]+ {wc++; cc+=yyleng;}
%%

int main()
{
	printf("enter the input: \n");
	yylex();
	printf("No. of lines is %d\n", lc);
	printf("No. of spaces is %d\n", sc);
	printf("No. of tabs is %d\n", tc);
	printf("No. of words is %d\n", wc);
	printf("No. of characters is %d\n", cc);
	return 0;	
}

int yywrap()
{
	return 1;
}