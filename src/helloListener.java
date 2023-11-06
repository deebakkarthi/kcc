// Generated from /Users/deebakkarthi/Library/CloudStorage/OneDrive-AmritaVishwaVidyapeetham/senior/semester_7/19CSE401/lab/2023_08_08/antlerTest/src/hello.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link helloParser}.
 */
public interface helloListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link helloParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterStmt(helloParser.StmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link helloParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitStmt(helloParser.StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link helloParser#assignstm}.
	 * @param ctx the parse tree
	 */
	void enterAssignstm(helloParser.AssignstmContext ctx);
	/**
	 * Exit a parse tree produced by {@link helloParser#assignstm}.
	 * @param ctx the parse tree
	 */
	void exitAssignstm(helloParser.AssignstmContext ctx);
	/**
	 * Enter a parse tree produced by {@link helloParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(helloParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link helloParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(helloParser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link helloParser#term}.
	 * @param ctx the parse tree
	 */
	void enterTerm(helloParser.TermContext ctx);
	/**
	 * Exit a parse tree produced by {@link helloParser#term}.
	 * @param ctx the parse tree
	 */
	void exitTerm(helloParser.TermContext ctx);
	/**
	 * Enter a parse tree produced by {@link helloParser#factor}.
	 * @param ctx the parse tree
	 */
	void enterFactor(helloParser.FactorContext ctx);
	/**
	 * Exit a parse tree produced by {@link helloParser#factor}.
	 * @param ctx the parse tree
	 */
	void exitFactor(helloParser.FactorContext ctx);
}