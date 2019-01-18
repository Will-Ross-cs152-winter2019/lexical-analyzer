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
testing variables
*/
	int numPlus, numSub, numMult, numMod, numDiv = 0; 

%%
{PLUS} {numPlus++;}
{SUB} {numSub++;}
{MULT} {numMult++;}
{MOD} {numMod++;}
{DIV} {numDiv++;}
%%
main()
        {
        yylex();
        printf( "# of plus = %d\n # of sub = %d\n # of mult = %d\n # of mod = %d\n # of div = %d\n", numPlus, numSub, numMult,numMod,numDiv);
        }
