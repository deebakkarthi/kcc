grammar C;
import CLexerRules;

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
declaration returns [int val]
    :   declarationSpecifiers SCOLON
    |   declarationSpecifiers initDeclaratorList SCOLON
    ;

declarationSpecifiers
    :   storageClassSpecifier
    |   storageClassSpecifier declarationSpecifiers
    |   typeSpecifier
    |   typeSpecifier declarationSpecifiers
    |   typeQualifier
    |   typeQualifier declarationSpecifiers
    ;

initDeclaratorList
    :   initDeclarator initDeclaratorListPrime
    ;

initDeclaratorListPrime
    :   COMMA initDeclarator initDeclaratorListPrime
    |   /*epsilon*/
    ;


initDeclarator
    :   declarator
    |   declarator ASSIGN initializer
    ;

storageClassSpecifier
	:   TYPEDEF
	|   EXTERN
	|   STATIC
	|   AUTO
	|   REGISTER
	;

typeSpecifier
	:   VOID
	|   CHAR
	|   SHORT
	|   INT
	|   LONG
	|   FLOAT
	|   DOUBLE
	|   SIGNED
	|   UNSIGNED
	|   structOrUnionSpecifier
	|   enumSpecifier
	;

structOrUnionSpecifier
	:   structOrUnion LBRACE structDeclarationList  RBRACE
	|   structOrUnion IDENTIFIER LBRACE structDeclarationList  RBRACE
	|   structOrUnion IDENTIFIER
	;

structOrUnion
	:   STRUCT
	|   UNION
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

enumSpecifier
    :   ENUM  LBRACE enumeratorList RBRACE
    |   ENUM IDENTIFIER LBRACE enumeratorList RBRACE
    |   ENUM IDENTIFIER
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

typeQualifier
    :   CONST
    |   VOLATILE
    ;

declarator
    :   pointer directDeclarator
    |   directDeclarator
    ;

directDeclarator
    :   IDENTIFIER directDeclaratorPrime
    |   LPAREN declarator RPAREN directDeclaratorPrime
    ;

directDeclaratorPrime
    :   LBRACKET constantExpression RBRACKET directDeclaratorPrime
    |   LBRACKET RBRACKET directDeclaratorPrime
    |   LPAREN parameterTypeList RPAREN directDeclaratorPrime
    |   LPAREN identifierList RPAREN directDeclaratorPrime
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
    |   parameterList COMMA ELLIPSIS
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
    |   declarationSpecifiers abstractDeclarator
    |   declarationSpecifiers
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
    :   LPAREN abstractDeclarator RPAREN directAbstractDeclaratorPrime
    |   LBRACKET  RBRACKET directAbstractDeclaratorPrime
    |   LBRACKET constantExpression RBRACKET directAbstractDeclaratorPrime
    |   LPAREN RPAREN directAbstractDeclaratorPrime
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
statement
	:	labeledStatement
	|	compoundStatement
	|	expressionStatement
	|	selectionStatement
	|	iterationStatement
	|	jumpStatement
	;

labeledStatement
	:	IDENTIFIER COLON statement
	|	CASE constantExpression COLON statement
	|	DEFAULT COLON statement
	;

compoundStatement
    :   LBRACE  RBRACE
    |   LBRACE statementList RBRACE
    |   LBRACE declarationList RBRACE
    |   LBRACE declarationList statementList RBRACE
    ;

declarationList
    :   declaration declarationListPrime
    ;

declarationListPrime
    :   declaration declarationListPrime
    |   /* epsilon */
    ;

statementList
    :   statement statementListPrime
    ;

statementListPrime
    :   statement statementListPrime
    |   /* epsilon */
    ;

expressionStatement
    :   SCOLON
    |   expression SCOLON
    ;

selectionStatement
    :   IF LPAREN expression RPAREN statement
    |   IF LPAREN expression RPAREN statement ELSE statement
    |   SWITCH LPAREN expression RPAREN statement
    ;

iterationStatement
    :   WHILE LPAREN expression RPAREN statement
    |   DO statement WHILE LPAREN expression RPAREN
    |   FOR LPAREN expressionStatement expressionStatement  RPAREN statement
    |   FOR LPAREN expressionStatement expressionStatement expression RPAREN statement
    ;

jumpStatement
    :	GOTO IDENTIFIER SCOLON
    |	CONTINUE SCOLON
    |	BREAK SCOLON
    |	RETURN SCOLON
    |	RETURN expression SCOLON
    ;
//END: Statements

translationUnit
    :   externalDeclaration translationUnitPrime
    ;

translationUnitPrime
    :   externalDeclaration translationUnitPrime
    |   /*epsilon*/
    ;

externalDeclaration
    :   functionDefinition
    |   declaration
    ;

functionDefinition
	:   declarationSpecifiers declarator declarationList compoundStatement
	|   declarationSpecifiers declarator compoundStatement
	|   declarator declarationList compoundStatement
	|   declarator compoundStatement
	;