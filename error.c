#include"error.h"

int err(int n){
	switch(n){
	case 1:
		printf("There is nochar in the charcon!\n");
		break;
	case 2:
		printf("There is more than one char in the charcon!\n");
		break;
	case 3:
		printf("The string has not been completed!\n");
		break;
	case 4:
		printf("Could not find the symbol table!\n");
		break;
	case 5:
		printf("The variable has been defined!\n");
		break;
	case 6:
		printf("The variable could not been found!\n");
		break;
	case 7:
		printf("A const is assigned!\n");
		break;
	case 8:
		printf("The variable is not an array!\n");
		break;
	case 9:
		printf("The number of parameters is not right!\n");
		break;
	case 10:
		printf("The parameter is not a varible!\n");
		break;
	}
	while(1)
		;
	return 0;
}