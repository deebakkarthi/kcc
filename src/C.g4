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
	:	' :'
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
primary_expression
    :   IDENTIFIER
    |   CONSTANT
    |   STRING_LITERAL
    |   LPAREN expression RPAREN
    ;

postfix_expression
    :   primary_expression
    (   LBRACKET expression RBRACKET
    |   LPAREN argument_expression_list? RPAREN
    |   (DOT | PTR_OP)  IDENTIFIER
    |   INC_OP
    |   DEC_OP
    )*
    ;

argument_expression_list
	: assignment_expression (COMMA assignment_expression)*
	;

unary_expression
    :   postfix_expression
    |   INC_OP unary_expression
    |   DEC_OP unary_expression
    |   unary_operator  cast_expression
    |   SIZEOF LPAREN  type_name RPAREN
    ;

unary_operator
    :   AMPERSAND
    |   ASTERISK
    |   PLUS
    |   MINUS
    |   BITNOT
    |   NOT_OP
    ;

cast_expression
    :   unary_expression
    |   LPAREN type_name RPAREN cast_expression
    ;

multiplicative_expression
    :   cast_expression ((ASTERISK | DIV | MOD) cast_expression)*
    ;

addictive_expression
    :   multiplicative_expression ((PLUS | MINUS) multiplicative_expression)*
    ;

shift_expression
    :   addictive_expression ((LEFT_OP | RIGHT_OP) addictive_expression)*
    ;

relational_expression
    :   shift_expression ((LE_OP | GE_OP | LT_OP | GT_OP) shift_expression)*
    ;

equality_expression
    :   relational_expression ((EQ_OP | NE_OP) relational_expression)*
    ;

bit_and_expression
    :   equality_expression (AMPERSAND equality_expression)*
    ;

xor_expression
    : bit_and_expression (XOR_OP bit_and_expression)*
    ;

bit_or_expression
    :   xor_expression (OR_OP xor_expression)*
    ;

logical_and_expression
    :   bit_or_expression (AND_OP bit_or_expression)*
    ;

logical_or_expression
    :   logical_and_expression (OR_OP logical_and_expression)*
    ;

conditional_expression
    :   logical_or_expression (QUESTION expression COLON conditional_expression)?
    ;

assignment_expression
    :   conditional_expression
    |   unary_expression assignment_operator assignment_expression
    ;

assignment_operator
    :   ASSIGN
    |   MUL_ASSIGN
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
    :   assignment_expression (COMMA assignment_expression)*
    ;

constant_expression
    :   conditional_expression
    ;

declaration
    :   declaration_specifiers init_declaration_list?
    ;

declaration_specifiers
    :   declaration_specifier+
    ;

declaration_specifier
    :   storage_class_specifier
    |   type_specifier
    |   type_qualifier
    ;

init_declaration_list
    :   init_declarator (COMMA init_declarator)*
    ;

init_declarator
    :   declarator (ASSIGN initializer)?
    ;

storage_class_specifier
	: TYPEDEF
	| EXTERN
	| STATIC
	| AUTO
	| REGISTER
	;

type_specifier
	: VOID
	| CHAR
	| SHORT
	| INT
	| LONG
	| FLOAT
	| DOUBLE
	| SIGNED
	| UNSIGNED
	| struct_or_union_specifier
	| enum_specifier
	//| TYPE_NAME
	;


struct_or_union_specifier
	: struct_or_union IDENTIFIER? '{' struct_declaration_list '}'
	| struct_or_union IDENTIFIER
	;

struct_or_union
	: STRUCT
	| UNION
	;

struct_declaration_list
    : struct_declaration+
    ;

struct_declaration
    :   specifier_qualifier_list struct_declarator_list SCOLON
    ;

specifier_qualifier_list
    :   (type_specifier | type_qualifier) specifier_qualifier_list?
    ;

struct_declarator_list
    :   struct_declarator (COMMA struct_declarator)*
    ;

struct_declarator
    :   declarator
    |   declarator? COLON constant_expression
    ;

enum_specifier
    :   ENUM IDENTIFIER? LBRACE enumerator_list RBRACE
    |   ENUM IDENTIFIER
    ;

enumerator_list
    :   enumerator (COMMA enumerator)*
    ;

enumerator
    :   IDENTIFIER  (ASSIGN constant_expression)?
    ;

type_qualifier
    : CONST
    | VOLATILE
    ;

declarator
    :   pointer? direct_declarator
    ;

direct_declarator
    :   IDENTIFIER
    |   LPAREN declarator RPAREN
    |	direct_declarator LBRACKET constant_expression RBRACKET
    |	direct_declarator LBRACKET RBRACKET
    |	direct_declarator LPAREN parameter_type_list RPAREN
    |	direct_declarator LPAREN identifier_list RPAREN
    |	direct_declarator LPAREN RPAREN
    ;

pointer
    :   (ASTERISK type_qualifier_list?)+
    ;

type_qualifier_list
    :   type_qualifier+
    ;

parameter_type_list
    :   parameter_list (COMMA ELLIPSIS)?
    ;

parameter_list
    :   parameter_declaration (COMMA parameter_declaration)*
    ;

parameter_declaration
    :   declaration_specifiers declarator
    |   declaration_specifiers abstract_declarator
    |   declaration_specifiers
    ;

identifier_list
    :   IDENTIFIER (COMMA IDENTIFIER)*
    ;

type_name
    :   specifier_qualifier_list abstract_declarator?
    ;

abstract_declarator
    :   pointer
    |   pointer? direct_abstract_declarator
    ;

// TODO Remove left recursion
direct_abstract_declarator
    :   LPAREN abstract_declarator RPAREN
    |   LBRACKET constant_expression? RBRACKET
    |   direct_abstract_declarator LBRACKET RBRACKET
    |   direct_abstract_declarator  LBRACKET constant_expression RBRACKET
    |   LPAREN RPAREN
    |   LPAREN parameter_type_list RPAREN
    |   direct_abstract_declarator LPAREN RPAREN
    |   direct_abstract_declarator LPAREN parameter_type_list RPAREN
    ;

initializer
    :   assignment_expression
    |   LBRACE initializer_list COMMA? RBRACE
    ;

initializer_list
    :   initializer (COMMA initializer)*
    ;

statement
	:	labeled_statement
	|	compound_statement
	|	expression_statement
	|	selection_statement
	|	iteration_statement
	|	jump_statement
	;

labeled_statement
	:	IDENTIFIER ':' statement
	|	CASE constant_expression ':' statement
	|	DEFAULT ':' statement
	;

compound_statement
    :   LBRACE declaration_list? statement_list? RBRACE
    ;

declaration_list
    :   declaration+
    ;

statement_list
    : statement+
    ;

expression_statement
    : expression? SCOLON
    ;

selection_statement
    :   IF LPAREN expression RPAREN statement (ELSE statement)?
    |   SWITCH LPAREN expression RPAREN statement
    ;

iteration_statement
    :   WHILE LPAREN expression RPAREN statement
    |   DO statement WHILE LPAREN expression RPAREN
    |   FOR LPAREN expression_statement expression_statement expression? RPAREN statement
    ;

jump_statement
    :	GOTO IDENTIFIER SCOLON
    |	CONTINUE SCOLON
    |	BREAK SCOLON
    |	RETURN SCOLON
    |	RETURN expression SCOLON
    ;

translation_unit
    : external_declaration+
    ;

external_declaration
    :   function_definition
    |   declaration
    ;

function_definition
	: declaration_specifiers declarator declaration_list compound_statement
	| declaration_specifiers declarator compound_statement
	| declarator declaration_list compound_statement
	| declarator compound_statement
	;
