package main.java.utils;

public class Prettier {
    public static String addTab(String str) {
        String[] sentences = str.split("\n");

        if (sentences.length > 0) sentences[0] = "|----" + sentences[0];
        for (int i = 1; i < sentences.length; i++) {
            sentences[i] = "|\t" + sentences[i];
        }

        return String.join("\n", sentences);
    }
}
