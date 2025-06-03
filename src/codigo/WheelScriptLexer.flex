package codigo;
import compilerTools.Token;

%%
%public
%class WheelScriptLexer
%type Token
%unicode
%line
%column

%{
    private final TablaSimbolos tablaSimbolos = new TablaSimbolos();

    private Token token(String lexeme, String lexicalComp, int line, int column){
        return new Token(lexeme, lexicalComp, line+1, column+1);
    }
%}

%%

/* ---------------------- PALABRAS RESERVADAS ---------------------- */

// Comandos de acción
"avanzar"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"girar"       { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"detener"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"esperar"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"retroceder"  { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"encender"    { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"apagar"      { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"bocina"      { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Entrada/Salida
"mostrar"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"leer"        { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Control de flujo
"repetir"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"mientras"    { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"si"          { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"entonces"    { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"sino"        { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"fin"         { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"romper"      { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"continuar"   { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Estructura del programa
"inicio"      { return token(yytext(), "INICIO_PROGRAMA", yyline, yycolumn); }
"funcion"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"retornar"    { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Declaraciones
"variable"    { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"constante"   { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Sensores y condiciones
"sensor_frontal"   { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"sensor_izquierdo" { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"sensor_derecho"   { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"activado"         { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"inactivo"         { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

// Tipos de datos
"entero"      { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"decimal"     { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }
"texto"       { return token(yytext(), "PALABRA_RESERVADA", yyline, yycolumn); }

/* ---------------------- OPERADORES ---------------------- */
"=="          { return token(yytext(), "OP_COMPARACION", yyline, yycolumn); }
"="           { return token(yytext(), "OP_ASIGNACION", yyline, yycolumn); }
"!="          { return token(yytext(), "OP_DIFERENTE", yyline, yycolumn); }
">"           { return token(yytext(), "OP_MAYOR", yyline, yycolumn); }
"<"           { return token(yytext(), "OP_MENOR", yyline, yycolumn); }
">="          { return token(yytext(), "OP_MAYOR_IGUAL", yyline, yycolumn); }
"<="          { return token(yytext(), "OP_MENOR_IGUAL", yyline, yycolumn); }
"y"           { return token(yytext(), "OP_LOGICO_AND", yyline, yycolumn); }
"o"           { return token(yytext(), "OP_LOGICO_OR", yyline, yycolumn); }
"no"          { return token(yytext(), "OP_LOGICO_NOT", yyline, yycolumn); }
"+"           { return token(yytext(), "OP_SUMA", yyline, yycolumn); }
"-"           { return token(yytext(), "OP_RESTA", yyline, yycolumn); }
"*"           { return token(yytext(), "OP_MULTIPLICACION", yyline, yycolumn); }
"/"           { return token(yytext(), "OP_DIVISION", yyline, yycolumn); }

/* ---------------------- SÍMBOLOS ---------------------- */
"{"           { return token(yytext(), "LLAVE_ABRE", yyline, yycolumn); }
"}"           { return token(yytext(), "LLAVE_CIERRA", yyline, yycolumn); }
"["           { return token(yytext(), "CORCHETE_ABRE", yyline, yycolumn); }
"]"           { return token(yytext(), "CORCHETE_CIERRA", yyline, yycolumn); }
"("           { return token(yytext(), "PAREN_ABRE", yyline, yycolumn); }
")"           { return token(yytext(), "PAREN_CIERRA", yyline, yycolumn); }
","           { return token(yytext(), "COMA", yyline, yycolumn); }
";"           { return token(yytext(), "PUNTO_COMA", yyline, yycolumn); }
"\""         { return token(yytext(), "COMILLA_DOBLE", yyline, yycolumn); }

/* ---------------------- PATRONES ---------------------- */
[0-9]+(\.[0-9]+)?      { return token(yytext(), "NUMERO", yyline, yycolumn); }
\"[^\"\n]*\"           { return token(yytext(), "CADENA", yyline, yycolumn); }
"//".*                 { return token(yytext(), "COMENTARIO", yyline, yycolumn); }

[a-zA-Z_][a-zA-Z_0-9]* {
    if (tablaSimbolos.esReservada(yytext())) {
        return token(yytext(), "ERROR_IDENTIFICADOR_ES_PALABRA_RESERVADA", yyline, yycolumn);
    } else {
        return token(yytext(), "IDENTIFICADOR", yyline, yycolumn);
    }
}


[ \t\r\n]+             { /* ignorar espacios */ }

/* ---------------------- ERRORES ---------------------- */
\"[^\"\n]*    { return token(yytext(), "ERROR_CADENA_NO_CERRADA", yyline, yycolumn); }
"/"[^/].*  { return token(yytext(), "ERROR_COMENTARIO", yyline, yycolumn); }
[0-9]+\.[0-9]+\.[0-9]+   { return token(yytext(), "ERROR_NUMERO_MAL_FORMADO", yyline, yycolumn); }
[^\s\w\[\]{}();=<>+\-*/\"0-9a-zA-Z_.,] { return token(yytext(), "ERROR_CARACTER_INVALIDO", yyline, yycolumn);}

[0-9]+[a-zA-Z_]+[a-zA-Z_0-9]*   { return token(yytext(), "ERROR_IDENTIFICADOR_INVALIDO", yyline, yycolumn); }
.  { return token(yytext(), "ERROR", yyline, yycolumn); }


