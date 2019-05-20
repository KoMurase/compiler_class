/* Definition of expression in Yacc */

%%

input : expr '\n';
expr : expr '+' term | expr '-' term | term ;
term : term '*' factor | term '/' factor | factor ;
factor: 'i' | '(' expr ')';

%%

yylex()
{
  return getchar();
}
