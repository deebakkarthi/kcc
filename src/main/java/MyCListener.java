package main.java;

import  main.antlr.*;
public class MyCListener extends CBaseListener{
    @Override
    public  void  enterTranslationUnit(CParser.TranslationUnitContext ctx){
        System.out.print("Hello, World!");
    }
}
