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
primary_expression
    :   IDENTIFIER
    |   CONSTANT
    |   STRING_LITERAL
    |   LPAREN expression RPAREN
    ;

postfix_expression
    :   primary_expression
    |   primary_expression LBRACKET expression RBRACKET
    |   primary_expression LPAREN  RPAREN
    |   primary_expression LPAREN argument_expression_list RPAREN
    |   primary_expression DOT  IDENTIFIER
    |   primary_expression PTR_OP  IDENTIFIER
    |   primary_expression INC_OP
    |   primary_expression DEC_OP
    ;

argument_expression_list
	:   assignment_expression arguement_expresion_list_prime
	;

arguement_expresion_list_prime
    : COMMA assignment_expression arguement_expresion_list_prime
    | /*epsilon*/
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

// multiplicative_expression
//     :   cast_expression
//     |   multiplicative_expression ASTERISK cast_expression
//     |   multiplicative_expression DIV cast_expression
//     |   multiplicative_expression MOD cast_expression
//     ;

multiplicative_expression     
    :   cast_expression multiplicative_expression_prime
    ;
    
multiplicative_expression_prime    
    :   /* epsilon */
    |   ASTERISK cast_expression multiplicative_expression_prime
    |   DIV cast_expression multiplicative_expression_prime
    |   MOD cast_expression multiplicative_expression_prime
    ;

// addictive_expression
//     :   multiplicative_expression
//     |   addictive_expression PLUS multiplicative_expression
//     |   addictive_expression MINUS multiplicative_expression
//     ;

addictive_expression     
    :   multiplicative_expression addictive_expression_prime
    ;

addictive_expression_prime    
    :   /* epsilon */
    |   PLUS multiplicative_expression addictive_expression_prime
    |   MINUS multiplicative_expression addictive_expression_prime
    ;

shift_expression
    :   addictive_expression shift_expression_prime
    ;

shift_expression_prime
    :   /* epsilon */
    |   LEFT_OP addictive_expression shift_expression_prime
    |   RIGHT_OP addictive_expression shift_expression_prime
    ;

// relational_expression
//     :   shift_expression
//     |   relational_expression LT_OP shift_expression
//     |   relational_expression GT_OP shift_expression
//     |   relational_expression LE_OP shift_expression
//     |   relational_expression GE_OP shift_expression
//     ;

relational_expression        
    : shift_expression relational_expression_prime
    ;

relational_expression_prime  
    : /* epsilon */
    | LT_OP shift_expression relational_expression_prime
    | GT_OP shift_expression relational_expression_prime
    | LE_OP shift_expression relational_expression_prime
    | GE_OP shift_expression relational_expression_prime
    ;

// equality_expression
//     :   relational_expression
//     |   equality_expression EQ_OP relational_expression
//     |   equality_expression NE_OP relational_expression
//     ;

equality_expression         
    : relational_expression equality_expression_prime
    ;

equality_expression_prime   
    : /* epsilon */
    | EQ_OP relational_expression equality_expression_prime
    | NE_OP relational_expression equality_expression_prime
    ;

// bit_and_expression
//     :   equality_expression
//     |   bit_and_expression AMPERSAND equality_expression
//     ;

bit_and_expression            
    :   equality_expression bit_and_expression_prime
    ;

bit_and_expression_prime      
    :   /* epsilon */
    |   AMPERSAND equality_expression bit_and_expression_prime
    ;

// xor_expression
//     :   bit_and_expression
//     |   xor_expression XOR_OP bit_and_expression
//     ;

xor_expression                
    :   bit_and_expression xor_expression_prime
    ;

xor_expression_prime          
    :   /* epsilon */
    |   XOR_OP bit_and_expression xor_expression_prime
    ;

// bit_or_expression
//     :   xor_expression
//     |   bit_or_expression BITOR xor_expression
//     ;

bit_or_expression
    :   xor_expression bit_or_expression_prime
    ;

bit_or_expression_prime
    :   /* epsilon */
    |   BITOR xor_expression bit_or_expression_prime
    ;

// logical_and_expression
//     :   bit_or_expression
//     |   logical_and_expression AND_OP bit_or_expression
//     ;

logical_and_expression        
    :   bit_or_expression logical_and_expression_prime
    ;

logical_and_expression_prime  
    :   /* epsilon */
    |   AND_OP bit_or_expression logical_and_expression_prime
    ;

// logical_or_expression
//     :   logical_and_expression
//     |   logical_or_expression OR_OP logical_and_expression
//     ;

logical_or_expression         
    :   logical_and_expression logical_or_expression_prime
    ;

logical_or_expression_prime   
    :   /* epsilon */
    |   OR_OP logical_and_expression logical_or_expression_prime
    ;

conditional_expression
    :   logical_or_expression
    |   logical_or_expression QUESTION expression COLON conditional_expression
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

// expression
//     :   assignment_expression
//     |   expression COMMA assignment_expression
//     ;

expression          
    :   assignment_expression expression_prime
    ;

expression_prime    
    :   /* epsilon */
    |   COMMA assignment_expression expression_prime
    ;

constant_expression
    :   conditional_expression
    ;

declaration
    :   declaration_specifiers SCOLON
    |   declaration_specifiers init_declarator_list SCOLON
    ;

declaration_specifiers
    :   storage_class_specifier
    |   storage_class_specifier declaration_specifiers
    |   type_specifier
    |   type_specifier declaration_specifiers
    |   type_qualifier
    |   type_qualifier declaration_specifiers
    ;

//init_declarator_list
//    :   init_declarator
//    |   init_declarator_list COMMA init_declarator
//    ;

init_declarator_list
    :   init_declarator init_declarator_list_prime
    ;

init_declarator_list_prime
    :   init_declarator init_declarator_list_prime
    |   /*epsilon*/
    ;


init_declarator
    :   declarator
    |   declarator ASSIGN initializer
    ;

storage_class_specifier
	:   TYPEDEF
	|   EXTERN
	|   STATIC
	|   AUTO
	|   REGISTER
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
	;

struct_or_union_specifier
	:   struct_or_union LBRACE struct_declaration_list  RBRACE
	|   struct_or_union IDENTIFIER LBRACE struct_declaration_list  RBRACE
	|   struct_or_union IDENTIFIER
	;

struct_or_union
	:   STRUCT
	|   UNION
	;

// struct_declaration_list
//     :   struct_declaration
//     |   struct_declaration_list struct_declaration
//     ;

struct_declaration_list          
    :   struct_declaration struct_declaration_list_prime
    ;
    
struct_declaration_list_prime         
    :   /* epsilon */
    |   struct_declaration struct_declaration_list_prime
    ;

struct_declaration
    :   specifier_qualifier_list struct_declarator_list SCOLON
    ;

specifier_qualifier_list
    :   type_specifier specifier_qualifier_list
    |   type_specifier
    |   type_qualifier specifier_qualifier_list
    |   type_qualifier
    ;

// struct_declarator_list
//     :   struct_declarator
//     |   struct_declaration_list COMMA struct_declarator
//     ;

struct_declarator_list       
    :   struct_declarator struct_declarator_list_prime
    ;

struct_declarator_list_prime 
    :   /* epsilon */
    |   COMMA struct_declarator struct_declarator_list_prime
    ;

struct_declarator
    :   declarator
    |   COLON constant_expression
    |   declarator COLON constant_expression
    ;

enum_specifier
    :   ENUM  LBRACE enumerator_list RBRACE
    |   ENUM IDENTIFIER LBRACE enumerator_list RBRACE
    |   ENUM IDENTIFIER
    ;

// enumerator_list
//     :   enumerator
//     |   enumerator_list COMMA enumerator
//     ;

enumerator_list      
    :   enumerator enumerator_list_prime
    ;

enumerator_list_prime
    :   /* epsilon */
    |   COMMA enumerator enumerator_list_prime
    ;

enumerator
    :   IDENTIFIER
    |   IDENTIFIER ASSIGN constant_expression
    ;

type_qualifier
    : CONST
    | VOLATILE
    ;

declarator
    :   pointer direct_declarator
    |   direct_declarator
    ;

// direct_declarator
//     :   IDENTIFIER
//     |   LPAREN declarator RPAREN
//     |	direct_declarator LBRACKET constant_expression RBRACKET
//     |	direct_declarator LBRACKET RBRACKET
//     |	direct_declarator LPAREN parameter_type_list RPAREN
//     |	direct_declarator LPAREN identifier_list RPAREN
//     |	direct_declarator LPAREN RPAREN
//     ;

direct_declarator          
    :   IDENTIFIER direct_declarator_prime
    |   LPAREN declarator RPAREN direct_declarator_prime
    ;

direct_declarator_prime    
    : LBRACKET constant_expression RBRACKET direct_declarator_prime
    | LBRACKET RBRACKET direct_declarator_prime
    | LPAREN parameter_type_list RPAREN direct_declarator_prime
    | LPAREN identifier_list RPAREN direct_declarator_prime
    | LPAREN RPAREN direct_declarator_prime
    | /*epsilon*/
    ;

pointer
    :   ASTERISK
    |   ASTERISK type_qualifier_list
    |   ASTERISK pointer
    |   ASTERISK type_qualifier_list pointer
    ;

// type_qualifier_list
//     :   type_qualifier
//     |   type_qualifier_list type_qualifier
//     ;

type_qualifier_list       
    :   type_qualifier type_qualifier_list_prime
    ;

type_qualifier_list_prime 
    :   /* epsilon */
    |   type_qualifier type_qualifier_list_prime
    ;

parameter_type_list
    :   parameter_list 
    |   parameter_list COMMA ELLIPSIS
    ;

// parameter_list
//     :   parameter_declaration
//     |   parameter_list COMMA parameter_declaration
//     ;

parameter_list      
    :   parameter_declaration parameter_list_prime
    ;

parameter_list_prime: 
    /* epsilon */
    |   COMMA parameter_declaration parameter_list_prime
    ;

parameter_declaration
    :   declaration_specifiers declarator
    |   declaration_specifiers abstract_declarator
    |   declaration_specifiers
    ;

// identifier_list
//     :   IDENTIFIER
//     |   identifier_list COMMA IDENTIFIER
//     ;

identifier_list          
    :   IDENTIFIER identifier_list_prime
    ;

identifier_list_prime    
    :   /* epsilon */
    |   COMMA IDENTIFIER identifier_list_prime
    ;

type_name
    :   specifier_qualifier_list 
    |   specifier_qualifier_list abstract_declarator
    ;

abstract_declarator
    :   pointer
    |   direct_abstract_declarator
    |   pointer direct_abstract_declarator
    ;

// direct_abstract_declarator
//     :   LPAREN abstract_declarator RPAREN
//     |   LBRACKET  RBRACKET
//     |   LBRACKET constant_expression RBRACKET
//     |   direct_abstract_declarator LBRACKET RBRACKET
//     |   direct_abstract_declarator  LBRACKET constant_expression RBRACKET
//     |   LPAREN RPAREN
//     |   LPAREN parameter_type_list RPAREN
//     |   direct_abstract_declarator LPAREN RPAREN
//     |   direct_abstract_declarator LPAREN parameter_type_list RPAREN
//     ;

direct_abstract_declarator           
    :   LPAREN abstract_declarator RPAREN direct_abstract_declarator_prime
    ;

direct_abstract_declarator_prime     
    :   /* epsilon */
    |   LBRACKET  RBRACKET direct_abstract_declarator_prime
    |   LBRACKET constant_expression RBRACKET direct_abstract_declarator_prime
    |   LPAREN RPAREN direct_abstract_declarator_prime
    |   LPAREN parameter_type_list RPAREN direct_abstract_declarator_prime
    ;

initializer
    :   assignment_expression
    |   LBRACE initializer_list  RBRACE
    |   LBRACE initializer_list COMMA RBRACE
    ;

//  initializer_list
//      :   initializer
//      |   initializer_list COMMA initializer
//      ;

initializer_list
    : initializer initializer_list_prime
    ;

initializer_list_prime
    : /* epsilon */
    | COMMA initializer initializer_list_prime
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
	:	IDENTIFIER COLON statement
	|	CASE constant_expression COLON statement
	|	DEFAULT COLON statement
	;

compound_statement
    :   LBRACE  RBRACE
    |   LBRACE statement_list RBRACE
    |   LBRACE declaration_list RBRACE
    |   LBRACE declaration_list statement_list RBRACE
    ;

//  declaration_list
//      :   declaration
//      |   declaration_list declaration
//      ;

declaration_list
    : declaration declaration_list_prime
    ;

declaration_list_prime
    : /* epsilon */
    | declaration declaration_list_prime
    ;


// statement_list
//     :   statement
//     |   statement_list statement
//     ;

statement_list
    : statement statement_list_prime
    ;

statement_list_prime
    : /* epsilon */
    | statement statement_list_prime
    ;

expression_statement
    :   SCOLON
    |   expression SCOLON
    ;

selection_statement
    :   IF LPAREN expression RPAREN statement
    |   IF LPAREN expression RPAREN statement ELSE statement
    |   SWITCH LPAREN expression RPAREN statement
    ;

iteration_statement
    :   WHILE LPAREN expression RPAREN statement
    |   DO statement WHILE LPAREN expression RPAREN
    |   FOR LPAREN expression_statement expression_statement  RPAREN statement
    |   FOR LPAREN expression_statement expression_statement expression RPAREN statement
    ;

jump_statement
    :	GOTO IDENTIFIER SCOLON
    |	CONTINUE SCOLON
    |	BREAK SCOLON
    |	RETURN SCOLON
    |	RETURN expression SCOLON
    ;

//translation_unit
//  : external_declaration+
//  ;

//translation_unit
//    : external_declaration
//    | translation_unit external_declaration
//    ;

translation_unit
    : external_declaration translation_unit_prime
    ;

translation_unit_prime
    : external_declaration translation_unit_prime
    | /*epsilon*/
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
