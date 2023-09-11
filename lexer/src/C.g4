lexer grammar C;

channels {
COMMENTS_CHAN
}

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

COMMENT
    :	  '/*' .*? '*/' -> channel(COMMENTS_CHAN)
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
STAR
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