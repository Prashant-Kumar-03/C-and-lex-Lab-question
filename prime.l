%{
	#include<stdio.h>
	#include<stdlib.h>
	int flag=0,num,j;
%}

%%
[0-9]+ {num=atoi(yytext);}
%%
int main()
{
	printf("enter any number: ");
	yylex();
	if(num==2)
	{
		printf("\nPrime number");
	}
	else if(num==0 || num==1)
	{
		printf("\nNot a prime number");
	}
	else
	{
		for(j=2;j<num;j++)
		{
			if(num%j==0)
			flag=1;
		}
		if(flag==1)
		printf("\nNot a prime number");
		else if(flag==0)
		printf("\nPrime number");
	}
	return 0;
}
int yywrap()
{
	return 1;
}