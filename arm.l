%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
	int count,num1,sum=0,rem,num;
	double p;
%}

%%
[0-9]+ {count+=yyleng;num1=atoi(yytext);}
%%
int main()
{
	printf("enter any number: ");
	yylex();
	num=num1;
	while(num!=0)
	{
		rem=num%10;
		p=pow((double) rem, (double) count);
		sum+=p;
		num=num/10;	
	}
	if(sum==num1)
	{
		printf("Armstrong number");
	}
	else
	{
		printf("Not an armstrong number");
	}
	
	

	
	return 0;
}
int yywrap()
{
	return 1;
}