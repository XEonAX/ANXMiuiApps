package com.alibaba.fastjson;

public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase;

    public String translate(String propertyName) {
        StringBuilder buf;
        int i;
        char ch;
        char ch_ucase;
        char[] chars;
        switch (this) {
            case SnakeCase:
                buf = new StringBuilder();
                for (i = 0; i < propertyName.length(); i++) {
                    ch = propertyName.charAt(i);
                    if (ch < 'A' || ch > 'Z') {
                        buf.append(ch);
                    } else {
                        ch_ucase = (char) (ch + 32);
                        if (i > 0) {
                            buf.append('_');
                        }
                        buf.append(ch_ucase);
                    }
                }
                return buf.toString();
            case KebabCase:
                buf = new StringBuilder();
                for (i = 0; i < propertyName.length(); i++) {
                    ch = propertyName.charAt(i);
                    if (ch < 'A' || ch > 'Z') {
                        buf.append(ch);
                    } else {
                        ch_ucase = (char) (ch + 32);
                        if (i > 0) {
                            buf.append('-');
                        }
                        buf.append(ch_ucase);
                    }
                }
                return buf.toString();
            case PascalCase:
                ch = propertyName.charAt(0);
                if (ch < 'a' || ch > 'z') {
                    return propertyName;
                }
                chars = propertyName.toCharArray();
                chars[0] = (char) (chars[0] - 32);
                return new String(chars);
            case CamelCase:
                ch = propertyName.charAt(0);
                if (ch < 'A' || ch > 'Z') {
                    return propertyName;
                }
                chars = propertyName.toCharArray();
                chars[0] = (char) (chars[0] + 32);
                return new String(chars);
            default:
                return propertyName;
        }
    }
}
