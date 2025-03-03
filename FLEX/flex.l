%{
#include <stdio.h>
%}

%option noyywrap

ID [a-zA-Z_][a-zA-Z0-9_]*
NUM [0-9]+(\.[0-9]+)?

%%

"int"       { printf("TIPO_INT\n"); }
"float"     { printf("TIPO_FLOAT\n"); }
"if"        { printf("IF\n"); }
"while"     { printf("WHILE\n"); }
"{"         { printf("ABRE_CHAVES\n"); }
"}"         { printf("FECHA_CHAVES\n"); }
"("         { printf("ABRE_PARENTESES\n"); }
")"         { printf("FECHA_PARENTESES\n"); }
";"         { printf("PONTO_VIRGULA\n"); }
"="         { printf("ATRIBUICAO\n"); }
"+"         { printf("SOMA\n"); }
"-"         { printf("SUBTRACAO\n"); }
"*"         { printf("MULTIPLICACAO\n"); }
"/"         { printf("DIVISAO\n"); }
"!"         { printf("NEGACAO\n"); }
"<"         { printf("MENOR\n"); }
"<="        { printf("MENOR_IGUAL\n"); }
">"         { printf("MAIOR\n"); }
">="        { printf("MAIOR_IGUAL\n"); }
"=="        { printf("IGUAL\n"); }
"!="        { printf("DIFERENTE\n"); }


{ID} { printf("ID: %s\n", yytext); }
{NUM} { printf("NUM: %s\n", yytext); }

[ \t\n] ;

. { printf("Caractere não reconhecido: %s\n", yytext); }

%%

int main(int argc, char **argv) {
yylex();
return 0;
}
