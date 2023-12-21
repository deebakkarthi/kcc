package main.java;

import java.io.IOException;
import java.util.List;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

import main.antlr.*;
import main.java.c.*;

public class Main {
    public static void main(String[] args) throws IOException {

        CharStream input = CharStreams.fromFileName(args[0]);
        CLexer lexer = new CLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        CParser parser = new CParser(tokens);
        parser.program();
        Program program = parser.program;
        System.out.println(program);
        System.out.println(parser.symbolTable);

        List<String> semanticWarnings = parser.semanticWarnings;
        for(String warning: semanticWarnings){
            System.out.println(args[0] + ":" + warning);
        }
    }
}
