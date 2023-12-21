package main.java.utils;

import main.java.c.TypeQualifier;
import main.java.c.TypeSpecifier;

public class Symbol {
    public String name;
    public TypeSpecifier type;

    public Symbol(String symbol, TypeSpecifier type) {
        this.name = symbol;
        this.type = type;
    }

    @Override
    public String toString() {
        return name+"::" +type;
    }
}
