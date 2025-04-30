%{
#include <stdio.h>
%}

%%
[ \t]+                  ;                  // Ignore spaces and tabs
"//".*                  { printf("COMMENT"); }   // Comments
f                       { printf("floatdcl "); }   // Declare float
i                       { printf("intdcl "); }     // Declare int
p                       { printf("print "); }      // Print
[a-zA-Z]                { printf("id "); }         // IDs
"="                     { printf("assign "); }     // Assignment
"+"                     { printf("plus "); }       // Plus operator
"-"                     { printf("minus "); }       // Minus
"/"                     { printf("division "); }       // Division
"*"                     { printf("mult "); }       // Mult
[0-9]+                  { printf("inum"); }      // Int numbers
\n                      { printf("\n"); }                // Find the linebreak
.                       ;                  // Ignore everything else
%%

int yywrap() {
    return 1;
}
