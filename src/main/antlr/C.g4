grammar C;
import C_;

@header{
import org.antlr.v4.runtime.*;
import java.io.*;
import java.util.*;
import main.java.c.*;
import main.java.utils.*;
}

@members {
public List<String> vars = new ArrayList<>();
public List<String> semanticErrors = new ArrayList<>();
public List<String> semanticWarnings = new ArrayList<>();
public SymbolTable symbolTable = new SymbolTable();
public Program program;
}

// BEGIN: Expression
primaryExpression
    :   IDENTIFIER
    |   CONSTANT
    |   STRING_LITERAL
    |   LPAREN expression RPAREN
    ;

postfixExpression
    :   primaryExpression
    |   primaryExpression LBRACKET expression RBRACKET
    |   primaryExpression LPAREN  RPAREN
    |   primaryExpression LPAREN argumentExpressionList RPAREN
    |   primaryExpression DOT  IDENTIFIER
    |   primaryExpression PTR_OP  IDENTIFIER
    |   primaryExpression INC_OP
    |   primaryExpression DEC_OP
    ;

argumentExpressionList
	:   assignmentExpression arguementExpresionListPrime
	;

arguementExpresionListPrime
    :   COMMA assignmentExpression arguementExpresionListPrime
    |   /*epsilon*/
    ;

unaryExpression
    :   postfixExpression
    |   INC_OP unaryExpression
    |   DEC_OP unaryExpression
    |   unaryOperator  castExpression
    |   SIZEOF LPAREN  typeName RPAREN
    ;

unaryOperator
    :   AMPERSAND
    |   ASTERISK
    |   PLUS
    |   MINUS
    |   BITNOT
    |   NOT_OP
    ;

castExpression
    :   unaryExpression
    |   LPAREN typeName RPAREN castExpression
    ;

multiplicativeExpression
    :   castExpression multiplicativeExpressionPrime
    ;

multiplicativeExpressionPrime
    :   ASTERISK castExpression multiplicativeExpressionPrime
    |   DIV castExpression multiplicativeExpressionPrime
    |   MOD castExpression multiplicativeExpressionPrime
    |   /* epsilon */
    ;

addictiveExpression
    :   multiplicativeExpression addictiveExpressionPrime
    ;

addictiveExpressionPrime
    :   PLUS multiplicativeExpression addictiveExpressionPrime
    |   MINUS multiplicativeExpression addictiveExpressionPrime
    |   /* epsilon */
    ;

shiftExpression
    :   addictiveExpression shiftExpressionPrime
    ;

shiftExpressionPrime
    :   LEFT_OP addictiveExpression shiftExpressionPrime
    |   RIGHT_OP addictiveExpression shiftExpressionPrime
    |   /* epsilon */
    ;

relationalExpression
    :   shiftExpression relationalExpressionPrime
    ;

relationalExpressionPrime
    :	LT_OP shiftExpression relationalExpressionPrime
    |	GT_OP shiftExpression relationalExpressionPrime
    |	LE_OP shiftExpression relationalExpressionPrime
    |	GE_OP shiftExpression relationalExpressionPrime
    |	/* epsilon */
    ;

equalityExpression
    :   relationalExpression equalityExpressionPrime
    ;

equalityExpressionPrime
    :	EQ_OP relationalExpression equalityExpressionPrime
    |	NE_OP relationalExpression equalityExpressionPrime
    |	/* epsilon */
    ;

bitAndExpression
    :   equalityExpression bitAndExpressionPrime
    ;

bitAndExpressionPrime
    :   AMPERSAND equalityExpression bitAndExpressionPrime
    |   /* epsilon */
    ;

xorExpression
    :   bitAndExpression xorExpressionPrime
    ;

xorExpressionPrime
    :   XOR_OP bitAndExpression xorExpressionPrime
    |   /* epsilon */
    ;

bitOrExpression
    :   xorExpression bitOrExpressionPrime
    ;

bitOrExpressionPrime
    :   BITOR xorExpression bitOrExpressionPrime
    |   /* epsilon */
    ;

logicalAndExpression
    :   bitOrExpression logicalAndExpressionPrime
    ;

logicalAndExpressionPrime
    :   AND_OP bitOrExpression logicalAndExpressionPrime
    |   /* epsilon */
    ;

logicalOrExpression
    :   logicalAndExpression logicalOrExpressionPrime
    ;

logicalOrExpressionPrime
    :   OR_OP logicalAndExpression logicalOrExpressionPrime
    |   /* epsilon */
    ;

conditionalExpression
    :   logicalOrExpression
    |   logicalOrExpression QUESTION expression COLON conditionalExpression
    ;

assignmentExpression
    :   conditionalExpression
    |   unaryExpression assignmentOperator assignmentExpression
    ;

assignmentOperator
    :   ASSIGN
    |   MUL_ASSIGN
    |   DIV_ASSIGN
    |	MOD_ASSIGN
    |	ADD_ASSIGN
    |	SUB_ASSIGN
    |	LEFT_ASSIGN
    |	RIGHT_ASSIGN
    |	AND_ASSIGN
    |	XOR_ASSIGN
    |	OR_ASSIGN
    ;

expression
    :   assignmentExpression expressionPrime
    ;

expressionPrime
    :   COMMA assignmentExpression expressionPrime
    |   /* epsilon */
    ;

constantExpression
    :   conditionalExpression
    ;
// END: Expression

// BEGIN: Declarations
declaration returns [Declaration d]
    :   ds=declarationSpecifiers SCOLON {
    $d = new Declaration();
    $d.declarationSpecifier = $ds.d;
    }
    |   ds=declarationSpecifiers idl=initDeclaratorList SCOLON {
    // Figure out the declaration type using initDeclaratorList
    $d = new Declaration();
    $d.declarationSpecifier = $ds.d;
    $d.identifiers = $idl.d.identifiers;
    for(String identifier: $idl.d.identifiers){
    symbolTable.addSymbol(identifier, $ds.d.typeSpecifier);
    }
    }
    ;

declarationSpecifiers returns [DeclarationSpecifier d]
    :   s=storageClassSpecifier{
        $d = new DeclarationSpecifier();
        $d.storageClass = $s.s;
    }
    |   s=storageClassSpecifier ds=declarationSpecifiers{
        $d = $ds.d;
        $d.storageClass = $s.s;
    }
    |   t=typeSpecifier{
        $d = new DeclarationSpecifier();
        $d.typeSpecifier = $t.t;
    }
    |   t=typeSpecifier ds=declarationSpecifiers{
        $d = $ds.d;
        $d.typeSpecifier = $t.t;
    }
    |   tq=typeQualifier {
        if($tq.t == TypeQualifier.CONST){
            $d = new DeclarationSpecifier();
            $d.isConst = true;
        } else if ($tq.t == TypeQualifier.VOLATILE){
            $d = new DeclarationSpecifier();
            $d.isVolatile = true;
        }
    }
    |   tq=typeQualifier ds=declarationSpecifiers{
    if($tq.t == TypeQualifier.CONST && $ds.d.isConst != null){
        int line = $ds.start.getLine();
        int column = $ds.start.getCharPositionInLine() + 1;
        semanticWarnings.add(line+":"+column+": warning: duplicate 'const' declaration specifier");
    }else if ($tq.t == TypeQualifier.VOLATILE && $ds.d.isVolatile != null){
        int line = $ds.start.getLine();
        int column = $ds.start.getCharPositionInLine() + 1;
        semanticWarnings.add(line+":"+column+": warning: duplicate 'volatile' declaration specifier");
        }else{
                if($tq.t == TypeQualifier.CONST){
                    $ds.d.isConst = true;
                } else if ($tq.t == TypeQualifier.VOLATILE){
                    $ds.d.isVolatile = true;
                }
        }
        $d = $ds.d;
    }
    ;

initDeclaratorList returns [Declaration d]
    :   id=initDeclarator idl=initDeclaratorListPrime{
    $d = new Declaration();
    $d.identifiers.add($id.identifier);
    $d.identifiers.addAll($idl.identifiers);
    }
    ;

initDeclaratorListPrime returns [List<String> identifiers]
    :
    COMMA id=initDeclarator idlp=initDeclaratorListPrime{
    $identifiers = new ArrayList<>();
    $identifiers.add($id.identifier);
    $identifiers.addAll($idlp.identifiers);
    }
    |   /*epsilon*/{
    $identifiers = new ArrayList<>();
    }
    ;


initDeclarator returns [String identifier]
    :   d=declarator{
    $identifier = $d.identifier;
    }
    |   d=declarator ASSIGN initializer{
    $identifier = $d.identifier;
    }
    ;

storageClassSpecifier returns [StorageClass s]
	:   TYPEDEF{$s = StorageClass.TYPEDEF;}
	|   EXTERN{$s = StorageClass.EXTERN;}
	|   STATIC{$s = StorageClass.STATIC;}
	|   AUTO{$s = StorageClass.AUTO;}
	|   REGISTER{$s = StorageClass.REGISTER;}
	;

typeSpecifier returns [TypeSpecifier t]
	:   VOID{$t = new VoidType();}
	|   CHAR{$t = new CharType();}
	|   SHORT{$t = new ShortType();}
	|   INT{$t = new IntType();}
	|   LONG{$t = new LongType();}
	|   FLOAT{$t = new FloatType();}
	|   DOUBLE{$t = new DoubleType();}
	|   SIGNED{$t = new SignedType();}
	|   UNSIGNED{$t = new UnsignedType();}
	|   s=structOrUnionSpecifier{$t = $s.t;}
	|   e=enumSpecifier{$t = $e.t;}
	;

structOrUnionSpecifier returns [TypeSpecifier t]
	:   s=structOrUnion LBRACE structDeclarationList  RBRACE{$t=$s.t;}
	|   s=structOrUnion IDENTIFIER LBRACE structDeclarationList  RBRACE{$t=$s.t;}
	|   s=structOrUnion IDENTIFIER{$t=$s.t;}
	;

structOrUnion returns [TypeSpecifier t]
	:   STRUCT{$t = new StructType();}
	|   UNION{$t = new UnionType();}
	;

structDeclarationList
    :   structDeclaration structDeclarationListPrime
    ;

structDeclarationListPrime
    :   structDeclaration structDeclarationListPrime
    |   /* epsilon */
    ;

structDeclaration
    :   specifierQualifierList structDeclaratorList SCOLON
    ;

specifierQualifierList
    :   typeSpecifier specifierQualifierList
    |   typeSpecifier
    |   typeQualifier specifierQualifierList
    |   typeQualifier
    ;

structDeclaratorList
    :   structDeclarator structDeclaratorListPrime
    ;

structDeclaratorListPrime
    :   COMMA structDeclarator structDeclaratorListPrime
    |   /* epsilon */
    ;

structDeclarator
    :   declarator
    |   COLON constantExpression
    |   declarator COLON constantExpression
    ;

enumSpecifier returns [TypeSpecifier t]
    :   ENUM  LBRACE enumeratorList RBRACE {$t = new EnumType();}
    |   ENUM IDENTIFIER LBRACE enumeratorList RBRACE {$t = new EnumType();}
    |   ENUM IDENTIFIER {$t = new EnumType();}
    ;

enumeratorList
    :   enumerator enumeratorListPrime
    ;

enumeratorListPrime
    :   COMMA enumerator enumeratorListPrime
    |   /* epsilon */
    ;

enumerator
    :   IDENTIFIER
    |   IDENTIFIER ASSIGN constantExpression
    ;

typeQualifier returns [TypeQualifier t]
    :   CONST{$t = TypeQualifier.CONST;}
    |   VOLATILE{$t = TypeQualifier.VOLATILE;}
    ;

declarator returns [String identifier]
    :   pointer d=directDeclarator{
    $identifier = $d.identifier;
    }
    |   d=directDeclarator{
    $identifier = $d.identifier;
    }
    ;

directDeclarator returns [String identifier]
    :   name=IDENTIFIER directDeclaratorPrime{
    $identifier=$name.text;
    }
    //Pointers to functions
    |   LPAREN d=declarator RPAREN directDeclaratorPrime {
    $identifier = $d.identifier;
    }
    ;

directDeclaratorPrime
    :   LBRACKET constantExpression RBRACKET directDeclaratorPrime // array with size
    |   LBRACKET RBRACKET directDeclaratorPrime // array alone
    |   LPAREN parameterTypeList RPAREN directDeclaratorPrime // typed params
    |   LPAREN identifierList RPAREN directDeclaratorPrime // typeless params, defaults to int
    |   LPAREN RPAREN directDeclaratorPrime
    |   /*epsilon*/
    ;

pointer
    :   ASTERISK
    |   ASTERISK typeQualifierList
    |   ASTERISK pointer
    |   ASTERISK typeQualifierList pointer
    ;

typeQualifierList
    :   typeQualifier typeQualifierListPrime
    ;

typeQualifierListPrime
    :   typeQualifier typeQualifierListPrime
    |   /* epsilon */
    ;

parameterTypeList
    :   parameterList
    |   parameterList COMMA ELLIPSIS // for kwargs
    ;

parameterList
    :   parameterDeclaration parameterListPrime
    ;

parameterListPrime
    :   COMMA parameterDeclaration parameterListPrime
    |   /* epsilon */
    ;

parameterDeclaration
    :   declarationSpecifiers declarator
    // to give just a *. We cannot do that using a declarator
    |   declarationSpecifiers abstractDeclarator
    |   declarationSpecifiers // Completely ignore the declarator
    ;

identifierList
    :   IDENTIFIER identifierListPrime
    ;

identifierListPrime
    :   COMMA IDENTIFIER identifierListPrime
    |   /* epsilon */
    ;

typeName
    :   specifierQualifierList
    |   specifierQualifierList abstractDeclarator
    ;

abstractDeclarator
    :   pointer
    |   directAbstractDeclarator
    |   pointer directAbstractDeclarator
    ;

directAbstractDeclarator
    // mention that it is a pointer to a function without mentioning any names
    :   LPAREN abstractDeclarator RPAREN directAbstractDeclaratorPrime
    // mention that it is an array without name
    |   LBRACKET  RBRACKET directAbstractDeclaratorPrime
    // mention array size without array name
    |   LBRACKET constantExpression RBRACKET directAbstractDeclaratorPrime
    // function that takes a pointer to a function which doesn't have any args
    |   LPAREN RPAREN directAbstractDeclaratorPrime
    // function that takes a pointer to a function which takes args
    |   LPAREN parameterTypeList RPAREN directAbstractDeclaratorPrime
    ;

directAbstractDeclaratorPrime
    :   LBRACKET  RBRACKET directAbstractDeclaratorPrime
    |   LBRACKET constantExpression RBRACKET directAbstractDeclaratorPrime
    |   LPAREN RPAREN directAbstractDeclaratorPrime
    |   LPAREN parameterTypeList RPAREN directAbstractDeclaratorPrime
    |   /* epsilon */
    ;

initializer
    :   assignmentExpression
    |   LBRACE initializerList  RBRACE
    |   LBRACE initializerList COMMA RBRACE
    ;

initializerList
    :   initializer initializerListPrime
    ;

initializerListPrime
    :   COMMA initializer initializerListPrime
    |   /* epsilon */
    ;
// END: Declarations

// BEGIN: Statements
statement returns [CompoundStatement s]
	:	ls=labeledStatement{
	$s = new SimpleStatement();
	}
	|	c=compoundStatement{
	$s = new CompoundStatement();
	}
	|	e=expressionStatement{
	$s = new SimpleStatement();
	}
	|	ss=selectionStatement{
	$s = new CompoundStatement();
	}
	|	is=iterationStatement{
	$s = new CompoundStatement();
	}
	|	js=jumpStatement{
	$s = new SimpleStatement();
	}
	;

labeledStatement returns [CompoundStatement s]
	:	IDENTIFIER COLON statement
	|	CASE constantExpression COLON statement
	|	DEFAULT COLON statement
	;

compoundStatement returns [CompoundStatement c]
    :   LBRACE  RBRACE {
    $c = new CompoundStatement();
    }
    |   LBRACE s=statementList RBRACE{
    $c = new CompoundStatement();
    $c.compoundStatements = $s.statements;
    }
    |   LBRACE d=declarationList RBRACE{
    $c = new CompoundStatement();
    $c.declarations = $d.declarations;
    }
    |   LBRACE d=declarationList s=statementList RBRACE{
    $c = new CompoundStatement();
    $c.declarations = $d.declarations;
    $c.compoundStatements = $s.statements;
    }
    ;

declarationList returns [List<Declaration> declarations]
    :   d=declaration dlp=declarationListPrime {
    $declarations = new ArrayList<>();
    $declarations.add($d.d);
    $declarations.addAll($dlp.declarations);
    }
    ;

declarationListPrime returns [List<Declaration> declarations]
    :   d=declaration dlp=declarationListPrime{
    $declarations = new ArrayList<>();
    $declarations.add($d.d);
    $declarations.addAll($dlp.declarations);
    }
    |   /* epsilon */{
    $declarations = new ArrayList<>();
    }
    ;

statementList returns [List<CompoundStatement> statements]
    :   s=statement slp=statementListPrime{
    $statements = new ArrayList<>();
    $statements.add($s.s);
    $statements.addAll($slp.statements);
    }
    ;

statementListPrime returns [List<CompoundStatement> statements]
    :  s=statement slp=statementListPrime{
    $statements = new ArrayList<>();
    $statements.add($s.s);
    $statements.addAll($slp.statements);
    }
    |   /* epsilon */{
    $statements = new ArrayList<>();
    }
    ;

expressionStatement returns [CompoundStatement s]
    :   SCOLON
    |   expression SCOLON
    ;

selectionStatement returns [CompoundStatement s]
    :   IF LPAREN expression RPAREN statement
    |   IF LPAREN expression RPAREN statement ELSE statement
    |   SWITCH LPAREN expression RPAREN statement
    ;

iterationStatement returns [CompoundStatement s]
    :   WHILE LPAREN expression RPAREN statement
    |   DO statement WHILE LPAREN expression RPAREN
    |   FOR LPAREN expressionStatement expressionStatement  RPAREN statement
    |   FOR LPAREN expressionStatement expressionStatement expression RPAREN statement
    ;

jumpStatement returns [CompoundStatement s]
    :	GOTO IDENTIFIER SCOLON
    |	CONTINUE SCOLON
    |	BREAK SCOLON
    |	RETURN SCOLON
    |	RETURN expression SCOLON
    ;
//END: Statements

program returns [Program p]
@init{
    $p = new Program();
    program = $p;
    symbolTable.initializeScope();
}
    :   e=externalDeclaration pp=programPrime{
    $p.addExternalDeclaration($e.e);
    $p.addExternalDeclaration($pp.d);
    }
    ;

programPrime returns [List<ExternalDeclaration> d]
    :   e=externalDeclaration pp=programPrime{
    $d = new ArrayList<>();
    $d.add($e.e);
    $d.addAll($pp.d);
    }
    |   /*epsilon*/{
    $d = new ArrayList<>();
    }
    ;

// externalDeclaration is declaration in the global scope
externalDeclaration returns [ExternalDeclaration e]
    :   f=functionDefinition{
    symbolTable.initializeScope();
    $e = $f.f;
    }
    |   d=declaration{
        $e = $d.d;
    }
    ;

functionDefinition returns [FunctionDefinition f]
	:   d=declarationSpecifiers dec=declarator declarationList c=compoundStatement{
	$f = new FunctionDefinition();
	$f.declarationSpecifier = $d.d;
	$f.identifier = $dec.identifier;
	$f.compoundStatement = $c.c;
	}
	|   d=declarationSpecifiers dec=declarator c=compoundStatement{
	$f = new FunctionDefinition();
	$f.declarationSpecifier = $d.d;
	$f.identifier = $dec.identifier;
	$f.compoundStatement = $c.c;
	}
	// Implicit int
	|   dec=declarator declarationList c=compoundStatement{
	$f = new FunctionDefinition();
	DeclarationSpecifier ds = new DeclarationSpecifier();
	ds.isConst = false;
	ds.isVolatile = false;
	ds.typeSpecifier = new IntType();
	$f.declarationSpecifier = ds;
	$f.identifier = $dec.identifier;
	$f.compoundStatement = $c.c;
	}
	|   dec=declarator c=compoundStatement{
	$f = new FunctionDefinition();
	DeclarationSpecifier ds = new DeclarationSpecifier();
	ds.isConst = false;
	ds.isVolatile = false;
	ds.typeSpecifier = new IntType();
	$f.declarationSpecifier = ds;
	$f.identifier = $dec.identifier;
	$f.compoundStatement = $c.c;
	}
	;