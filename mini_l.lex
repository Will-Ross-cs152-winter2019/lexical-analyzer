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
testing variables
*/
	int numPlus, numSub, numMult, numMod, numDiv, numEq, numNeq, numLt, numGt, numLte, numGte, numSM, numColon, numComma, numLP, numRP, numLSB, numRSB, numAssign = 0; 

%%
{PLUS} {numPlus++;}
{SUB} {numSub++;}
{MULT} {numMult++;}
{MOD} {numMod++;}
{DIV} {numDiv++;}
{EQ} {numEq++;}
{NEQ} {numNeq++;}
{LT} {numLt++;}
{GT} {numGt++;}
{LTE} {numLte++;}
{GTE} {numGte++;}
<<<<<<< Updated upstream
{SEMICOLON} {numSM++;}
{COLON} {numColon++;}
{COMMA} {numComma++;}
{L_PAREN} {numLP++;}
{R_PAREN} {numRP++;}
{L_SQUARE_BRACKET} {numLSB++;}
{R_SQUARE_BRACKET} {numRSB++;}
{ASSIGN} {numAssign++;}
{IDENT} {printf("IDENT: %s\n", yytext);}
{NUMBER} {printf("NUMBER: %d\n", atoi(yytext));}
_(.*)|(.+)_+ {printf("ERROR: Invalid identifier!\n");}
. {printf("Error: No match!\n");}

%%
main()
        {
        yylex();
        printf( "# of plus = %d\n # of sub = %d\n # of mult = %d\n # of mod = %d\n # of div = %d\n # of eq = %d\n # of neq = %d\n # of lt = %d\n # of gt = %d\n # of lte = %d\n # of gte = %d\n # of semicolon = %d\n # of colon = %d\n # of comma = %d\n # of lparen = %d\n n# of rparen = %d\n # of lsb = %d\n # of rsb = %d\n # of assign = %d\n", numPlus, numSub, numMult, numMod, numDiv, numEq, numNeq, numLt, numGt, numLte, numGte, numSM, numColon, numComma, numLP, numRP, numLSB, numRSB, numAssign);
 }
