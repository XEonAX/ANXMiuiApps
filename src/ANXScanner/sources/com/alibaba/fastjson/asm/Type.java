package com.alibaba.fastjson.asm;

public class Type {
    public static final Type BOOLEAN_TYPE = new Type(1, null, 1509950721, 1);
    public static final Type BYTE_TYPE = new Type(3, null, 1107297537, 1);
    public static final Type CHAR_TYPE = new Type(2, null, 1124075009, 1);
    public static final Type DOUBLE_TYPE = new Type(8, null, 1141048066, 1);
    public static final Type FLOAT_TYPE = new Type(6, null, 1174536705, 1);
    public static final Type INT_TYPE = new Type(5, null, 1224736769, 1);
    public static final Type LONG_TYPE = new Type(7, null, 1241579778, 1);
    public static final Type SHORT_TYPE = new Type(4, null, 1392510721, 1);
    public static final Type VOID_TYPE = new Type(0, null, 1443168256, 1);
    private final char[] buf;
    private final int len;
    private final int off;
    protected final int sort;

    private Type(int sort, char[] buf, int off, int len) {
        this.sort = sort;
        this.buf = buf;
        this.off = off;
        this.len = len;
    }

    public static Type getType(String typeDescriptor) {
        return getType(typeDescriptor.toCharArray(), 0);
    }

    public static int getArgumentsAndReturnSizes(String desc) {
        int c;
        char car;
        int n = 1;
        int c2 = 1;
        while (true) {
            c = c2 + 1;
            car = desc.charAt(c2);
            if (car == ')') {
                break;
            } else if (car == 'L') {
                while (true) {
                    c2 = c;
                    c = c2 + 1;
                    if (desc.charAt(c2) == ';') {
                        break;
                    }
                }
                n++;
                c2 = c;
            } else if (car == 'D' || car == 'J') {
                n += 2;
                c2 = c;
            } else {
                n++;
                c2 = c;
            }
        }
        car = desc.charAt(c);
        int i = n << 2;
        int i2 = car == 'V' ? 0 : (car == 'D' || car == 'J') ? 2 : 1;
        return i2 | i;
    }

    private static Type getType(char[] buf, int off) {
        int len;
        switch (buf[off]) {
            case 'B':
                return BYTE_TYPE;
            case 'C':
                return CHAR_TYPE;
            case 'D':
                return DOUBLE_TYPE;
            case 'F':
                return FLOAT_TYPE;
            case 'I':
                return INT_TYPE;
            case 'J':
                return LONG_TYPE;
            case 'S':
                return SHORT_TYPE;
            case 'V':
                return VOID_TYPE;
            case 'Z':
                return BOOLEAN_TYPE;
            case '[':
                len = 1;
                while (buf[off + len] == '[') {
                    len++;
                }
                if (buf[off + len] == 'L') {
                    while (true) {
                        len++;
                        if (buf[off + len] != ';') {
                        }
                    }
                }
                return new Type(9, buf, off, len + 1);
            default:
                len = 1;
                while (buf[off + len] != ';') {
                    len++;
                }
                return new Type(10, buf, off + 1, len - 1);
        }
    }

    public String getInternalName() {
        return new String(this.buf, this.off, this.len);
    }

    String getDescriptor() {
        return new String(this.buf, this.off, this.len);
    }

    private int getDimensions() {
        int i = 1;
        while (this.buf[this.off + i] == '[') {
            i++;
        }
        return i;
    }

    static Type[] getArgumentTypes(String methodDescriptor) {
        char[] buf = methodDescriptor.toCharArray();
        int off = 1;
        int size = 0;
        while (true) {
            int off2 = off + 1;
            char car = buf[off];
            if (car == ')') {
                break;
            } else if (car == 'L') {
                while (true) {
                    off = off2;
                    off2 = off + 1;
                    if (buf[off] == ';') {
                        break;
                    }
                }
                size++;
                off = off2;
            } else if (car != '[') {
                size++;
                off = off2;
            } else {
                off = off2;
            }
        }
        Type[] args = new Type[size];
        off = 1;
        size = 0;
        while (buf[off] != ')') {
            args[size] = getType(buf, off);
            off += (args[size].sort == 10 ? 2 : 0) + args[size].len;
            size++;
        }
        return args;
    }

    protected String getClassName() {
        switch (this.sort) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuffer b = new StringBuffer(getType(this.buf, this.off + getDimensions()).getClassName());
                for (int i = getDimensions(); i > 0; i--) {
                    b.append("[]");
                }
                return b.toString();
            default:
                return new String(this.buf, this.off, this.len).replace('/', '.');
        }
    }
}
