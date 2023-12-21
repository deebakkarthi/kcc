package main.java.c;

import java.util.ArrayList;
import java.util.List;

public class Declaration extends ExternalDeclaration {
    public List<String> identifiers;
    public  Declaration(){
        identifiers = new ArrayList<>();
    }

    public String toString() {
        return "dec " + identifiers + " " + declarationSpecifier.typeSpecifier;
    }
}
