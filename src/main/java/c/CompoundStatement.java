package main.java.c;

import main.java.utils.Prettier;

import java.util.ArrayList;
import java.util.List;

public class CompoundStatement {
    public List<Declaration> declarations;
    public List<CompoundStatement> compoundStatements;

    public CompoundStatement(){
        declarations = new ArrayList<>();
        compoundStatements = new ArrayList<>();
    }

    @Override
    public String toString() {
        String str = "CompoundStatement\n";
        for(Declaration declaration: declarations){
            str += Prettier.addTab(declaration.toString()) + "\n";
        }
        for(CompoundStatement statement: compoundStatements){
            str += Prettier.addTab(statement.toString()) + "\n";
        }
        return str;
    }
}
