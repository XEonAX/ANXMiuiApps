package com.alibaba.fastjson.asm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ClassReader {
    public final byte[] b;
    public final int header;
    private final int[] items;
    private final int maxStringLength;
    private final String[] strings;

    public ClassReader(InputStream is) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buf = new byte[1024];
        while (true) {
            int len = is.read(buf);
            if (len == -1) {
                break;
            } else if (len > 0) {
                out.write(buf, 0, len);
            }
        }
        is.close();
        this.b = out.toByteArray();
        this.items = new int[readUnsignedShort(8)];
        int n = this.items.length;
        this.strings = new String[n];
        int max = 0;
        int index = 10;
        int i = 1;
        while (i < n) {
            int size;
            this.items[i] = index + 1;
            switch (this.b[index]) {
                case (byte) 1:
                    size = readUnsignedShort(index + 1) + 3;
                    if (size <= max) {
                        break;
                    }
                    max = size;
                    break;
                case (byte) 3:
                case (byte) 4:
                case (byte) 9:
                case (byte) 10:
                case (byte) 11:
                case (byte) 12:
                case (byte) 18:
                    size = 5;
                    break;
                case (byte) 5:
                case (byte) 6:
                    size = 9;
                    i++;
                    break;
                case (byte) 15:
                    size = 4;
                    break;
                default:
                    size = 3;
                    break;
            }
            index += size;
            i++;
        }
        this.maxStringLength = max;
        this.header = index;
    }

    public void accept(TypeCollector classVisitor) {
        int i;
        int j;
        char[] c = new char[this.maxStringLength];
        int u = this.header;
        int v = this.items[readUnsignedShort(u + 4)];
        int len = readUnsignedShort(u + 6);
        u += 8;
        for (i = 0; i < len; i++) {
            u += 2;
        }
        v = u;
        v += 2;
        for (i = readUnsignedShort(v); i > 0; i--) {
            v += 8;
            for (j = readUnsignedShort(v + 6); j > 0; j--) {
                v += readInt(v + 2) + 6;
            }
        }
        v += 2;
        for (i = readUnsignedShort(v); i > 0; i--) {
            v += 8;
            for (j = readUnsignedShort(v + 6); j > 0; j--) {
                v += readInt(v + 2) + 6;
            }
        }
        v += 2;
        for (i = readUnsignedShort(v); i > 0; i--) {
            v += readInt(v + 2) + 6;
        }
        u += 2;
        for (i = readUnsignedShort(u); i > 0; i--) {
            u += 8;
            for (j = readUnsignedShort(u + 6); j > 0; j--) {
                u += readInt(u + 2) + 6;
            }
        }
        u += 2;
        for (i = readUnsignedShort(u); i > 0; i--) {
            u = readMethod(classVisitor, c, u);
        }
    }

    private int readMethod(TypeCollector classVisitor, char[] c, int u) {
        int j;
        String attrName;
        int w;
        int access = readUnsignedShort(u);
        String name = readUTF8(u + 2, c);
        String desc = readUTF8(u + 4, c);
        int v = 0;
        u += 8;
        for (j = readUnsignedShort(u + 6); j > 0; j--) {
            attrName = readUTF8(u, c);
            int attrSize = readInt(u + 2);
            u += 6;
            if (attrName.equals("Code")) {
                v = u;
            }
            u += attrSize;
        }
        if (null != null) {
            w = 0 + 2;
            for (j = 0; j < readUnsignedShort(w); j++) {
                w += 2;
            }
        }
        MethodCollector mv = classVisitor.visitMethod(access, name, desc);
        if (!(mv == null || v == 0)) {
            v += 8;
            int codeStart = v;
            v += readInt(v + 4);
            v += 2;
            for (j = readUnsignedShort(v); j > 0; j--) {
                v += 8;
            }
            int varTable = 0;
            int varTypeTable = 0;
            v += 2;
            for (j = readUnsignedShort(v); j > 0; j--) {
                attrName = readUTF8(v, c);
                if (attrName.equals("LocalVariableTable")) {
                    varTable = v + 6;
                } else if (attrName.equals("LocalVariableTypeTable")) {
                    varTypeTable = v + 6;
                }
                v += readInt(v + 2) + 6;
            }
            v = codeStart;
            if (varTable != 0) {
                int k;
                if (varTypeTable != 0) {
                    k = readUnsignedShort(varTypeTable) * 3;
                    w = varTypeTable + 2;
                    int[] typeTable = new int[k];
                    while (k > 0) {
                        k--;
                        typeTable[k] = w + 6;
                        k--;
                        typeTable[k] = readUnsignedShort(w + 8);
                        k--;
                        typeTable[k] = readUnsignedShort(w);
                        w += 10;
                    }
                }
                w = varTable + 2;
                for (k = readUnsignedShort(varTable); k > 0; k--) {
                    mv.visitLocalVariable(readUTF8(w + 4, c), readUnsignedShort(w + 8));
                    w += 10;
                }
            }
        }
        return u;
    }

    private int readUnsignedShort(int index) {
        byte[] b = this.b;
        return ((b[index] & 255) << 8) | (b[index + 1] & 255);
    }

    private int readInt(int index) {
        byte[] b = this.b;
        return ((((b[index] & 255) << 24) | ((b[index + 1] & 255) << 16)) | ((b[index + 2] & 255) << 8)) | (b[index + 3] & 255);
    }

    private String readUTF8(int index, char[] buf) {
        int item = readUnsignedShort(index);
        String s = this.strings[item];
        if (s != null) {
            return s;
        }
        index = this.items[item];
        String[] strArr = this.strings;
        s = readUTF(index + 2, readUnsignedShort(index), buf);
        strArr[item] = s;
        return s;
    }

    private String readUTF(int index, int utfLen, char[] buf) {
        int endIndex = index + utfLen;
        byte[] b = this.b;
        int st = 0;
        char cc = 0;
        int strLen = 0;
        int index2 = index;
        while (index2 < endIndex) {
            int strLen2;
            index = index2 + 1;
            int c = b[index2];
            switch (st) {
                case 0:
                    c &= 255;
                    if (c >= 128) {
                        if (c < 224 && c > 191) {
                            cc = (char) (c & 31);
                            st = 1;
                            strLen2 = strLen;
                            break;
                        }
                        cc = (char) (c & 15);
                        st = 2;
                        strLen2 = strLen;
                        break;
                    }
                    strLen2 = strLen + 1;
                    buf[strLen] = (char) c;
                    break;
                case 1:
                    strLen2 = strLen + 1;
                    buf[strLen] = (char) ((cc << 6) | (c & 63));
                    st = 0;
                    break;
                case 2:
                    cc = (char) ((cc << 6) | (c & 63));
                    st = 1;
                    strLen2 = strLen;
                    break;
                default:
                    strLen2 = strLen;
                    break;
            }
            strLen = strLen2;
            index2 = index;
        }
        return new String(buf, 0, strLen);
    }
}
