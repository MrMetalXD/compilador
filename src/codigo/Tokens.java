
package codigo;

public enum Tokens {
   // Identificadores y literales
    IDENTIFICADOR,
    NUMERO,
    CADENA,

    // Comandos de acción
    AVANZAR,
    GIRAR,
    DETENER,
    ESPERAR,
    MOSTRAR,
    LEER,
    RETROCEDER,
    ENCENDER,
    APAGAR,
    BOCINA,

    // Estructura de control
    REPETIR,
    MIENTRAS,
    SI,
    ENTONCES,
    SINO,
    FIN,
    ROMPER,
    CONTINUAR,

    // Estructura del programa
    INICIO,
    FUNCION,
    RETORNAR,

    // Declaraciones
    VARIABLE,
    CONSTANTE,

    // Sensores y condiciones
    SENSOR_FRONTAL,
    SENSOR_IZQUIERDO,
    SENSOR_DERECHO,
    ACTIVADO,
    INACTIVO,

    // Tipos de datos opcionales
    ENTERO,
    DECIMAL,
    TEXTO,

    // Operadores
    IGUAL,            // =
    DIFERENTE,        // !=
    MAYOR,            // >
    MENOR,            // <
    MAYOR_IGUAL,      // >=
    MENOR_IGUAL,      // <=
    AND,              // y
    OR,               // o
    NO,               // negación

    // Símbolos
    LLAVE_ABRE,       // {
    LLAVE_CIERRA,     // }
    CORCHETE_ABRE,    // [
    CORCHETE_CIERRA,  // ]
    PAR_ABRE,         // (
    PAR_CIERRA,       // )
    COMA,             // ,
    PUNTOCOMA,        // ;
    COMILLA_DOBLE,    // "
    COMENTARIO,       // //
    
    // Otros
    ERROR;
}
