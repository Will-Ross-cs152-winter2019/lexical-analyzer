/*
* Numbers, letters, identifiers
*/
DIGIT 0|1|2|3|4|5|6|7|8|9
LOWER [a-z]
UPPER [A-Z]
LETTER ({LOWER}|{UPPER})
NUMBER {DIGIT}+
FLOAT {DIGIT}*\.{DIGIT}+
IDENT {LETTER}({LETTER}|{DIGIT}|_)*({LETTER}|{DIGIT})
/*
* Arithmetic Symbols
*/

PLUS \+
SUB -
MULT \*
DIV \/
MOD %

/*
* Comparison Operators
*/

EQ ==
NEQ <>
LT <
GT >
LTE <=
GTE >=

/*
* Other Special Symbols
*/

SEMICOLON ;
COLON :
COMMA ,
L_PAREN \(
R_PAREN \)
L_SQUARE_BRACKET \[
R_SQUARE_BRACKET \]
ASSIGN :=

/*
* Main function
*/
	 

%%
{PLUS} {printf("PLUS");}
{SUB} {printf("SUB");}
{MULT} {printf("MULT");}
{MOD} {printf("MOD");}
{DIV} {printf("DIV");}
{EQ} {printf("EQ");}
{NEQ} {printf("NEQ");}
{LT} {printf("LT");}
{GT} {printf("GT");}
{LTE} {printf("LTE");}
{GTE} {printf("GTE");}
{SEMICOLON} {printf("SEMICOLON");}
{COLON} {printf("COLON");}
{COMMA} {printf("COMMA");}
{L_PAREN} {printf("L_PAREN");}
{R_PAREN} {printf("R_PAREN");}
{L_SQUARE_BRACKET} {printf("L_SQUARE_BRACKET");}
{R_SQUARE_BRACKET} {printf("R_SQUARE_BRACKET");}
{ASSIGN} {printf("ASSIGN");}
{IDENT} {printf("IDENT: %s\n", yytext);}
{NUMBER} {printf("NUMBER: %d\n", atoi(yytext));}
_(.*)|(.+)_+ {printf("ERROR: Invalid identifier!\n");}
.
[ \t]+
\n
"##".*

%%
main()
        {
        yylex();
}
