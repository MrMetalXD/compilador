package codigo;

public class sym {
  // Terminales
  public static final int mostrar = 0;
  public static final int variable = 1;
  public static final int si = 2;
  public static final int entonces = 3;
  public static final int sino = 4;
  public static final int inicio = 5;
  public static final int fin = 6;
  public static final int avanzar = 7;
  public static final int detener = 8;
  public static final int girar = 9;
  public static final int retroceder = 10;
  public static final int igual = 11;
  public static final int llave_izq = 12;
  public static final int llave_der = 13;
  public static final int CADENA = 14;
  public static final int IDENTIFICADOR = 15;
  public static final int ESTADO = 16;
  public static final int NUMERO = 17;

  // No terminales (pueden o no ser usados directamente, según el parser)
  public static final int programa = 18;
  public static final int instrucciones = 19;
  public static final int instruccion = 20;
  public static final int declaracion_variable = 21;
  public static final int asignacion = 22;
  public static final int mostrar_instr = 23;
  public static final int accion = 24;
  public static final int condicional = 25;
  public static final int sino_opcional = 26;
  public static final int condicion = 27;
  public static final int expresion = 28;

  public static final int EOF = 29;
}