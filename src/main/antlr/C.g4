grammar C;

// Lexer rules
fragment
DIGIT
    :	  [0-9]
    ;

fragment
OCTAL_DIGIT
    :   [0-7]
    ;

fragment
LETTER
    :	  [a-zA-Z_]
    ;

fragment
HEX
    :	  [a-fA-F0-9]
    ;

fragment
EXP
    :	  [Ee][+-]?(DIGIT)+
    ;

fragment
FLOATING_SUFFIX
    :	  'f'|'F'|'l'|'L'
    ;

fragment
INTEGER_SUFFIX
    :	  'u'|'U'|'l'|'L'
    ;

fragment
CCHAR
    :   ~['\\\n]
    |   ESCAPE_SEQUENCE
    ;

fragment
SCHAR_SEQUENCE
    :    SCHAR+
    ;

fragment
SCHAR
    :   ~["\\\n]
    |   ESCAPE_SEQUENCE
    ;

fragment
ESCAPE_SEQUENCE
    :   SIMPLE_ESCAPE_SEQUENCE
    |   OCTAL_ESCAPE_SEQUENCE
    |   HEX_ESCAPE_SEQUENCE
    ;

fragment
SIMPLE_ESCAPE_SEQUENCE
    : '\\' ['"?abfnrtv\\]
    ;

fragment
OCTAL_ESCAPE_SEQUENCE
    : '\\' OCTAL_DIGIT OCTAL_DIGIT? OCTAL_DIGIT?
    ;

fragment
HEX_ESCAPE_SEQUENCE
    : '\\x' HEX+
    ;

fragment
HEX_CONSTANT
    :   '0'[xX](HEX)+(INTEGER_SUFFIX)?
    ;

fragment
OCTAL_CONSTANT
    :   '0'DIGIT+INTEGER_SUFFIX?
    ;

fragment
INTEGER_CONSTANT
    :   DIGIT+INTEGER_SUFFIX?
    ;

fragment
CHAR_CONSTANT
    :	'L'? '\'' CCHAR '\''
    ;

fragment
FLOAT_CONSTANT
    :	DIGIT+ EXP FLOATING_SUFFIX?
    |   DIGIT* '.' DIGIT+ EXP? FLOATING_SUFFIX?
    |   DIGIT+ '.' DIGIT* EXP? FLOATING_SUFFIX?
    ;

COMMENT
    :	  '/*' .*? '*/' -> skip
    ;

AUTO
    :	  'auto'
    ;

BREAK
    :	  'break'
    ;

CASE
    :	  'case'
    ;

CHAR
    :	  'char'
    ;

CONST
    :	  'const'
    ;

CONTINUE
    :	  'continue'
    ;

DEFAULT
    :	  'default'
    ;

DO
    :	  'do'
    ;

DOUBLE
    :	  'double'
    ;

ELSE
    :	  'else'
    ;

ENUM
    :	  'enum'
    ;

EXTERN
    :	  'extern'
    ;

FLOAT
    :	  'float'
    ;

FOR
    :	  'for'
    ;

GOTO
    :	  'goto'
    ;

IF
    :	  'if'
    ;

INT
    :	  'int'
    ;

LONG
    :	  'long'
    ;

REGISTER
    :	  'register'
    ;

RETURN
    :	  'return'
    ;

SHORT
    :	  'short'
    ;

SIGNED
    :	  'signed'
    ;

SIZEOF
    :	  'sizeof'
    ;

STATIC
    :	  'static'
    ;

STRUCT
    :	  'struct'
    ;

SWITCH
    :	  'switch'
    ;

TYPEDEF
    :	  'typedef'
    ;

UNION
    :	  'union'
    ;

UNSIGNED
    :	'unsigned'
    ;

VOID
    :	  'void'
    ;

VOLATILE
    :	  'volatile'
    ;

WHILE
    :	  'while'
    ;

IDENTIFIER
    :	  LETTER(LETTER|DIGIT)*
    ;


CONSTANT
    :	HEX_CONSTANT
    |   OCTAL_CONSTANT
    |   INTEGER_CONSTANT
    |   CHAR_CONSTANT
    |   FLOAT_CONSTANT
    ;

STRING_LITERAL
    :   'L'?'"'(SCHAR_SEQUENCE)?'"'
    ;

ELLIPSIS
	:	'...'
	;
RIGHT_ASSIGN
	:	'>>='
	;
LEFT_ASSIGN
	:	'<<='
	;
ADD_ASSIGN
	:	'+='
	;
SUB_ASSIGN
	:	'-='
	;
MUL_ASSIGN
	:	'*='
	;
DIV_ASSIGN
	:	'/='
	;
MOD_ASSIGN
	:	'%='
	;
AND_ASSIGN
	:	'&='
	;
XOR_ASSIGN
	:	'^='
	;
OR_ASSIGN
	:	'|='
	;
RIGHT_OP
	:	'>>'
	;
LEFT_OP
	:	'<<'
	;
INC_OP
	:	'++'
	;
DEC_OP
	:	'--'
	;
PTR_OP
	:	'->'
	;
AND_OP
	:	'&&'
	;
OR_OP
	:	'||'
	;
LE_OP
	:	'<='
	;
GE_OP
	:	'>='
	;
EQ_OP
	:	'=='
	;
NE_OP
	:	'!='
	;
SCOLON
	:	';'
	;
LBRACE
	:	'{'
	;
RBRACE
	:	'}'
	;
COMMA
	:	','
	;
COLON
	:	':'
	;
ASSIGN
	:	'='
	;
LPAREN
	:	'('
	;
RPAREN
	:	')'
	;
LBRACKET
	:	'['
	;
RBRACKET
	:	']'
	;
DOT
	:	'.'
	;
AMPERSAND
	:	'&'
	;
NOT_OP
	:	'!'
	;
BITNOT
	:	'~'
	;
MINUS
	:	'-'
	;
PLUS
	:	'+'
	;
ASTERISK
	:	'*'
	;
DIV
	:	'/'
	;
MOD
	:	'%'
	;
LT_OP
	:	'<'
	;
GT_OP
	:	'>'
	;
XOR_OP
	:	'^'
	;
BITOR
	:	'|'
	;
QUESTION
	:	'?'
	;
WS
    :	  [ \r\n\t]+ -> skip
    ;

// Parser Rules


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
    : COMMA assignmentExpression arguementExpresionListPrime
    | /*epsilon*/
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

// multiplicativeExpression
//     :   castExpression
//     |   multiplicativeExpression ASTERISK castExpression
//     |   multiplicativeExpression DIV castExpression
//     |   multiplicativeExpression MOD castExpression
//     ;

multiplicativeExpression
    :   castExpression multiplicativeExpressionPrime
    ;

multiplicativeExpressionPrime
    :   /* epsilon */
    |   ASTERISK castExpression multiplicativeExpressionPrime
    |   DIV castExpression multiplicativeExpressionPrime
    |   MOD castExpression multiplicativeExpressionPrime
    ;

// addictiveExpression
//     :   multiplicativeExpression
//     |   addictiveExpression PLUS multiplicativeExpression
//     |   addictiveExpression MINUS multiplicativeExpression
//     ;

addictiveExpression
    :   multiplicativeExpression addictiveExpressionPrime
    ;

addictiveExpressionPrime
    :   /* epsilon */
    |   PLUS multiplicativeExpression addictiveExpressionPrime
    |   MINUS multiplicativeExpression addictiveExpressionPrime
    ;

shiftExpression
    :   addictiveExpression shiftExpressionPrime
    ;

shiftExpressionPrime
    :   /* epsilon */
    |   LEFT_OP addictiveExpression shiftExpressionPrime
    |   RIGHT_OP addictiveExpression shiftExpressionPrime
    ;

// relationalExpression
//     :   shiftExpression
//     |   relationalExpression LT_OP shiftExpression
//     |   relationalExpression GT_OP shiftExpression
//     |   relationalExpression LE_OP shiftExpression
//     |   relationalExpression GE_OP shiftExpression
//     ;

relationalExpression
    : shiftExpression relationalExpressionPrime
    ;

relationalExpressionPrime
    : /* epsilon */
    | LT_OP shiftExpression relationalExpressionPrime
    | GT_OP shiftExpression relationalExpressionPrime
    | LE_OP shiftExpression relationalExpressionPrime
    | GE_OP shiftExpression relationalExpressionPrime
    ;

// equalityExpression
//     :   relationalExpression
//     |   equalityExpression EQ_OP relationalExpression
//     |   equalityExpression NE_OP relationalExpression
//     ;

equalityExpression
    : relationalExpression equalityExpressionPrime
    ;

equalityExpressionPrime
    : /* epsilon */
    | EQ_OP relationalExpression equalityExpressionPrime
    | NE_OP relationalExpression equalityExpressionPrime
    ;

// bitAndExpression
//     :   equalityExpression
//     |   bitAndExpression AMPERSAND equalityExpression
//     ;

bitAndExpression
    :   equalityExpression bitAndExpressionPrime
    ;

bitAndExpressionPrime
    :   /* epsilon */
    |   AMPERSAND equalityExpression bitAndExpressionPrime
    ;

// xorExpression
//     :   bitAndExpression
//     |   xorExpression XOR_OP bitAndExpression
//     ;

xorExpression
    :   bitAndExpression xorExpressionPrime
    ;

xorExpressionPrime
    :   /* epsilon */
    |   XOR_OP bitAndExpression xorExpressionPrime
    ;

// bitOrExpression
//     :   xorExpression
//     |   bitOrExpression BITOR xorExpression
//     ;

bitOrExpression
    :   xorExpression bitOrExpressionPrime
    ;

bitOrExpressionPrime
    :   /* epsilon */
    |   BITOR xorExpression bitOrExpressionPrime
    ;

// logicalAndExpression
//     :   bitOrExpression
//     |   logicalAndExpression AND_OP bitOrExpression
//     ;

logicalAndExpression
    :   bitOrExpression logicalAndExpressionPrime
    ;

logicalAndExpressionPrime
    :   /* epsilon */
    |   AND_OP bitOrExpression logicalAndExpressionPrime
    ;

// logicalOrExpression
//     :   logicalAndExpression
//     |   logicalOrExpression OR_OP logicalAndExpression
//     ;

logicalOrExpression
    :   logicalAndExpression logicalOrExpressionPrime
    ;

logicalOrExpressionPrime
    :   /* epsilon */
    |   OR_OP logicalAndExpression logicalOrExpressionPrime
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

// expression
//     :   assignmentExpression
//     |   expression COMMA assignmentExpression
//     ;

expression
    :   assignmentExpression expressionPrime
    ;

expressionPrime
    :   /* epsilon */
    |   COMMA assignmentExpression expressionPrime
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

//initDeclaratorList
//    :   initDeclarator
//    |   initDeclaratorList COMMA initDeclarator
//    ;

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
	: VOID
	| CHAR
	| SHORT
	| INT
	| LONG
	| FLOAT
	| DOUBLE
	| SIGNED
	| UNSIGNED
	| structOrUnionSpecifier
	| enumSpecifier
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

// structDeclarationList
//     :   structDeclaration
//     |   structDeclarationList structDeclaration
//     ;

structDeclarationList
    :   structDeclaration structDeclarationListPrime
    ;

structDeclarationListPrime
    :   /* epsilon */
    |   structDeclaration structDeclarationListPrime
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

// structDeclaratorList
//     :   structDeclarator
//     |   structDeclarationList COMMA structDeclarator
//     ;

structDeclaratorList
    :   structDeclarator structDeclaratorListPrime
    ;

structDeclaratorListPrime
    :   /* epsilon */
    |   COMMA structDeclarator structDeclaratorListPrime
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

// enumeratorList
//     :   enumerator
//     |   enumeratorList COMMA enumerator
//     ;

enumeratorList
    :   enumerator enumeratorListPrime
    ;

enumeratorListPrime
    :   /* epsilon */
    |   COMMA enumerator enumeratorListPrime
    ;

enumerator
    :   IDENTIFIER
    |   IDENTIFIER ASSIGN constantExpression
    ;

typeQualifier
    : CONST
    | VOLATILE
    ;

declarator
    :   pointer directDeclarator
    |   directDeclarator
    ;

// directDeclarator
//     :   IDENTIFIER
//     |   LPAREN declarator RPAREN
//     |	directDeclarator LBRACKET constantExpression RBRACKET
//     |	directDeclarator LBRACKET RBRACKET
//     |	directDeclarator LPAREN parameterTypeList RPAREN
//     |	directDeclarator LPAREN identifierList RPAREN
//     |	directDeclarator LPAREN RPAREN
//     ;

directDeclarator
    :   IDENTIFIER directDeclaratorPrime
    |   LPAREN declarator RPAREN directDeclaratorPrime
    ;

directDeclaratorPrime
    : LBRACKET constantExpression RBRACKET directDeclaratorPrime
    | LBRACKET RBRACKET directDeclaratorPrime
    | LPAREN parameterTypeList RPAREN directDeclaratorPrime
    | LPAREN identifierList RPAREN directDeclaratorPrime
    | LPAREN RPAREN directDeclaratorPrime
    | /*epsilon*/
    ;

pointer
    :   ASTERISK
    |   ASTERISK typeQualifierList
    |   ASTERISK pointer
    |   ASTERISK typeQualifierList pointer
    ;

// typeQualifierList
//     :   typeQualifier
//     |   typeQualifierList typeQualifier
//     ;

typeQualifierList
    :   typeQualifier typeQualifierListPrime
    ;

typeQualifierListPrime
    :   /* epsilon */
    |   typeQualifier typeQualifierListPrime
    ;

parameterTypeList
    :   parameterList
    |   parameterList COMMA ELLIPSIS
    ;

// parameterList
//     :   parameterDeclaration
//     |   parameterList COMMA parameterDeclaration
//     ;

parameterList
    :   parameterDeclaration parameterListPrime
    ;

parameterListPrime:
    /* epsilon */
    |   COMMA parameterDeclaration parameterListPrime
    ;

parameterDeclaration
    :   declarationSpecifiers declarator
    |   declarationSpecifiers abstractDeclarator
    |   declarationSpecifiers
    ;

// identifierList
//     :   IDENTIFIER
//     |   identifierList COMMA IDENTIFIER
//     ;

identifierList
    :   IDENTIFIER identifierListPrime
    ;

identifierListPrime
    :   /* epsilon */
    |   COMMA IDENTIFIER identifierListPrime
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

// directAbstractDeclarator
//     :   LPAREN abstractDeclarator RPAREN
//     |   LBRACKET  RBRACKET
//     |   LBRACKET constantExpression RBRACKET
//     |   directAbstractDeclarator LBRACKET RBRACKET
//     |   directAbstractDeclarator  LBRACKET constantExpression RBRACKET
//     |   LPAREN RPAREN
//     |   LPAREN parameterTypeList RPAREN
//     |   directAbstractDeclarator LPAREN RPAREN
//     |   directAbstractDeclarator LPAREN parameterTypeList RPAREN
//     ;

directAbstractDeclarator
    :   LPAREN abstractDeclarator RPAREN directAbstractDeclaratorPrime
    |   LBRACKET  RBRACKET directAbstractDeclaratorPrime
    |   LBRACKET constantExpression RBRACKET directAbstractDeclaratorPrime
    |   LPAREN RPAREN directAbstractDeclaratorPrime
    |   LPAREN parameterTypeList RPAREN directAbstractDeclaratorPrime
    ;

directAbstractDeclaratorPrime
    :   /* epsilon */
    |   LBRACKET  RBRACKET directAbstractDeclaratorPrime
    |   LBRACKET constantExpression RBRACKET directAbstractDeclaratorPrime
    |   LPAREN RPAREN directAbstractDeclaratorPrime
    |   LPAREN parameterTypeList RPAREN directAbstractDeclaratorPrime
    ;

initializer
    :   assignmentExpression
    |   LBRACE initializerList  RBRACE
    |   LBRACE initializerList COMMA RBRACE
    ;

//  initializerList
//      :   initializer
//      |   initializerList COMMA initializer
//      ;

initializerList
    : initializer initializerListPrime
    ;

initializerListPrime
    : /* epsilon */
    | COMMA initializer initializerListPrime
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

//  declarationList
//      :   declaration
//      |   declarationList declaration
//      ;

declarationList
    : declaration declarationListPrime
    ;

declarationListPrime
    : /* epsilon */
    | declaration declarationListPrime
    ;


// statementList
//     :   statement
//     |   statementList statement
//     ;

statementList
    : statement statementListPrime
    ;

statementListPrime
    : /* epsilon */
    | statement statementListPrime
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

//translationUnit
//  : externalDeclaration+
//  ;

//translationUnit
//    : externalDeclaration
//    | translationUnit externalDeclaration
//    ;

translationUnit
    : externalDeclaration translationUnitPrime
    ;

translationUnitPrime
    : externalDeclaration translationUnitPrime
    | /*epsilon*/
    ;

externalDeclaration
    :   functionDefinition
    |   declaration
    ;

functionDefinition
	: declarationSpecifiers declarator declarationList compoundStatement
	| declarationSpecifiers declarator compoundStatement
	| declarator declarationList compoundStatement
	| declarator compoundStatement
	;
