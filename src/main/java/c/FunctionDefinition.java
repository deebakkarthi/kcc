package main.java.c;

import main.java.utils.Prettier;

public class FunctionDefinition extends ExternalDeclaration {
    public CompoundStatement compoundStatement;
    public FunctionDefinition(){
        compoundStatement = new CompoundStatement();
    }
    @Override
    public String toString() {
        String str = "func " + identifier + " -> " + declarationSpecifier.typeSpecifier + "\n";
        str += Prettier.addTab(compoundStatement.toString());
        return str;
    }
}
