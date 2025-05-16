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
    private Token token(String lexeme, String lexicalComp, int line, int column){
        return new Token(lexeme, lexicalComp, line+1, column+1);
    }
%}

%%

/* ---------------------- PALABRAS RESERVADAS ---------------------- */

// Comandos de acción
"avanzar"     { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"girar"       { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"detener"     { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"esperar"     { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"mostrar"     { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"leer"        { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"retroceder"  { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"encender"    { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"apagar"      { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }
"bocina"      { return token(yytext(), "COMANDO_ACCION", yyline, yycolumn); }

// Control de flujo
"repetir"     { return token(yytext(), "CICLO", yyline, yycolumn); }
"mientras"    { return token(yytext(), "CICLO", yyline, yycolumn); }
"si"          { return token(yytext(), "CONDICIONAL", yyline, yycolumn); }
"entonces"    { return token(yytext(), "CONDICIONAL", yyline, yycolumn); }
"sino"        { return token(yytext(), "CONDICIONAL", yyline, yycolumn); }
"fin"         { return token(yytext(), "FIN_BLOQUE", yyline, yycolumn); }
"romper"      { return token(yytext(), "INTERRUPTOR", yyline, yycolumn); }
"continuar"   { return token(yytext(), "INTERRUPTOR", yyline, yycolumn); }

// Estructura del programa
"inicio"      { return token(yytext(), "INICIO_PROGRAMA", yyline, yycolumn); }
"funcion"     { return token(yytext(), "FUNCION_DEF", yyline, yycolumn); }
"retornar"    { return token(yytext(), "RETORNO", yyline, yycolumn); }

// Declaraciones
"variable"    { return token(yytext(), "DECLARACION_VAR", yyline, yycolumn); }
"constante"   { return token(yytext(), "DECLARACION_CONST", yyline, yycolumn); }

// Sensores y condiciones
"sensor_frontal"   { return token(yytext(), "SENSOR", yyline, yycolumn); }
"sensor_izquierdo" { return token(yytext(), "SENSOR", yyline, yycolumn); }
"sensor_derecho"   { return token(yytext(), "SENSOR", yyline, yycolumn); }
"activado"         { return token(yytext(), "ESTADO_SENSOR", yyline, yycolumn); }
"inactivo"         { return token(yytext(), "ESTADO_SENSOR", yyline, yycolumn); }

// Tipos de datos
"entero"      { return token(yytext(), "TIPO_DATO", yyline, yycolumn); }
"decimal"     { return token(yytext(), "TIPO_DATO", yyline, yycolumn); }
"texto"       { return token(yytext(), "TIPO_DATO", yyline, yycolumn); }

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
[0-9]+(\\.[0-9]+)?     { return token(yytext(), "NUMERO", yyline, yycolumn); }
\"[^\"\n]*\"           { return token(yytext(), "CADENA", yyline, yycolumn); }
"//".*                 { return token(yytext(), "COMENTARIO", yyline, yycolumn); }
[a-zA-Z_][a-zA-Z_0-9]* { return token(yytext(), "IDENTIFICADOR", yyline, yycolumn); }
[ \t\r\n]+             { /* ignorar espacios */ }

/* ---------------------- ERROR ---------------------- */
[^]  { return token(yytext(), "ERROR", yyline, yycolumn); }