%{
#include <stdio.h>
#include <string.h>
%}

%%
[ Ss ][ Ee ][ Ll ][ Ee ][ Cc ][ Tt ]   { printf("PC: %s\n", yytext); }  // Regla para reconocer la palabra clave "select" en cualquier combinación de mayúsculas y minúsculas
[ Ff ][ Rr ][ Oo ][ Mm ]         { printf("PC: %s\n", yytext); }  // Regla para reconocer la palabra clave "from" en cualquier combinación de mayúsculas y minúsculas
[ Ww ][ Hh ][ Ee ][ Rr ][ Ee ]      { printf("PC: %s\n", yytext); }  // Regla para reconocer la palabra clave "where" en cualquier combinación de mayúsculas y minúsculas
[a-zA-Z][a-zA-Z0-9]*   { printf("ID: %s\n", yytext); }  // Regla para reconocer identificadores que comienzan con una letra y pueden contener letras y dígitos
.                      /* Ignorar otros caracteres */

%%

int main()
{
    yylex();  // Llama a la función yylex() generada automáticamente por Lex para iniciar el análisis léxico
    return 0;
}
