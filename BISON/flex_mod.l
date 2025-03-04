%{
#include "y.tab.h"
extern int yylineno;
%}

%option noyywrap

ID [a-zA-Z_][a-zA-Z0-9_]*
NUM [0-9]+(\.[0-9]+)?

%%

"int"       { return TIPO_INT; }
"float"     { return TIPO_FLOAT; }
"if"        { return IF; }
"while"     { return WHILE; }
"{"         { return ABRE_CHAVES; }
"}"         { return FECHA_CHAVES; }
"("         { return ABRE_PARENTESES; }
")"         { return FECHA_PARENTESES; }
";"         { return PONTO_VIRGULA; }
"="         { return ATRIBUICAO; }
"+"         { return SOMA; }
"-"         { return SUBTRACAO; }
"*"         { return MULTIPLICACAO; }
"/"         { return DIVISAO; }
"!"         { return NEGACAO; }
"<"         { return MENOR; }
"<="        { return MENOR_IGUAL; }
">"         { return MAIOR; }
">="        { return MAIOR_IGUAL; }
"=="        { return IGUAL; }
"!="        { return DIFERENTE; }

{ID}        { return ID; }
{NUM}       { return NUM; }

[ \t]+ ;

\n { yylineno++; }

. { yyerror("Caractere não reconhecido"); }



%%
