// Generated from /Users/deebakkarthi/.local/src/kcc/src/main/antlr/C.g4 by ANTLR 4.13.1
package main.antlr;

import org.antlr.v4.runtime.*;
import java.io.*;
import java.util.*;
import main.java.c.*;
import main.java.utils.*;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface CVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link CParser#primaryExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimaryExpression(CParser.PrimaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#postfixExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpression(CParser.PostfixExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#argumentExpressionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArgumentExpressionList(CParser.ArgumentExpressionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#arguementExpresionListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArguementExpresionListPrime(CParser.ArguementExpresionListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#unaryExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpression(CParser.UnaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#unaryOperator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryOperator(CParser.UnaryOperatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#castExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCastExpression(CParser.CastExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#multiplicativeExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeExpression(CParser.MultiplicativeExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#multiplicativeExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultiplicativeExpressionPrime(CParser.MultiplicativeExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#addictiveExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddictiveExpression(CParser.AddictiveExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#addictiveExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddictiveExpressionPrime(CParser.AddictiveExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#shiftExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftExpression(CParser.ShiftExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#shiftExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShiftExpressionPrime(CParser.ShiftExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#relationalExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalExpression(CParser.RelationalExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#relationalExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRelationalExpressionPrime(CParser.RelationalExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#equalityExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityExpression(CParser.EqualityExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#equalityExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqualityExpressionPrime(CParser.EqualityExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#bitAndExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitAndExpression(CParser.BitAndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#bitAndExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitAndExpressionPrime(CParser.BitAndExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#xorExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitXorExpression(CParser.XorExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#xorExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitXorExpressionPrime(CParser.XorExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#bitOrExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitOrExpression(CParser.BitOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#bitOrExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitOrExpressionPrime(CParser.BitOrExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#logicalAndExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalAndExpression(CParser.LogicalAndExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#logicalAndExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalAndExpressionPrime(CParser.LogicalAndExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#logicalOrExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalOrExpression(CParser.LogicalOrExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#logicalOrExpressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicalOrExpressionPrime(CParser.LogicalOrExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#conditionalExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConditionalExpression(CParser.ConditionalExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#assignmentExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignmentExpression(CParser.AssignmentExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#assignmentOperator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignmentOperator(CParser.AssignmentOperatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(CParser.ExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#expressionPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionPrime(CParser.ExpressionPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#constantExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstantExpression(CParser.ConstantExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#declaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclaration(CParser.DeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#declarationSpecifiers}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationSpecifiers(CParser.DeclarationSpecifiersContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initDeclaratorList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitDeclaratorList(CParser.InitDeclaratorListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initDeclaratorListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitDeclaratorListPrime(CParser.InitDeclaratorListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitDeclarator(CParser.InitDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#storageClassSpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStorageClassSpecifier(CParser.StorageClassSpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#typeSpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeSpecifier(CParser.TypeSpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnionSpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructOrUnionSpecifier(CParser.StructOrUnionSpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structOrUnion}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructOrUnion(CParser.StructOrUnionContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarationList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclarationList(CParser.StructDeclarationListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarationListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclarationListPrime(CParser.StructDeclarationListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclaration(CParser.StructDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#specifierQualifierList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSpecifierQualifierList(CParser.SpecifierQualifierListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaratorList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclaratorList(CParser.StructDeclaratorListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclaratorListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclaratorListPrime(CParser.StructDeclaratorListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#structDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStructDeclarator(CParser.StructDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#enumSpecifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEnumSpecifier(CParser.EnumSpecifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#enumeratorList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEnumeratorList(CParser.EnumeratorListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#enumeratorListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEnumeratorListPrime(CParser.EnumeratorListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#enumerator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEnumerator(CParser.EnumeratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifier}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeQualifier(CParser.TypeQualifierContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#declarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarator(CParser.DeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#directDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDirectDeclarator(CParser.DirectDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#directDeclaratorPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDirectDeclaratorPrime(CParser.DirectDeclaratorPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#pointer}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPointer(CParser.PointerContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifierList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeQualifierList(CParser.TypeQualifierListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#typeQualifierListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeQualifierListPrime(CParser.TypeQualifierListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#parameterTypeList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterTypeList(CParser.ParameterTypeListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#parameterList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterList(CParser.ParameterListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#parameterListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterListPrime(CParser.ParameterListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#parameterDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParameterDeclaration(CParser.ParameterDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#identifierList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentifierList(CParser.IdentifierListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#identifierListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentifierListPrime(CParser.IdentifierListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#typeName}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTypeName(CParser.TypeNameContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#abstractDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAbstractDeclarator(CParser.AbstractDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#directAbstractDeclarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDirectAbstractDeclarator(CParser.DirectAbstractDeclaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#directAbstractDeclaratorPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDirectAbstractDeclaratorPrime(CParser.DirectAbstractDeclaratorPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initializer}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializer(CParser.InitializerContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initializerList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializerList(CParser.InitializerListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#initializerListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializerListPrime(CParser.InitializerListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#statement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatement(CParser.StatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#labeledStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLabeledStatement(CParser.LabeledStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#compoundStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompoundStatement(CParser.CompoundStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#declarationList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationList(CParser.DeclarationListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#declarationListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationListPrime(CParser.DeclarationListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#statementList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatementList(CParser.StatementListContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#statementListPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStatementListPrime(CParser.StatementListPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#expressionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionStatement(CParser.ExpressionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#selectionStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSelectionStatement(CParser.SelectionStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#iterationStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIterationStatement(CParser.IterationStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#jumpStatement}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitJumpStatement(CParser.JumpStatementContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(CParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#programPrime}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgramPrime(CParser.ProgramPrimeContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#externalDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExternalDeclaration(CParser.ExternalDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link CParser#functionDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDefinition(CParser.FunctionDefinitionContext ctx);
}