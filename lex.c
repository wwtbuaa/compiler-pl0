#include"lex.h"
#include"error.h"

char type[][10]={"const","integer","char","var","array","of",
	"if","then","else","do","while","for","to","by","downto","procedure",
	"function","read","write","call","begin","end"};
char name[][10]={"CONSTTK","INTTK","CHARTK","VARTK","ARRAYTK","OFTK",
	"IFTK","THENTK","ELSETK","DOTK","WHILETK","FORTK","TOTK","BYTK","DOWNTOTK","PROCETK",
	"FUNCTK","READTK","WRITETK","CALLTK","BEGINTK","ENDTK"};
int number=22;

int isdigit(char c)
{
	if(c>='0'&&c<='9')
		return 1;
	else
		return 0;
}

int isalpha(char c)
{
	if((c>='A'&&c<='Z')||(c>='a'&&c<='z'))
		return 1;
	else
		return 0;
}

int ischar(char c)
{
	if(((c>=35)&&(c<=126))||(c==32)||(c==33))
		return 1;
	else
		return 0;
}

int lexical()
{
	char filein[100],str[100],c;
	int i=1,j=0,n=0,error=1;
	FILE *out=fopen("lexical.txt","w");
	printf("Please type in the name of the  file:");
	scanf("%s",filein);
	freopen(filein,"r",stdin);
	while(scanf("%c",&c)!=EOF){
		if(c=='\n'||c==' ')
			continue;
		if(isalpha(c)){
			str[j++]=c;
			while(scanf("%c",&c)!=EOF){
				if(isalpha(c)||isdigit(c))
					str[j++]=c;
				else{
					str[j]='\0';
					for(n=0;n<22;n++)
						if(strcmp(str,type[n])==0)
							break;
					if(n==22)
						fprintf(out,"%d IDEN %s\n",i,str);
					else
						fprintf(out,"%d %s %s\n",i,name[n],str);
					ungetc(c,stdin);
					j=0;
					i++;
					break;
				}
			}
			continue;
		}
		if(isdigit(c)){
			str[j++]=c;
			while(scanf("%c",&c)!=EOF){
				if(isdigit(c))
					str[j++]=c;
				else{
					str[j]='\0';
					fprintf(out,"%d INTCON %s\n",i,str);
					ungetc(c,stdin);
					j=0;
					i++;
					break;
				}
			}
			continue;
		}
		if(c=='+')
			fprintf(out,"%d PLUS +\n",i++);
		else if(c=='-')
			fprintf(out,"%d MINU -\n",i++);
		else if(c=='*')
			fprintf(out,"%d MULT *\n",i++);
		else if(c=='/')
			fprintf(out,"%d DIV /\n",i++);
		else if(c=='.')
			fprintf(out,"%d PERIOD .\n",i++);
		else if(c=='(')
			fprintf(out,"%d LPARENT (\n",i++);
		else if(c==')')
			fprintf(out,"%d RPARENT )\n",i++);
		else if(c=='[')
			fprintf(out,"%d LBRACK [\n",i++);
		else if(c==']')
			fprintf(out,"%d RBRACK ]\n",i++);
		else if(c=='{')
			fprintf(out,"%d LBRACE {\n",i++);
		else if(c=='}')
			fprintf(out,"%d RBRACE }\n",i++);
		else if(c==';')
			fprintf(out,"%d SEMICN ;\n",i++);
		else if(c==',')
			fprintf(out,"%d COMMA ,\n",i++);
		else if(c=='=')
			fprintf(out,"%d EQL =\n",i++);
		else if(c==':'){
			scanf("%c",&c);
			if(c=='='){
				fprintf(out,"%d ASSIGN :=\n", i++);
				continue;
			}
			else{
 				fprintf(out,"%d COLON :\n",i++);
				ungetc(c,stdin);
				continue;
			}
		}
		else if(c=='<'){
			scanf("%c",&c);
			if(c=='='){
				fprintf(out,"%d LEQ <=\n",i++);
				continue;
			}
			else if(c=='>'){
				fprintf(out,"%d NEQ <>\n",i++);
				continue;
			}
			else{
				fprintf(out,"%d LSS <\n",i++);
				ungetc(c,stdin);
				continue;
			}
		}
		else if(c=='>'){
			scanf("%c",&c);
			if(c=='='){
				fprintf(out,"%d GEQ >=\n",i++);
				continue;
			}
			else{
				fprintf(out,"%d GRE >\n",i++);
				ungetc(c,stdin);
				continue;
			}
		}
		else if(c=='\''){
			scanf("%c",&c);
			if((!isdigit(c))&&(!isalpha(c))){
				err(1);
				goto label;
			}
			str[0]=c;
			str[1]='\0';
			scanf("%c",&c);
			if(c!='\''){
				err(2);
				goto label;
			}
			fprintf(out,"%d CHARCON %s\n",i++,str);
		}
		else if(c=='"'){
			while(error=scanf("%c",&c)!=EOF){
				if((!ischar(c))&&(c!='"'))
					error=0;
				if(c!='"')
					str[j++]=c;
				else{
					str[j]='\0';
					j=0;
					break;
				}
			}
			if(error==0){
				err(3);
				goto label;
			}
			fprintf(out,"%d STRCON %s\n",i++,str);
		}
	}
label:
	fclose(stdin);
	fclose(out);
	return 0;
}