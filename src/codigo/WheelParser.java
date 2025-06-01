package codigo;

import java_cup.runtime.*;
import java.util.ArrayList;
import compilerTools.Token;

public class WheelParser {
    public ArrayList<String> errores = new ArrayList<>();
    private SymbolFactory sf = new DefaultSymbolFactory();
    private WheelScriptLexer lexer;

    public WheelParser(WheelScriptLexer lexer) {
        this.lexer = lexer;
    }

    public Symbol parse() throws Exception {
        Token token;
        while ((token = (Token) lexer.yylex()) != null) {
            System.out.println("Token: " + token.getLexicalComp() + " | Lexema: " + token.getLexeme());
        }
        System.out.println("✔ Análisis sintáctico simulado finalizado.");
        return new Symbol(sym.programa);
    }

    public void report_error(String message, Object info) {
        errores.add("Error sintáctico: " + message);
    }
}