package main.java.c;

import main.java.utils.Prettier;

import java.util.ArrayList;
import java.util.List;

public class Program {
    public List<ExternalDeclaration> declarations;

    public Program() {
        this.declarations = new ArrayList<>();
    }

    public void addExternalDeclaration(ExternalDeclaration d) {
        this.declarations.add(d);
    }

    public void addExternalDeclaration(List<ExternalDeclaration> d) {
        this.declarations.addAll(d);
    }

    @Override
    public String toString() {
        String str = "Program\n";
        for (ExternalDeclaration declaration: declarations){
            str += Prettier.addTab(declaration.toString()) + "\n";
        }
        return str;
    }
}
