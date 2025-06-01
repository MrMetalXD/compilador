
package codigo;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author alanc
 */
public class TablaSimbolos {
    private final String[] palabrasReservadas;
    private final Map<String, Simbolo> simbolos;
    
    public TablaSimbolos(){
        palabrasReservadas = new String[]{
            "sensor",
            "temperatura",
            "infrarrojo",
            "hora",
            "beber",
            "alimentar",
            "encender",
            "apagar",
            "pantalla",
            "nuevo",
            "funciona",
            "inicio_granja",
            "fin_granja",
            "edd",
            "sdd",
            "alarma",
            "detener",
            "esperar",
            "configurar",
            "devuelve",
            "con_retorno",
            "definir",
            "leer_sensor",
            "si",
            "contrario",
            "contrario_si",
            "segun",
            "caso",
            "termina",
            "fin_segun",
            "para",
            "hasta",
            "incrementa",
            "fin_para",
            "mientras",
            "fin_mientras",
            "funcion",
            "fin_funcion",
            "inicio_programa",
            "fin_programa",
            "dispositivos",
            "fin_dispositivos",
            "entero",
            "flotante",
            "logico",
            "cadena",
            "estructura",
            "enumeraciones",
            "estados",
            "evento",
            "suma",
            "resta",
            "multiplicacion",
            "division",
            "mayor",
            "menor",
            "menorigual",
            "mayorigual",
            "igual",
            "diferente",
            "asignacion",
            "puntocoma",
            "punto",
            "coma",
            "and",
            "or",
            "par_abre",
            "par_cierra",
            "llave_abre",
            "llave_cierra",
            "gato",
            "comilla_doble",
            "diagonal"
        };
        simbolos = new HashMap<>();
    };
    
    public boolean esReservada(String palabra) {
        for(String p: palabrasReservadas) {
            if(p.equals(palabra)) {
                return true;
            }
            
        }
        return false;
    }
    
    public void agregarSimbolos(String nombre, String tipo, String dato, String ambito, int direccion){
        simbolos.put(nombre, new Simbolo(nombre, tipo, dato, ambito, direccion));
    }
    
    public Simbolo obtenerSimbolo(String nombre){
        return simbolos.get(nombre);
    }
    
    public boolean contieneSimbolo(String nombre){
        return simbolos.containsKey(nombre);
    }
    
    public Map<String, Simbolo> getSimbolos(){
        return simbolos;
    }
    
    public void mostrarTabla(){
        for (Simbolo s : simbolos.values()){
            System.out.println(s);
        }
            
    }
    
    public static class Simbolo {
        String nombre;
        String tipo;
        String tipoDato;
        String ambito;
        int direccion;
        
        public Simbolo(String nombre, String tipo, String tipoDato, String ambito, int direccion){
            this.nombre = nombre;
            this.tipo = tipo;
            this.tipoDato = tipoDato;
            this.ambito = ambito;
            this.direccion = direccion;       
        }
          
        @Override
        public String toString() {
            return "Nombre: " + nombre + ", Tipo: " + tipo + ", Dato: " + tipoDato + ", Ambito: " + ambito + ", Direccion: " + direccion;
        }
        
        public String [] toArray(){
            return new String []{nombre, tipo, tipoDato, ambito, String.valueOf(direccion)};
        }
}

    
    
    
    
  
    
    

    

    
}
