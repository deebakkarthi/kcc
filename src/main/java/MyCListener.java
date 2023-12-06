package main.java;

import main.antlr.CBaseListener;
import main.antlr.CParser;

public class MyCListener extends CBaseListener {
    @Override
    public void enterTranslationUnit(CParser.TranslationUnitContext ctx) {
        System.out.print("Hello, World!");
    }
}
