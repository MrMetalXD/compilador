package codigo;

import JFlex.Main;

/**
 *
 * @author alanc
 */
public class ExecuteJFlex {
    
    public static void main(String[] args) {
        String lexerFile = System.getProperty("user.dir") + "/src/codigo/WheelScriptLexer.flex";
        
        try {
            Main.generate(new String[]{lexerFile});
        } catch (Exception ex) {
            System.out.println("Error al generar al archivo flex:"+ ex);
        }
    }
    
}
