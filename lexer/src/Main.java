import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;


public class Main {
    public static void main(String[] args) throws IOException {
        CharStream input = CharStreams.fromFileName(args[0]);
        C lex = new C(input);
        Token token;
        while ((token = lex.nextToken()).getType() != -1) {
            System.out.printf("%s:%d:%s: <%s, %s>\n", args[0],
                    token.getLine(), token.getStartIndex(), token.getText(),
                    C.VOCABULARY.getSymbolicName(token.getType()));
        }
    }
}
