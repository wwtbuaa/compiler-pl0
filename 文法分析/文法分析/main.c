#include"interpreter.h"

int main()
{
	sprogramme result=parse();
	syntax(result,"main");
	printf("\n\n");
	interpreter();
	return 0;
}