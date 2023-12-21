package main.java.utils;

import main.java.utils.Symbol;
import main.java.c.TypeSpecifier;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class SymbolTable {
    public HashMap<Integer, Set<Symbol>> symbolTable;
    int currentScope;

    public SymbolTable(){
        symbolTable = new HashMap<>();
        currentScope = -1;
    }

    public void initializeScope(){
        currentScope++;
        symbolTable.put(currentScope, new HashSet<>());
    }
    public void finalizeScope() {
        symbolTable.remove(currentScope);
        currentScope--;
    }
    public void addSymbol(String symbol, TypeSpecifier type){
        symbolTable.get(currentScope).add(new Symbol(symbol, type));
    }

    @Override
    public String toString() {
       return symbolTable.toString();
    }
}
