
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
        "avanzar", 
        "girar", 
        "detener", 
        "esperar", 
        "retroceder",
        "encender", 
        "apagar", 
        "bocina",
        "mostrar", 
        "leer",
        "repetir", 
        "mientras", 
        "si", 
        "entonces", 
        "sino", 
        "fin",
        "romper", 
        "continuar",
        "inicio", 
        "funcion", 
        "retornar",
        "variable", 
        "constante",
        "sensor_frontal", 
        "sensor_izquierdo", 
        "sensor_derecho",
        "activado", 
        "inactivo",
        "entero", 
        "decimal", 
        "texto"
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
