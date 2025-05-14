%%

%public
%class WheelScriptLexer
%unicode
%line
%column

%{
  // Importamos el enum Tokens
  import java.io.*;
%}

%%

/* ---------------------- PALABRAS RESERVADAS ---------------------- */

// Comandos de acción
"avanzar"         { return Tokens.AVANZAR; }
"girar"           { return Tokens.GIRAR; }
"detener"         { return Tokens.DETENER; }
"esperar"         { return Tokens.ESPERAR; }
"mostrar"         { return Tokens.MOSTRAR; }
"leer"            { return Tokens.LEER; }
"retroceder"      { return Tokens.RETROCEDER; }
"encender"        { return Tokens.ENCENDER; }
"apagar"          { return Tokens.APAGAR; }
"bocina"          { return Tokens.BOCINA; }

// Control de flujo
"repetir"         { return Tokens.REPETIR; }
"mientras"        { return Tokens.MIENTRAS; }
"si"              { return Tokens.SI; }
"entonces"        { return Tokens.ENTONCES; }
"sino"            { return Tokens.SINO; }
"fin"             { return Tokens.FIN; }
"romper"          { return Tokens.ROMPER; }
"continuar"       { return Tokens.CONTINUAR; }

// Estructura del programa
"inicio"          { return Tokens.INICIO; }
"funcion"         { return Tokens.FUNCION; }
"retornar"        { return Tokens.RETORNAR; }

// Declaraciones
"variable"        { return Tokens.VARIABLE; }
"constante"       { return Tokens.CONSTANTE; }

// Sensores y condiciones
"sensor_frontal"      { return Tokens.SENSOR_FRONTAL; }
"sensor_izquierdo"    { return Tokens.SENSOR_IZQUIERDO; }
"sensor_derecho"      { return Tokens.SENSOR_DERECHO; }
"activado"            { return Tokens.ACTIVADO; }
"inactivo"            { return Tokens.INACTIVO; }

// Tipos de datos opcionales
"entero"          { return Tokens.ENTERO; }
"decimal"         { return Tokens.DECIMAL; }
"texto"           { return Tokens.TEXTO; }

/* ---------------------- OPERADORES ---------------------- */
"="               { return Tokens.IGUAL; }
"!="              { return Tokens.DIFERENTE; }
">"               { return Tokens.MAYOR; }
"<"               { return Tokens.MENOR; }
">="              { return Tokens.MAYOR_IGUAL; }
"<="              { return Tokens.MENOR_IGUAL; }
"y"               { return Tokens.AND; }
"o"               { return Tokens.OR; }
"no"              { return Tokens.NO; }

/* ---------------------- SÍMBOLOS ---------------------- */
"{"               { return Tokens.LLAVE_ABRE; }
"}"               { return Tokens.LLAVE_CIERRA; }
"["               { return Tokens.CORCHETE_ABRE; }
"]"               { return Tokens.CORCHETE_CIERRA; }
"("               { return Tokens.PAR_ABRE; }
")"               { return Tokens.PAR_CIERRA; }
","               { return Tokens.COMA; }
";"               { return Tokens.PUNTOCOMA; }
"\""              { return Tokens.COMILLA_DOBLE; }

/* ---------------------- PATRONES ---------------------- */
[0-9]+(\\.[0-9]+)?  { return Tokens.NUMERO; }
\"[^\"\n]*\"        { return Tokens.CADENA; }
"//".*              { return Tokens.COMENTARIO; }
[a-zA-Z_][a-zA-Z_0-9]* { return Tokens.IDENTIFICADOR; }
[ \t\r\n]+          { /* ignorar espacios */ }

/* ---------------------- ERROR ---------------------- */
.                  { return Tokens.ERROR; }
