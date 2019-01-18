/*
* Arithmetic Symbols
*/

NUMBER [0-9]+
FLOAT NUMBER*\.NUMBER+
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
testing variables
*/
	int numPlus, numSub, numMult, numMod, numDiv, numEq, numNeq, numLt, numGt, numLte, numGte = 0; 

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
%%
main()
        {
        yylex();
        printf( "# of plus = %d\n # of sub = %d\n # of mult = %d\n # of mod = %d\n # of div = %d\n # of eq = %d\n # of neq = %d\n # of lt = %d\n # of gt = %d\n # of lte = %d\n # of gte = %d\n", numPlus, numSub, numMult, numMod, numDiv, numEq, numNeq, numLt, numGt, numLte, numGte);
        }
