// Generated from /Users/deebakkarthi/.local/src/kcc/src/C.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CParser}.
 */
public interface CListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CParser#primary_expression}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_expression(CParser.Primary_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#primary_expression}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_expression(CParser.Primary_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#postfix_expression}.
	 * @param ctx the parse tree
	 */
	void enterPostfix_expression(CParser.Postfix_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#postfix_expression}.
	 * @param ctx the parse tree
	 */
	void exitPostfix_expression(CParser.Postfix_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#argument_expression_list}.
	 * @param ctx the parse tree
	 */
	void enterArgument_expression_list(CParser.Argument_expression_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#argument_expression_list}.
	 * @param ctx the parse tree
	 */
	void exitArgument_expression_list(CParser.Argument_expression_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#unary_expression}.
	 * @param ctx the parse tree
	 */
	void enterUnary_expression(CParser.Unary_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#unary_expression}.
	 * @param ctx the parse tree
	 */
	void exitUnary_expression(CParser.Unary_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#unary_operator}.
	 * @param ctx the parse tree
	 */
	void enterUnary_operator(CParser.Unary_operatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#unary_operator}.
	 * @param ctx the parse tree
	 */
	void exitUnary_operator(CParser.Unary_operatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#cast_expression}.
	 * @param ctx the parse tree
	 */
	void enterCast_expression(CParser.Cast_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#cast_expression}.
	 * @param ctx the parse tree
	 */
	void exitCast_expression(CParser.Cast_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#multiplicative_expression}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicative_expression(CParser.Multiplicative_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#multiplicative_expression}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicative_expression(CParser.Multiplicative_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#addictive_expression}.
	 * @param ctx the parse tree
	 */
	void enterAddictive_expression(CParser.Addictive_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#addictive_expression}.
	 * @param ctx the parse tree
	 */
	void exitAddictive_expression(CParser.Addictive_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#shift_expression}.
	 * @param ctx the parse tree
	 */
	void enterShift_expression(CParser.Shift_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#shift_expression}.
	 * @param ctx the parse tree
	 */
	void exitShift_expression(CParser.Shift_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#relational_expression}.
	 * @param ctx the parse tree
	 */
	void enterRelational_expression(CParser.Relational_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#relational_expression}.
	 * @param ctx the parse tree
	 */
	void exitRelational_expression(CParser.Relational_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#equality_expression}.
	 * @param ctx the parse tree
	 */
	void enterEquality_expression(CParser.Equality_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#equality_expression}.
	 * @param ctx the parse tree
	 */
	void exitEquality_expression(CParser.Equality_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bit_and_expression}.
	 * @param ctx the parse tree
	 */
	void enterBit_and_expression(CParser.Bit_and_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bit_and_expression}.
	 * @param ctx the parse tree
	 */
	void exitBit_and_expression(CParser.Bit_and_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#xor_expression}.
	 * @param ctx the parse tree
	 */
	void enterXor_expression(CParser.Xor_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#xor_expression}.
	 * @param ctx the parse tree
	 */
	void exitXor_expression(CParser.Xor_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bit_or_expression}.
	 * @param ctx the parse tree
	 */
	void enterBit_or_expression(CParser.Bit_or_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bit_or_expression}.
	 * @param ctx the parse tree
	 */
	void exitBit_or_expression(CParser.Bit_or_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logical_and_expression}.
	 * @param ctx the parse tree
	 */
	void enterLogical_and_expression(CParser.Logical_and_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logical_and_expression}.
	 * @param ctx the parse tree
	 */
	void exitLogical_and_expression(CParser.Logical_and_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logical_or_expression}.
	 * @param ctx the parse tree
	 */
	void enterLogical_or_expression(CParser.Logical_or_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logical_or_expression}.
	 * @param ctx the parse tree
	 */
	void exitLogical_or_expression(CParser.Logical_or_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#conditional_expression}.
	 * @param ctx the parse tree
	 */
	void enterConditional_expression(CParser.Conditional_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#conditional_expression}.
	 * @param ctx the parse tree
	 */
	void exitConditional_expression(CParser.Conditional_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#assignment_expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignment_expression(CParser.Assignment_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#assignment_expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignment_expression(CParser.Assignment_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#assignment_operator}.
	 * @param ctx the parse tree
	 */
	void enterAssignment_operator(CParser.Assignment_operatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#assignment_operator}.
	 * @param ctx the parse tree
	 */
	void exitAssignment_operator(CParser.Assignment_operatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterExpression(CParser.ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitExpression(CParser.ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#constant_expression}.
	 * @param ctx the parse tree
	 */
	void enterConstant_expression(CParser.Constant_expressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#constant_expression}.
	 * @param ctx the parse tree
	 */
	void exitConstant_expression(CParser.Constant_expressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(CParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(CParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declaration_specifiers}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration_specifiers(CParser.Declaration_specifiersContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declaration_specifiers}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration_specifiers(CParser.Declaration_specifiersContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#init_declaration_list}.
	 * @param ctx the parse tree
	 */
	void enterInit_declaration_list(CParser.Init_declaration_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#init_declaration_list}.
	 * @param ctx the parse tree
	 */
	void exitInit_declaration_list(CParser.Init_declaration_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#init_declarator}.
	 * @param ctx the parse tree
	 */
	void enterInit_declarator(CParser.Init_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#init_declarator}.
	 * @param ctx the parse tree
	 */
	void exitInit_declarator(CParser.Init_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#storage_class_specifier}.
	 * @param ctx the parse tree
	 */
	void enterStorage_class_specifier(CParser.Storage_class_specifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#storage_class_specifier}.
	 * @param ctx the parse tree
	 */
	void exitStorage_class_specifier(CParser.Storage_class_specifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#type_specifier}.
	 * @param ctx the parse tree
	 */
	void enterType_specifier(CParser.Type_specifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#type_specifier}.
	 * @param ctx the parse tree
	 */
	void exitType_specifier(CParser.Type_specifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_or_union_specifier}.
	 * @param ctx the parse tree
	 */
	void enterStruct_or_union_specifier(CParser.Struct_or_union_specifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_or_union_specifier}.
	 * @param ctx the parse tree
	 */
	void exitStruct_or_union_specifier(CParser.Struct_or_union_specifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_or_union}.
	 * @param ctx the parse tree
	 */
	void enterStruct_or_union(CParser.Struct_or_unionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_or_union}.
	 * @param ctx the parse tree
	 */
	void exitStruct_or_union(CParser.Struct_or_unionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_declaration_list}.
	 * @param ctx the parse tree
	 */
	void enterStruct_declaration_list(CParser.Struct_declaration_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_declaration_list}.
	 * @param ctx the parse tree
	 */
	void exitStruct_declaration_list(CParser.Struct_declaration_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_declaration}.
	 * @param ctx the parse tree
	 */
	void enterStruct_declaration(CParser.Struct_declarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_declaration}.
	 * @param ctx the parse tree
	 */
	void exitStruct_declaration(CParser.Struct_declarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#specifier_qualifier_list}.
	 * @param ctx the parse tree
	 */
	void enterSpecifier_qualifier_list(CParser.Specifier_qualifier_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#specifier_qualifier_list}.
	 * @param ctx the parse tree
	 */
	void exitSpecifier_qualifier_list(CParser.Specifier_qualifier_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_declarator_list}.
	 * @param ctx the parse tree
	 */
	void enterStruct_declarator_list(CParser.Struct_declarator_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_declarator_list}.
	 * @param ctx the parse tree
	 */
	void exitStruct_declarator_list(CParser.Struct_declarator_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#struct_declarator}.
	 * @param ctx the parse tree
	 */
	void enterStruct_declarator(CParser.Struct_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#struct_declarator}.
	 * @param ctx the parse tree
	 */
	void exitStruct_declarator(CParser.Struct_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enum_specifier}.
	 * @param ctx the parse tree
	 */
	void enterEnum_specifier(CParser.Enum_specifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enum_specifier}.
	 * @param ctx the parse tree
	 */
	void exitEnum_specifier(CParser.Enum_specifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enumerator_list}.
	 * @param ctx the parse tree
	 */
	void enterEnumerator_list(CParser.Enumerator_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enumerator_list}.
	 * @param ctx the parse tree
	 */
	void exitEnumerator_list(CParser.Enumerator_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enumerator}.
	 * @param ctx the parse tree
	 */
	void enterEnumerator(CParser.EnumeratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enumerator}.
	 * @param ctx the parse tree
	 */
	void exitEnumerator(CParser.EnumeratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#type_qualifier}.
	 * @param ctx the parse tree
	 */
	void enterType_qualifier(CParser.Type_qualifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#type_qualifier}.
	 * @param ctx the parse tree
	 */
	void exitType_qualifier(CParser.Type_qualifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declarator}.
	 * @param ctx the parse tree
	 */
	void enterDeclarator(CParser.DeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declarator}.
	 * @param ctx the parse tree
	 */
	void exitDeclarator(CParser.DeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#direct_declarator}.
	 * @param ctx the parse tree
	 */
	void enterDirect_declarator(CParser.Direct_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#direct_declarator}.
	 * @param ctx the parse tree
	 */
	void exitDirect_declarator(CParser.Direct_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#pointer}.
	 * @param ctx the parse tree
	 */
	void enterPointer(CParser.PointerContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#pointer}.
	 * @param ctx the parse tree
	 */
	void exitPointer(CParser.PointerContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#type_qualifier_list}.
	 * @param ctx the parse tree
	 */
	void enterType_qualifier_list(CParser.Type_qualifier_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#type_qualifier_list}.
	 * @param ctx the parse tree
	 */
	void exitType_qualifier_list(CParser.Type_qualifier_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameter_type_list}.
	 * @param ctx the parse tree
	 */
	void enterParameter_type_list(CParser.Parameter_type_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameter_type_list}.
	 * @param ctx the parse tree
	 */
	void exitParameter_type_list(CParser.Parameter_type_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameter_list}.
	 * @param ctx the parse tree
	 */
	void enterParameter_list(CParser.Parameter_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameter_list}.
	 * @param ctx the parse tree
	 */
	void exitParameter_list(CParser.Parameter_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameter_declaration}.
	 * @param ctx the parse tree
	 */
	void enterParameter_declaration(CParser.Parameter_declarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameter_declaration}.
	 * @param ctx the parse tree
	 */
	void exitParameter_declaration(CParser.Parameter_declarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#identifier_list}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier_list(CParser.Identifier_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#identifier_list}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier_list(CParser.Identifier_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#type_name}.
	 * @param ctx the parse tree
	 */
	void enterType_name(CParser.Type_nameContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#type_name}.
	 * @param ctx the parse tree
	 */
	void exitType_name(CParser.Type_nameContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#abstract_declarator}.
	 * @param ctx the parse tree
	 */
	void enterAbstract_declarator(CParser.Abstract_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#abstract_declarator}.
	 * @param ctx the parse tree
	 */
	void exitAbstract_declarator(CParser.Abstract_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#direct_abstract_declarator}.
	 * @param ctx the parse tree
	 */
	void enterDirect_abstract_declarator(CParser.Direct_abstract_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#direct_abstract_declarator}.
	 * @param ctx the parse tree
	 */
	void exitDirect_abstract_declarator(CParser.Direct_abstract_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initializer}.
	 * @param ctx the parse tree
	 */
	void enterInitializer(CParser.InitializerContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initializer}.
	 * @param ctx the parse tree
	 */
	void exitInitializer(CParser.InitializerContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initializer_list}.
	 * @param ctx the parse tree
	 */
	void enterInitializer_list(CParser.Initializer_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initializer_list}.
	 * @param ctx the parse tree
	 */
	void exitInitializer_list(CParser.Initializer_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(CParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(CParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#labeled_statement}.
	 * @param ctx the parse tree
	 */
	void enterLabeled_statement(CParser.Labeled_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#labeled_statement}.
	 * @param ctx the parse tree
	 */
	void exitLabeled_statement(CParser.Labeled_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#compound_statement}.
	 * @param ctx the parse tree
	 */
	void enterCompound_statement(CParser.Compound_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#compound_statement}.
	 * @param ctx the parse tree
	 */
	void exitCompound_statement(CParser.Compound_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declaration_list}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration_list(CParser.Declaration_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declaration_list}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration_list(CParser.Declaration_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#statement_list}.
	 * @param ctx the parse tree
	 */
	void enterStatement_list(CParser.Statement_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#statement_list}.
	 * @param ctx the parse tree
	 */
	void exitStatement_list(CParser.Statement_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#expression_statement}.
	 * @param ctx the parse tree
	 */
	void enterExpression_statement(CParser.Expression_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#expression_statement}.
	 * @param ctx the parse tree
	 */
	void exitExpression_statement(CParser.Expression_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#selection_statement}.
	 * @param ctx the parse tree
	 */
	void enterSelection_statement(CParser.Selection_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#selection_statement}.
	 * @param ctx the parse tree
	 */
	void exitSelection_statement(CParser.Selection_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#iteration_statement}.
	 * @param ctx the parse tree
	 */
	void enterIteration_statement(CParser.Iteration_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#iteration_statement}.
	 * @param ctx the parse tree
	 */
	void exitIteration_statement(CParser.Iteration_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#jump_statement}.
	 * @param ctx the parse tree
	 */
	void enterJump_statement(CParser.Jump_statementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#jump_statement}.
	 * @param ctx the parse tree
	 */
	void exitJump_statement(CParser.Jump_statementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#translation_unit}.
	 * @param ctx the parse tree
	 */
	void enterTranslation_unit(CParser.Translation_unitContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#translation_unit}.
	 * @param ctx the parse tree
	 */
	void exitTranslation_unit(CParser.Translation_unitContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#external_declaration}.
	 * @param ctx the parse tree
	 */
	void enterExternal_declaration(CParser.External_declarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#external_declaration}.
	 * @param ctx the parse tree
	 */
	void exitExternal_declaration(CParser.External_declarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#function_definition}.
	 * @param ctx the parse tree
	 */
	void enterFunction_definition(CParser.Function_definitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#function_definition}.
	 * @param ctx the parse tree
	 */
	void exitFunction_definition(CParser.Function_definitionContext ctx);
}