
%{
#include<stdio.h>

%}

%%
[0-9]+  {printf("postive and int\n");}
-[0-9]+ {printf("negative and int\n");}
[0-9]*[.][0-9]+ {printf("postive and float\n");}
-[0-9]*[.][0-9]+ {printf("negative and float\n");}
%%

int main()
{
	printf("enter a number: ");
	yylex();
	return 0;
		
}

int yywrap()
{
	return 1;
}
