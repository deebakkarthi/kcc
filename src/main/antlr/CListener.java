// Generated from /Users/deebakkarthi/.local/src/kcc/src/main/antlr/C.g4 by ANTLR 4.13.1
package main.antlr;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CParser}.
 */
public interface CListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
	void enterPrimaryExpression(CParser.PrimaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#primaryExpression}.
	 * @param ctx the parse tree
	 */
	void exitPrimaryExpression(CParser.PrimaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
	void enterPostfixExpression(CParser.PostfixExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#postfixExpression}.
	 * @param ctx the parse tree
	 */
	void exitPostfixExpression(CParser.PostfixExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#argumentExpressionList}.
	 * @param ctx the parse tree
	 */
	void enterArgumentExpressionList(CParser.ArgumentExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#argumentExpressionList}.
	 * @param ctx the parse tree
	 */
	void exitArgumentExpressionList(CParser.ArgumentExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#arguementExpresionListPrime}.
	 * @param ctx the parse tree
	 */
	void enterArguementExpresionListPrime(CParser.ArguementExpresionListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#arguementExpresionListPrime}.
	 * @param ctx the parse tree
	 */
	void exitArguementExpresionListPrime(CParser.ArguementExpresionListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpression(CParser.UnaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#unaryExpression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpression(CParser.UnaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
	void enterUnaryOperator(CParser.UnaryOperatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#unaryOperator}.
	 * @param ctx the parse tree
	 */
	void exitUnaryOperator(CParser.UnaryOperatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#castExpression}.
	 * @param ctx the parse tree
	 */
	void enterCastExpression(CParser.CastExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#castExpression}.
	 * @param ctx the parse tree
	 */
	void exitCastExpression(CParser.CastExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicativeExpression(CParser.MultiplicativeExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicativeExpression(CParser.MultiplicativeExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#multiplicativeExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterMultiplicativeExpressionPrime(CParser.MultiplicativeExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#multiplicativeExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitMultiplicativeExpressionPrime(CParser.MultiplicativeExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#addictiveExpression}.
	 * @param ctx the parse tree
	 */
	void enterAddictiveExpression(CParser.AddictiveExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#addictiveExpression}.
	 * @param ctx the parse tree
	 */
	void exitAddictiveExpression(CParser.AddictiveExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#addictiveExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterAddictiveExpressionPrime(CParser.AddictiveExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#addictiveExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitAddictiveExpressionPrime(CParser.AddictiveExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpression(CParser.ShiftExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#shiftExpression}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpression(CParser.ShiftExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#shiftExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterShiftExpressionPrime(CParser.ShiftExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#shiftExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitShiftExpressionPrime(CParser.ShiftExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
	void enterRelationalExpression(CParser.RelationalExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#relationalExpression}.
	 * @param ctx the parse tree
	 */
	void exitRelationalExpression(CParser.RelationalExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#relationalExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterRelationalExpressionPrime(CParser.RelationalExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#relationalExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitRelationalExpressionPrime(CParser.RelationalExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpression(CParser.EqualityExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#equalityExpression}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpression(CParser.EqualityExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#equalityExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterEqualityExpressionPrime(CParser.EqualityExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#equalityExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitEqualityExpressionPrime(CParser.EqualityExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bitAndExpression}.
	 * @param ctx the parse tree
	 */
	void enterBitAndExpression(CParser.BitAndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bitAndExpression}.
	 * @param ctx the parse tree
	 */
	void exitBitAndExpression(CParser.BitAndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bitAndExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterBitAndExpressionPrime(CParser.BitAndExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bitAndExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitBitAndExpressionPrime(CParser.BitAndExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#xorExpression}.
	 * @param ctx the parse tree
	 */
	void enterXorExpression(CParser.XorExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#xorExpression}.
	 * @param ctx the parse tree
	 */
	void exitXorExpression(CParser.XorExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#xorExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterXorExpressionPrime(CParser.XorExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#xorExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitXorExpressionPrime(CParser.XorExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bitOrExpression}.
	 * @param ctx the parse tree
	 */
	void enterBitOrExpression(CParser.BitOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bitOrExpression}.
	 * @param ctx the parse tree
	 */
	void exitBitOrExpression(CParser.BitOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#bitOrExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterBitOrExpressionPrime(CParser.BitOrExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#bitOrExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitBitOrExpressionPrime(CParser.BitOrExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAndExpression(CParser.LogicalAndExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAndExpression(CParser.LogicalAndExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logicalAndExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAndExpressionPrime(CParser.LogicalAndExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logicalAndExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAndExpressionPrime(CParser.LogicalAndExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOrExpression(CParser.LogicalOrExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOrExpression(CParser.LogicalOrExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#logicalOrExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOrExpressionPrime(CParser.LogicalOrExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#logicalOrExpressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOrExpressionPrime(CParser.LogicalOrExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#conditionalExpression}.
	 * @param ctx the parse tree
	 */
	void enterConditionalExpression(CParser.ConditionalExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#conditionalExpression}.
	 * @param ctx the parse tree
	 */
	void exitConditionalExpression(CParser.ConditionalExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentExpression(CParser.AssignmentExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#assignmentExpression}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentExpression(CParser.AssignmentExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#assignmentOperator}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentOperator(CParser.AssignmentOperatorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#assignmentOperator}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentOperator(CParser.AssignmentOperatorContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#expressionPrime}.
	 * @param ctx the parse tree
	 */
	void enterExpressionPrime(CParser.ExpressionPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#expressionPrime}.
	 * @param ctx the parse tree
	 */
	void exitExpressionPrime(CParser.ExpressionPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#constantExpression}.
	 * @param ctx the parse tree
	 */
	void enterConstantExpression(CParser.ConstantExpressionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#constantExpression}.
	 * @param ctx the parse tree
	 */
	void exitConstantExpression(CParser.ConstantExpressionContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#declarationSpecifiers}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationSpecifiers(CParser.DeclarationSpecifiersContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declarationSpecifiers}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationSpecifiers(CParser.DeclarationSpecifiersContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void enterInitDeclaratorList(CParser.InitDeclaratorListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void exitInitDeclaratorList(CParser.InitDeclaratorListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initDeclaratorListPrime}.
	 * @param ctx the parse tree
	 */
	void enterInitDeclaratorListPrime(CParser.InitDeclaratorListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initDeclaratorListPrime}.
	 * @param ctx the parse tree
	 */
	void exitInitDeclaratorListPrime(CParser.InitDeclaratorListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterInitDeclarator(CParser.InitDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitInitDeclarator(CParser.InitDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#storageClassSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterStorageClassSpecifier(CParser.StorageClassSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#storageClassSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitStorageClassSpecifier(CParser.StorageClassSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterTypeSpecifier(CParser.TypeSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#typeSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitTypeSpecifier(CParser.TypeSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structOrUnionSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterStructOrUnionSpecifier(CParser.StructOrUnionSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structOrUnionSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitStructOrUnionSpecifier(CParser.StructOrUnionSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structOrUnion}.
	 * @param ctx the parse tree
	 */
	void enterStructOrUnion(CParser.StructOrUnionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structOrUnion}.
	 * @param ctx the parse tree
	 */
	void exitStructOrUnion(CParser.StructOrUnionContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclarationList}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclarationList(CParser.StructDeclarationListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclarationList}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclarationList(CParser.StructDeclarationListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclarationListPrime}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclarationListPrime(CParser.StructDeclarationListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclarationListPrime}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclarationListPrime(CParser.StructDeclarationListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclaration(CParser.StructDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclaration(CParser.StructDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#specifierQualifierList}.
	 * @param ctx the parse tree
	 */
	void enterSpecifierQualifierList(CParser.SpecifierQualifierListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#specifierQualifierList}.
	 * @param ctx the parse tree
	 */
	void exitSpecifierQualifierList(CParser.SpecifierQualifierListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclaratorList(CParser.StructDeclaratorListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclaratorList}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclaratorList(CParser.StructDeclaratorListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclaratorListPrime}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclaratorListPrime(CParser.StructDeclaratorListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclaratorListPrime}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclaratorListPrime(CParser.StructDeclaratorListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#structDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterStructDeclarator(CParser.StructDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#structDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitStructDeclarator(CParser.StructDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enumSpecifier}.
	 * @param ctx the parse tree
	 */
	void enterEnumSpecifier(CParser.EnumSpecifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enumSpecifier}.
	 * @param ctx the parse tree
	 */
	void exitEnumSpecifier(CParser.EnumSpecifierContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enumeratorList}.
	 * @param ctx the parse tree
	 */
	void enterEnumeratorList(CParser.EnumeratorListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enumeratorList}.
	 * @param ctx the parse tree
	 */
	void exitEnumeratorList(CParser.EnumeratorListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#enumeratorListPrime}.
	 * @param ctx the parse tree
	 */
	void enterEnumeratorListPrime(CParser.EnumeratorListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#enumeratorListPrime}.
	 * @param ctx the parse tree
	 */
	void exitEnumeratorListPrime(CParser.EnumeratorListPrimeContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#typeQualifier}.
	 * @param ctx the parse tree
	 */
	void enterTypeQualifier(CParser.TypeQualifierContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#typeQualifier}.
	 * @param ctx the parse tree
	 */
	void exitTypeQualifier(CParser.TypeQualifierContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#directDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterDirectDeclarator(CParser.DirectDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#directDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitDirectDeclarator(CParser.DirectDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#directDeclaratorPrime}.
	 * @param ctx the parse tree
	 */
	void enterDirectDeclaratorPrime(CParser.DirectDeclaratorPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#directDeclaratorPrime}.
	 * @param ctx the parse tree
	 */
	void exitDirectDeclaratorPrime(CParser.DirectDeclaratorPrimeContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#typeQualifierList}.
	 * @param ctx the parse tree
	 */
	void enterTypeQualifierList(CParser.TypeQualifierListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#typeQualifierList}.
	 * @param ctx the parse tree
	 */
	void exitTypeQualifierList(CParser.TypeQualifierListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#typeQualifierListPrime}.
	 * @param ctx the parse tree
	 */
	void enterTypeQualifierListPrime(CParser.TypeQualifierListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#typeQualifierListPrime}.
	 * @param ctx the parse tree
	 */
	void exitTypeQualifierListPrime(CParser.TypeQualifierListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameterTypeList}.
	 * @param ctx the parse tree
	 */
	void enterParameterTypeList(CParser.ParameterTypeListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameterTypeList}.
	 * @param ctx the parse tree
	 */
	void exitParameterTypeList(CParser.ParameterTypeListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameterList}.
	 * @param ctx the parse tree
	 */
	void enterParameterList(CParser.ParameterListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameterList}.
	 * @param ctx the parse tree
	 */
	void exitParameterList(CParser.ParameterListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameterListPrime}.
	 * @param ctx the parse tree
	 */
	void enterParameterListPrime(CParser.ParameterListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameterListPrime}.
	 * @param ctx the parse tree
	 */
	void exitParameterListPrime(CParser.ParameterListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#parameterDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterParameterDeclaration(CParser.ParameterDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#parameterDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitParameterDeclaration(CParser.ParameterDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#identifierList}.
	 * @param ctx the parse tree
	 */
	void enterIdentifierList(CParser.IdentifierListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#identifierList}.
	 * @param ctx the parse tree
	 */
	void exitIdentifierList(CParser.IdentifierListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#identifierListPrime}.
	 * @param ctx the parse tree
	 */
	void enterIdentifierListPrime(CParser.IdentifierListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#identifierListPrime}.
	 * @param ctx the parse tree
	 */
	void exitIdentifierListPrime(CParser.IdentifierListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#typeName}.
	 * @param ctx the parse tree
	 */
	void enterTypeName(CParser.TypeNameContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#typeName}.
	 * @param ctx the parse tree
	 */
	void exitTypeName(CParser.TypeNameContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#abstractDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterAbstractDeclarator(CParser.AbstractDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#abstractDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitAbstractDeclarator(CParser.AbstractDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#directAbstractDeclarator}.
	 * @param ctx the parse tree
	 */
	void enterDirectAbstractDeclarator(CParser.DirectAbstractDeclaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#directAbstractDeclarator}.
	 * @param ctx the parse tree
	 */
	void exitDirectAbstractDeclarator(CParser.DirectAbstractDeclaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#directAbstractDeclaratorPrime}.
	 * @param ctx the parse tree
	 */
	void enterDirectAbstractDeclaratorPrime(CParser.DirectAbstractDeclaratorPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#directAbstractDeclaratorPrime}.
	 * @param ctx the parse tree
	 */
	void exitDirectAbstractDeclaratorPrime(CParser.DirectAbstractDeclaratorPrimeContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#initializerList}.
	 * @param ctx the parse tree
	 */
	void enterInitializerList(CParser.InitializerListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initializerList}.
	 * @param ctx the parse tree
	 */
	void exitInitializerList(CParser.InitializerListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#initializerListPrime}.
	 * @param ctx the parse tree
	 */
	void enterInitializerListPrime(CParser.InitializerListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#initializerListPrime}.
	 * @param ctx the parse tree
	 */
	void exitInitializerListPrime(CParser.InitializerListPrimeContext ctx);
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
	 * Enter a parse tree produced by {@link CParser#labeledStatement}.
	 * @param ctx the parse tree
	 */
	void enterLabeledStatement(CParser.LabeledStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#labeledStatement}.
	 * @param ctx the parse tree
	 */
	void exitLabeledStatement(CParser.LabeledStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
	void enterCompoundStatement(CParser.CompoundStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#compoundStatement}.
	 * @param ctx the parse tree
	 */
	void exitCompoundStatement(CParser.CompoundStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declarationList}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationList(CParser.DeclarationListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declarationList}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationList(CParser.DeclarationListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#declarationListPrime}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationListPrime(CParser.DeclarationListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#declarationListPrime}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationListPrime(CParser.DeclarationListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#statementList}.
	 * @param ctx the parse tree
	 */
	void enterStatementList(CParser.StatementListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#statementList}.
	 * @param ctx the parse tree
	 */
	void exitStatementList(CParser.StatementListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#statementListPrime}.
	 * @param ctx the parse tree
	 */
	void enterStatementListPrime(CParser.StatementListPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#statementListPrime}.
	 * @param ctx the parse tree
	 */
	void exitStatementListPrime(CParser.StatementListPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionStatement(CParser.ExpressionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionStatement(CParser.ExpressionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void enterSelectionStatement(CParser.SelectionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#selectionStatement}.
	 * @param ctx the parse tree
	 */
	void exitSelectionStatement(CParser.SelectionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void enterIterationStatement(CParser.IterationStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#iterationStatement}.
	 * @param ctx the parse tree
	 */
	void exitIterationStatement(CParser.IterationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void enterJumpStatement(CParser.JumpStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#jumpStatement}.
	 * @param ctx the parse tree
	 */
	void exitJumpStatement(CParser.JumpStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#translationUnit}.
	 * @param ctx the parse tree
	 */
	void enterTranslationUnit(CParser.TranslationUnitContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#translationUnit}.
	 * @param ctx the parse tree
	 */
	void exitTranslationUnit(CParser.TranslationUnitContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#translationUnitPrime}.
	 * @param ctx the parse tree
	 */
	void enterTranslationUnitPrime(CParser.TranslationUnitPrimeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#translationUnitPrime}.
	 * @param ctx the parse tree
	 */
	void exitTranslationUnitPrime(CParser.TranslationUnitPrimeContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#externalDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterExternalDeclaration(CParser.ExternalDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#externalDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitExternalDeclaration(CParser.ExternalDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDefinition(CParser.FunctionDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link CParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDefinition(CParser.FunctionDefinitionContext ctx);
}