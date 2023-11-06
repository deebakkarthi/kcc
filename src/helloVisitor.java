// Generated from /Users/deebakkarthi/Library/CloudStorage/OneDrive-AmritaVishwaVidyapeetham/senior/semester_7/19CSE401/lab/2023_08_08/antlerTest/src/hello.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link helloParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface helloVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link helloParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStmt(helloParser.StmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link helloParser#assignstm}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignstm(helloParser.AssignstmContext ctx);
	/**
	 * Visit a parse tree produced by {@link helloParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr(helloParser.ExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link helloParser#term}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTerm(helloParser.TermContext ctx);
	/**
	 * Visit a parse tree produced by {@link helloParser#factor}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFactor(helloParser.FactorContext ctx);
}