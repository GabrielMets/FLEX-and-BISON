%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
extern int yyparse();
extern FILE *yyin;
extern int yylineno;

void yyerror(const char *s) {
    fprintf(stderr, "Erro na linha %d: %s\n", yylineno, s);
}
%}

%token TIPO_INT TIPO_FLOAT
%token IF WHILE
%token ABRE_CHAVES FECHA_CHAVES
%token ABRE_PARENTESES FECHA_PARENTESES
%token PONTO_VIRGULA ATRIBUICAO
%token SOMA SUBTRACAO MULTIPLICACAO DIVISAO NEGACAO
%token MENOR MENOR_IGUAL MAIOR MAIOR_IGUAL IGUAL DIFERENTE
%token ID NUM

%%

Programa: DeclLista
    ;

DeclLista: Decl DeclLista
    | CmdLista
    | 
    ;

Decl: Tipo ID PONTO_VIRGULA
    | Tipo ID ATRIBUICAO Expressao PONTO_VIRGULA
    ;

CmdLista: Cmd CmdLista
    | 
    ;

Cmd: ID ATRIBUICAO Expressao PONTO_VIRGULA
    | IF ABRE_PARENTESES ExpressaoRel FECHA_PARENTESES ABRE_CHAVES CmdLista FECHA_CHAVES
    | WHILE ABRE_PARENTESES ExpressaoRel FECHA_PARENTESES ABRE_CHAVES CmdLista FECHA_CHAVES
    ;

Expressao: Expressao SOMA Termo
    | Expressao SUBTRACAO Termo
    | Termo
    ;

Termo: Termo MULTIPLICACAO Fator
    | Termo DIVISAO Fator
    | Fator
    ;

Fator: ABRE_PARENTESES Expressao FECHA_PARENTESES
    | NUM
    | ID
    | NEGACAO Fator
    ;

ExpressaoRel: Expressao OpRel Expressao
    ;

OpRel: MENOR
    | MENOR_IGUAL
    | MAIOR
    | MAIOR_IGUAL
    | IGUAL
    | DIFERENTE
    ;

Tipo: TIPO_INT
    | TIPO_FLOAT
    ;

%%

int main(int argc, char **argv) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("Erro ao abrir o arquivo");
            return 1;
        }
    }

    if (yyparse() == 0) {
        printf("Análise sintática finalizada com sucesso.\n");
    } else {
        printf("Análise sintática concluída com erros.\n");
    }

    if (argc > 1) {
        fclose(yyin);
    }

    return 0;
}
