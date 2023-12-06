package main.java;

import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.*;

import main.antlr.*;

public class Main {
    public static final String ANSI_BLUE = "\u001B[34m";
    public static final String ANSI_PURPLE = "\u001B[35m";
    public static final String ANSI_GREEN = "\u001B[32m";
    public static final String ANSI_RESET = "\u001B[0m";

    public static void tokenPrint(String tokenText, String tokenName) {
        System.out.printf("%s%s%s", ANSI_BLUE, "<", ANSI_RESET);
        System.out.printf("`%s%s%s` , %s%s%s", ANSI_PURPLE, tokenText, ANSI_RESET, ANSI_GREEN, tokenName, ANSI_RESET);
        System.out.printf("%s%s%s", ANSI_BLUE, ">", ANSI_RESET);
    }

    public static void main(String[] args) throws IOException {

        CharStream input = CharStreams.fromFileName(args[0]);
        CLexer lexer = new CLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        CParser parser = new CParser(tokens);
        ParseTree tree = parser.translationUnit();

        ParseTreeWalker walker = new ParseTreeWalker();
        walker.walk(new MyCListener(), tree);
        System.out.println();
//        Token token;
//        String tokenName;
//        while ((token = lex.nextToken()).getType() != -1) {
//            tokenName = CLexer.VOCABULARY.getSymbolicName(token.getType());
//            switch (tokenName) {
//                case "SCOLON":
//                case "LPAREN":
//                case "RPAREN":
//                case "LBRACKET":
//                case "RBRACKET":
//                case "LBRACE":
//                case "RBRACE":
//                case "WS":
//                case "COMMA":
//                    System.out.printf("%s", token.getText());
//                    break;
//                default:
//                    tokenPrint(token.getText(), tokenName);
//            }
//        }
    }
}
