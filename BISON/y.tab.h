/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TIPO_INT = 258,                /* TIPO_INT  */
    TIPO_FLOAT = 259,              /* TIPO_FLOAT  */
    IF = 260,                      /* IF  */
    WHILE = 261,                   /* WHILE  */
    ABRE_CHAVES = 262,             /* ABRE_CHAVES  */
    FECHA_CHAVES = 263,            /* FECHA_CHAVES  */
    ABRE_PARENTESES = 264,         /* ABRE_PARENTESES  */
    FECHA_PARENTESES = 265,        /* FECHA_PARENTESES  */
    PONTO_VIRGULA = 266,           /* PONTO_VIRGULA  */
    ATRIBUICAO = 267,              /* ATRIBUICAO  */
    SOMA = 268,                    /* SOMA  */
    SUBTRACAO = 269,               /* SUBTRACAO  */
    MULTIPLICACAO = 270,           /* MULTIPLICACAO  */
    DIVISAO = 271,                 /* DIVISAO  */
    NEGACAO = 272,                 /* NEGACAO  */
    MENOR = 273,                   /* MENOR  */
    MENOR_IGUAL = 274,             /* MENOR_IGUAL  */
    MAIOR = 275,                   /* MAIOR  */
    MAIOR_IGUAL = 276,             /* MAIOR_IGUAL  */
    IGUAL = 277,                   /* IGUAL  */
    DIFERENTE = 278,               /* DIFERENTE  */
    ID = 279,                      /* ID  */
    NUM = 280                      /* NUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define TIPO_INT 258
#define TIPO_FLOAT 259
#define IF 260
#define WHILE 261
#define ABRE_CHAVES 262
#define FECHA_CHAVES 263
#define ABRE_PARENTESES 264
#define FECHA_PARENTESES 265
#define PONTO_VIRGULA 266
#define ATRIBUICAO 267
#define SOMA 268
#define SUBTRACAO 269
#define MULTIPLICACAO 270
#define DIVISAO 271
#define NEGACAO 272
#define MENOR 273
#define MENOR_IGUAL 274
#define MAIOR 275
#define MAIOR_IGUAL 276
#define IGUAL 277
#define DIFERENTE 278
#define ID 279
#define NUM 280

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
