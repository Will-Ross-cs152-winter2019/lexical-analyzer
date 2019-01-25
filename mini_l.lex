/*
* Numbers, letters, identifiers
*/
DIGIT 	0|1|2|3|4|5|6|7|8|9
LOWER 	[a-z]
UPPER 	[A-Z]
LETTER 	({LOWER}|{UPPER})
NUMBER 	{DIGIT}+
FLOAT 	{DIGIT}*\.{DIGIT}+
IDENT 	({LETTER}({LETTER}|{DIGIT}|_)*({LETTER}|{DIGIT}))|{LETTER}
/*
* Arithmetic Symbols
*/

PLUS 	\+
SUB 	-
MULT 	\*
DIV 	\/
MOD 	%

/*
* Comparison Operators
*/

EQ 	==
NEQ 	<>
LT 	<
GT 	>
LTE 	<=
GTE 	>=

/*
* Other Special Symbols
*/

SEMICOLON		;
COLON 			:
COMMA 			,
L_PAREN 		\(
R_PAREN 		\)
L_SQUARE_BRACKET	\[
R_SQUARE_BRACKET 	\]
ASSIGN :=

/*
* Reserved Words
*/

FUNCTION	"function"
BEGIN_PARAMS	"beginparams"
END_PARAMS	"endparams"
BEGIN_LOCALS	"beginlocals"
END_LOCALS	"endlocals"
BEGIN_BODY	"beginbody"
END_BODY	"endbody"
INTEGER		"integer"
ARRAY		"array"
OF		"of"
IF		"if"
THEN		"then"
ENDIF		"endif"
ELSE		"else"
WHILE		"while"
DO		"do"
BEGINLOOP	"beginloop"
ENDLOOP		"endloop"
CONTINUE	"continue"
READ		"read"
WRITE		"write"
AND		"and"
OR		"or"
NOT		"not"
TRUE		"true"
FALSE		"false"
RETURN		"return"

/*
* Main function
*/
	 int numLines = 1;

%%
{PLUS} 			printf("PLUS\n");
{SUB} 			printf("SUB\n");
{MULT} 			printf("MULT\n");
{MOD} 			printf("MOD\n");
{DIV} 			printf("DIV\n");

{EQ} 			printf("EQ\n");
{NEQ} 			printf("NEQ\n");
{LT} 			printf("LT\n");
{GT} 			printf("GT\n");
{LTE} 			printf("LTE\n");
{GTE} 			printf("GTE\n");

{SEMICOLON} 		printf("SEMICOLON\n");
{COLON} 		printf("COLON\n");
{COMMA} 		printf("COMMA\n");
{L_PAREN} 		printf("L_PAREN\n");
{R_PAREN} 		printf("R_PAREN\n");
{L_SQUARE_BRACKET} 	printf("L_SQUARE_BRACKET\n");
{R_SQUARE_BRACKET} 	printf("R_SQUARE_BRACKET\n");
{ASSIGN} 		printf("ASSIGN\n");

{FUNCTION}		printf("FUNCTION\n");
{BEGIN_PARAMS}		printf("BEGIN_PARAMS\n");
{END_PARAMS}		printf("END_PARAMS\n");
{BEGIN_LOCALS}		printf("BEGIN_LOCALS\n");
{END_LOCALS}		printf("END_LOCALS\n");
{BEGIN_BODY}		printf("BEGIN_BODY\n");
{END_BODY}		printf("END_BODY\n");
{INTEGER}		printf("INTEGER\n");
{ARRAY}			printf("ARRAY\n");
{OF}			printf("OF\n");
{IF}			printf("IF\n");
{THEN}			printf("THEN\n");
{ENDIF}			printf("ENDIF\n");
{ELSE}			printf("ELSE\n");
{WHILE}			printf("WHILE\n");
{DO}			printf("DO\n");
{BEGINLOOP}		printf("BEGINLOOP\n");
{ENDLOOP}		printf("ENDLOOP\n");
{CONTINUE}		printf("CONTINUE\n");
{READ}			printf("READ\n");
{WRITE}			printf("WRITE\n");
{AND}			printf("AND\n");
{OR}			printf("OR\n");
{NOT}			printf("NOT\n");
{TRUE}			printf("TRUE\n");
{FALSE}			printf("FALSE\n");
{RETURN}		printf("RETURN\n");

{IDENT} 		printf("IDENT: %s\n", yytext);
{NUMBER} 		printf("NUMBER: %d\n", atoi(yytext));
_(.*)|(.+)_+ 		printf("ERROR: Invalid identifier!\n");
.
[ \t]+
\n			++numLines;
"##".*

%%
main()
        {
        yylex();
}
