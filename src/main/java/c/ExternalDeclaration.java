package main.java.c;

public class ExternalDeclaration {
    public  String identifier;
    public DeclarationSpecifier declarationSpecifier;
    @Override
    public String toString() {
        String ret = "";
        ret += "isConst: " + declarationSpecifier.isConst + ", ";
        ret += "isVolatile: " + declarationSpecifier.isVolatile + ", ";
        ret += "storageClass: " + declarationSpecifier.storageClass + ", ";
        ret += "typeSpecifier: " + declarationSpecifier.typeSpecifier + ", ";
        return ret;
    }
}
