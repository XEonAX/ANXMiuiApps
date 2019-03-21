package com.xiaomi.smack.util;

import com.xiaomi.channel.commonutils.string.Base64Coder;
import java.util.Random;

public class StringUtils {
    private static final char[] AMP_ENCODE = "&amp;".toCharArray();
    private static final char[] APOS_ENCODE = "&apos;".toCharArray();
    private static final char[] GT_ENCODE = "&gt;".toCharArray();
    private static final char[] LT_ENCODE = "&lt;".toCharArray();
    private static final char[] QUOTE_ENCODE = "&quot;".toCharArray();
    private static char[] numbersAndLetters = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private static Random randGen = new Random();

    public static String escapeForXML(String string) {
        if (string == null) {
            return null;
        }
        int i = 0;
        int last = 0;
        char[] input = string.toCharArray();
        int len = input.length;
        StringBuilder out = new StringBuilder((int) (((double) len) * 1.3d));
        while (i < len) {
            char ch = input[i];
            if (ch <= '>') {
                if (ch == '<') {
                    if (i > last) {
                        out.append(input, last, i - last);
                    }
                    last = i + 1;
                    out.append(LT_ENCODE);
                } else if (ch == '>') {
                    if (i > last) {
                        out.append(input, last, i - last);
                    }
                    last = i + 1;
                    out.append(GT_ENCODE);
                } else if (ch == '&') {
                    if (i > last) {
                        out.append(input, last, i - last);
                    }
                    if (len <= i + 5 || input[i + 1] != '#' || !Character.isDigit(input[i + 2]) || !Character.isDigit(input[i + 3]) || !Character.isDigit(input[i + 4]) || input[i + 5] != ';') {
                        last = i + 1;
                        out.append(AMP_ENCODE);
                    }
                } else if (ch == '\"') {
                    if (i > last) {
                        out.append(input, last, i - last);
                    }
                    last = i + 1;
                    out.append(QUOTE_ENCODE);
                } else if (ch == '\'') {
                    if (i > last) {
                        out.append(input, last, i - last);
                    }
                    last = i + 1;
                    out.append(APOS_ENCODE);
                }
            }
            i++;
        }
        if (last == 0) {
            return string;
        }
        if (i > last) {
            out.append(input, last, i - last);
        }
        return out.toString();
    }

    public static final String unescapeFromXML(String string) {
        return replace(replace(replace(replace(replace(string, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", "&");
    }

    public static final String replace(String string, String oldString, String newString) {
        if (string == null) {
            return null;
        }
        int i = string.indexOf(oldString, 0);
        if (i < 0) {
            return string;
        }
        char[] string2 = string.toCharArray();
        char[] newString2 = newString.toCharArray();
        int oLength = oldString.length();
        StringBuilder buf = new StringBuilder(string2.length);
        buf.append(string2, 0, i).append(newString2);
        while (true) {
            i += oLength;
            int j = i;
            i = string.indexOf(oldString, i);
            if (i > 0) {
                buf.append(string2, j, i - j).append(newString2);
            } else {
                buf.append(string2, j, string2.length - j);
                return buf.toString();
            }
        }
    }

    public static String encodeBase64(byte[] data) {
        return String.valueOf(Base64Coder.encode(data));
    }

    public static String randomString(int length) {
        if (length < 1) {
            return null;
        }
        char[] randBuffer = new char[length];
        for (int i = 0; i < randBuffer.length; i++) {
            randBuffer[i] = numbersAndLetters[randGen.nextInt(71)];
        }
        return new String(randBuffer);
    }
}
