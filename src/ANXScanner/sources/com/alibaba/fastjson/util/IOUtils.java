package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.asm.Opcodes;
import com.taobao.ma.decode.DecodeType;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;

public class IOUtils {
    public static final char[] ASCII_CHARS = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
    public static final char[] CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    public static final Properties DEFAULT_PROPERTIES = new Properties();
    public static final char[] DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final char[] DigitOnes = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    static final char[] DigitTens = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
    public static final String FASTJSON_COMPATIBLEWITHFIELDNAME = "fastjson.compatibleWithFieldName";
    public static final String FASTJSON_COMPATIBLEWITHJAVABEAN = "fastjson.compatibleWithJavaBean";
    public static final String FASTJSON_PROPERTIES = "fastjson.properties";
    public static final int[] IA = new int[256];
    public static final Charset UTF8 = Charset.forName("UTF-8");
    static final char[] digits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    public static final boolean[] firstIdentifierFlags = new boolean[256];
    public static final boolean[] identifierFlags = new boolean[256];
    public static final char[] replaceChars = new char[93];
    static final int[] sizeTable = new int[]{9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
    public static final byte[] specicalFlags_doubleQuotes = new byte[Opcodes.IF_ICMPLT];
    public static final boolean[] specicalFlags_doubleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];
    public static final byte[] specicalFlags_singleQuotes = new byte[Opcodes.IF_ICMPLT];
    public static final boolean[] specicalFlags_singleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];

    static {
        int i;
        char c = 0;
        while (c < firstIdentifierFlags.length) {
            if (c >= 'A' && c <= 'Z') {
                firstIdentifierFlags[c] = true;
            } else if (c >= 'a' && c <= 'z') {
                firstIdentifierFlags[c] = true;
            } else if (c == '_') {
                firstIdentifierFlags[c] = true;
            }
            c = (char) (c + 1);
        }
        c = 0;
        while (c < identifierFlags.length) {
            if (c >= 'A' && c <= 'Z') {
                identifierFlags[c] = true;
            } else if (c >= 'a' && c <= 'z') {
                identifierFlags[c] = true;
            } else if (c == '_') {
                identifierFlags[c] = true;
            } else if (c >= '0' && c <= '9') {
                identifierFlags[c] = true;
            }
            c = (char) (c + 1);
        }
        try {
            loadPropertiesFromFile();
        } catch (Throwable th) {
        }
        specicalFlags_doubleQuotes[0] = (byte) 4;
        specicalFlags_doubleQuotes[1] = (byte) 4;
        specicalFlags_doubleQuotes[2] = (byte) 4;
        specicalFlags_doubleQuotes[3] = (byte) 4;
        specicalFlags_doubleQuotes[4] = (byte) 4;
        specicalFlags_doubleQuotes[5] = (byte) 4;
        specicalFlags_doubleQuotes[6] = (byte) 4;
        specicalFlags_doubleQuotes[7] = (byte) 4;
        specicalFlags_doubleQuotes[8] = (byte) 1;
        specicalFlags_doubleQuotes[9] = (byte) 1;
        specicalFlags_doubleQuotes[10] = (byte) 1;
        specicalFlags_doubleQuotes[11] = (byte) 4;
        specicalFlags_doubleQuotes[12] = (byte) 1;
        specicalFlags_doubleQuotes[13] = (byte) 1;
        specicalFlags_doubleQuotes[34] = (byte) 1;
        specicalFlags_doubleQuotes[92] = (byte) 1;
        specicalFlags_singleQuotes[0] = (byte) 4;
        specicalFlags_singleQuotes[1] = (byte) 4;
        specicalFlags_singleQuotes[2] = (byte) 4;
        specicalFlags_singleQuotes[3] = (byte) 4;
        specicalFlags_singleQuotes[4] = (byte) 4;
        specicalFlags_singleQuotes[5] = (byte) 4;
        specicalFlags_singleQuotes[6] = (byte) 4;
        specicalFlags_singleQuotes[7] = (byte) 4;
        specicalFlags_singleQuotes[8] = (byte) 1;
        specicalFlags_singleQuotes[9] = (byte) 1;
        specicalFlags_singleQuotes[10] = (byte) 1;
        specicalFlags_singleQuotes[11] = (byte) 4;
        specicalFlags_singleQuotes[12] = (byte) 1;
        specicalFlags_singleQuotes[13] = (byte) 1;
        specicalFlags_singleQuotes[92] = (byte) 1;
        specicalFlags_singleQuotes[39] = (byte) 1;
        for (i = 14; i <= 31; i++) {
            specicalFlags_doubleQuotes[i] = (byte) 4;
            specicalFlags_singleQuotes[i] = (byte) 4;
        }
        for (i = DecodeType.ONE; i < Opcodes.IF_ICMPNE; i++) {
            specicalFlags_doubleQuotes[i] = (byte) 4;
            specicalFlags_singleQuotes[i] = (byte) 4;
        }
        for (i = 0; i < Opcodes.IF_ICMPLT; i++) {
            boolean z;
            boolean[] zArr = specicalFlags_doubleQuotesFlags;
            if (specicalFlags_doubleQuotes[i] != (byte) 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
            zArr = specicalFlags_singleQuotesFlags;
            if (specicalFlags_singleQuotes[i] != (byte) 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
        }
        replaceChars[0] = '0';
        replaceChars[1] = '1';
        replaceChars[2] = '2';
        replaceChars[3] = '3';
        replaceChars[4] = '4';
        replaceChars[5] = '5';
        replaceChars[6] = '6';
        replaceChars[7] = '7';
        replaceChars[8] = 'b';
        replaceChars[9] = 't';
        replaceChars[10] = 'n';
        replaceChars[11] = 'v';
        replaceChars[12] = 'f';
        replaceChars[13] = 'r';
        replaceChars[34] = '\"';
        replaceChars[39] = '\'';
        replaceChars[47] = '/';
        replaceChars[92] = '\\';
        Arrays.fill(IA, -1);
        int iS = CA.length;
        for (i = 0; i < iS; i++) {
            IA[CA[i]] = i;
        }
        IA[61] = 0;
    }

    public static String getStringProperty(String name) {
        String prop = null;
        try {
            prop = System.getProperty(name);
        } catch (SecurityException e) {
        }
        return prop == null ? DEFAULT_PROPERTIES.getProperty(name) : prop;
    }

    public static void loadPropertiesFromFile() {
        InputStream imputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() {
            public InputStream run() {
                ClassLoader cl = Thread.currentThread().getContextClassLoader();
                if (cl != null) {
                    return cl.getResourceAsStream(IOUtils.FASTJSON_PROPERTIES);
                }
                return ClassLoader.getSystemResourceAsStream(IOUtils.FASTJSON_PROPERTIES);
            }
        });
        if (imputStream != null) {
            try {
                DEFAULT_PROPERTIES.load(imputStream);
                imputStream.close();
            } catch (IOException e) {
            }
        }
    }

    public static void close(Closeable x) {
        if (x != null) {
            try {
                x.close();
            } catch (Exception e) {
            }
        }
    }

    public static int stringSize(long x) {
        long p = 10;
        for (int i = 1; i < 19; i++) {
            if (x < p) {
                return i;
            }
            p *= 10;
        }
        return 19;
    }

    public static void getChars(long i, int index, char[] buf) {
        int r;
        int q2;
        int charPos = index;
        char sign = 0;
        if (i < 0) {
            sign = '-';
            i = -i;
        }
        while (i > 2147483647L) {
            long q = i / 100;
            r = (int) (i - (((q << 6) + (q << 5)) + (q << 2)));
            i = q;
            charPos--;
            buf[charPos] = DigitOnes[r];
            charPos--;
            buf[charPos] = DigitTens[r];
        }
        int i2 = (int) i;
        while (i2 >= 65536) {
            q2 = i2 / 100;
            r = i2 - (((q2 << 6) + (q2 << 5)) + (q2 << 2));
            i2 = q2;
            charPos--;
            buf[charPos] = DigitOnes[r];
            charPos--;
            buf[charPos] = DigitTens[r];
        }
        do {
            q2 = (52429 * i2) >>> 19;
            charPos--;
            buf[charPos] = digits[i2 - ((q2 << 3) + (q2 << 1))];
            i2 = q2;
        } while (i2 != 0);
        if (sign != 0) {
            buf[charPos - 1] = sign;
        }
    }

    public static void getChars(int i, int index, char[] buf) {
        int q;
        int p = index;
        char sign = 0;
        if (i < 0) {
            sign = '-';
            i = -i;
        }
        while (i >= 65536) {
            q = i / 100;
            int r = i - (((q << 6) + (q << 5)) + (q << 2));
            i = q;
            p--;
            buf[p] = DigitOnes[r];
            p--;
            buf[p] = DigitTens[r];
        }
        do {
            q = (52429 * i) >>> 19;
            p--;
            buf[p] = digits[i - ((q << 3) + (q << 1))];
            i = q;
        } while (i != 0);
        if (sign != 0) {
            buf[p - 1] = sign;
        }
    }

    public static void getChars(byte b, int index, char[] buf) {
        int i = b;
        int charPos = index;
        char sign = 0;
        if (i < (byte) 0) {
            sign = '-';
            i = -i;
        }
        do {
            int q = (52429 * i) >>> 19;
            charPos--;
            buf[charPos] = digits[i - ((q << 3) + (q << 1))];
            i = q;
        } while (i != 0);
        if (sign != 0) {
            buf[charPos - 1] = sign;
        }
    }

    public static int stringSize(int x) {
        int i = 0;
        while (x > sizeTable[i]) {
            i++;
        }
        return i + 1;
    }

    public static void decode(CharsetDecoder charsetDecoder, ByteBuffer byteBuf, CharBuffer charByte) {
        try {
            CoderResult cr = charsetDecoder.decode(byteBuf, charByte, true);
            if (!cr.isUnderflow()) {
                cr.throwException();
            }
            cr = charsetDecoder.flush(charByte);
            if (!cr.isUnderflow()) {
                cr.throwException();
            }
        } catch (CharacterCodingException x) {
            throw new JSONException("utf8 decode error, " + x.getMessage(), x);
        }
    }

    public static boolean firstIdentifier(char ch) {
        return ch < firstIdentifierFlags.length && firstIdentifierFlags[ch];
    }

    public static boolean isIdent(char ch) {
        return ch < identifierFlags.length && identifierFlags[ch];
    }

    public static byte[] decodeBase64(char[] chars, int offset, int charsLen) {
        if (charsLen == 0) {
            return new byte[0];
        }
        int sepCnt;
        int i;
        int i2;
        int sIx = offset;
        int eIx = (offset + charsLen) - 1;
        while (sIx < eIx && IA[chars[sIx]] < 0) {
            sIx++;
        }
        while (eIx > 0 && IA[chars[eIx]] < 0) {
            eIx--;
        }
        int pad = chars[eIx] == '=' ? chars[eIx + -1] == '=' ? 2 : 1 : 0;
        int cCnt = (eIx - sIx) + 1;
        if (charsLen > 76) {
            sepCnt = (chars[76] == 13 ? cCnt / 78 : 0) << 1;
        } else {
            sepCnt = 0;
        }
        int len = (((cCnt - sepCnt) * 6) >> 3) - pad;
        byte[] bytes = new byte[len];
        int cc = 0;
        int eLen = (len / 3) * 3;
        int d = 0;
        int sIx2 = sIx;
        while (d < eLen) {
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            i = (((IA[chars[sIx2]] << 18) | (IA[chars[sIx]] << 12)) | (IA[chars[sIx2]] << 6)) | IA[chars[sIx]];
            i2 = d + 1;
            bytes[d] = (byte) (i >> 16);
            d = i2 + 1;
            bytes[i2] = (byte) (i >> 8);
            i2 = d + 1;
            bytes[d] = (byte) i;
            if (sepCnt > 0) {
                cc++;
                if (cc == 19) {
                    sIx = sIx2 + 2;
                    cc = 0;
                    d = i2;
                    sIx2 = sIx;
                }
            }
            sIx = sIx2;
            d = i2;
            sIx2 = sIx;
        }
        if (d < len) {
            i = 0;
            int j = 0;
            while (sIx2 <= eIx - pad) {
                i |= IA[chars[sIx2]] << (18 - (j * 6));
                j++;
                sIx2++;
            }
            int r = 16;
            while (d < len) {
                i2 = d + 1;
                bytes[d] = (byte) (i >> r);
                r -= 8;
                d = i2;
            }
        }
        i2 = d;
        sIx = sIx2;
        return bytes;
    }

    public static byte[] decodeBase64(String chars, int offset, int charsLen) {
        if (charsLen == 0) {
            return new byte[0];
        }
        int sepCnt;
        int i;
        int i2;
        int sIx = offset;
        int eIx = (offset + charsLen) - 1;
        while (sIx < eIx && IA[chars.charAt(sIx)] < 0) {
            sIx++;
        }
        while (eIx > 0 && IA[chars.charAt(eIx)] < 0) {
            eIx--;
        }
        int pad = chars.charAt(eIx) == '=' ? chars.charAt(eIx + -1) == '=' ? 2 : 1 : 0;
        int cCnt = (eIx - sIx) + 1;
        if (charsLen > 76) {
            sepCnt = (chars.charAt(76) == 13 ? cCnt / 78 : 0) << 1;
        } else {
            sepCnt = 0;
        }
        int len = (((cCnt - sepCnt) * 6) >> 3) - pad;
        byte[] bytes = new byte[len];
        int cc = 0;
        int eLen = (len / 3) * 3;
        int d = 0;
        int sIx2 = sIx;
        while (d < eLen) {
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            i = (((IA[chars.charAt(sIx2)] << 18) | (IA[chars.charAt(sIx)] << 12)) | (IA[chars.charAt(sIx2)] << 6)) | IA[chars.charAt(sIx)];
            i2 = d + 1;
            bytes[d] = (byte) (i >> 16);
            d = i2 + 1;
            bytes[i2] = (byte) (i >> 8);
            i2 = d + 1;
            bytes[d] = (byte) i;
            if (sepCnt > 0) {
                cc++;
                if (cc == 19) {
                    sIx = sIx2 + 2;
                    cc = 0;
                    d = i2;
                    sIx2 = sIx;
                }
            }
            sIx = sIx2;
            d = i2;
            sIx2 = sIx;
        }
        if (d < len) {
            i = 0;
            int j = 0;
            while (sIx2 <= eIx - pad) {
                i |= IA[chars.charAt(sIx2)] << (18 - (j * 6));
                j++;
                sIx2++;
            }
            int r = 16;
            while (d < len) {
                i2 = d + 1;
                bytes[d] = (byte) (i >> r);
                r -= 8;
                d = i2;
            }
        }
        i2 = d;
        sIx = sIx2;
        return bytes;
    }

    public static byte[] decodeBase64(String s) {
        int sLen = s.length();
        if (sLen == 0) {
            return new byte[0];
        }
        int sepCnt;
        int i;
        int i2;
        int sIx = 0;
        int eIx = sLen - 1;
        while (sIx < eIx && IA[s.charAt(sIx) & 255] < 0) {
            sIx++;
        }
        while (eIx > 0 && IA[s.charAt(eIx) & 255] < 0) {
            eIx--;
        }
        int pad = s.charAt(eIx) == '=' ? s.charAt(eIx + -1) == '=' ? 2 : 1 : 0;
        int cCnt = (eIx - sIx) + 1;
        if (sLen > 76) {
            sepCnt = (s.charAt(76) == 13 ? cCnt / 78 : 0) << 1;
        } else {
            sepCnt = 0;
        }
        int len = (((cCnt - sepCnt) * 6) >> 3) - pad;
        byte[] dArr = new byte[len];
        int cc = 0;
        int eLen = (len / 3) * 3;
        int d = 0;
        int sIx2 = sIx;
        while (d < eLen) {
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            sIx = sIx2 + 1;
            sIx2 = sIx + 1;
            i = (((IA[s.charAt(sIx2)] << 18) | (IA[s.charAt(sIx)] << 12)) | (IA[s.charAt(sIx2)] << 6)) | IA[s.charAt(sIx)];
            i2 = d + 1;
            dArr[d] = (byte) (i >> 16);
            d = i2 + 1;
            dArr[i2] = (byte) (i >> 8);
            i2 = d + 1;
            dArr[d] = (byte) i;
            if (sepCnt > 0) {
                cc++;
                if (cc == 19) {
                    sIx = sIx2 + 2;
                    cc = 0;
                    d = i2;
                    sIx2 = sIx;
                }
            }
            sIx = sIx2;
            d = i2;
            sIx2 = sIx;
        }
        if (d < len) {
            i = 0;
            int j = 0;
            while (sIx2 <= eIx - pad) {
                i |= IA[s.charAt(sIx2)] << (18 - (j * 6));
                j++;
                sIx2++;
            }
            int r = 16;
            while (d < len) {
                i2 = d + 1;
                dArr[d] = (byte) (i >> r);
                r -= 8;
                d = i2;
            }
        }
        i2 = d;
        sIx = sIx2;
        return dArr;
    }

    public static int encodeUTF8(char[] chars, int offset, int len, byte[] bytes) {
        int dp;
        int sl = offset + len;
        int dlASCII = 0 + Math.min(len, bytes.length);
        int dp2 = 0;
        int offset2 = offset;
        while (dp2 < dlASCII && chars[offset2] < 128) {
            dp = dp2 + 1;
            offset = offset2 + 1;
            bytes[dp2] = (byte) chars[offset2];
            dp2 = dp;
            offset2 = offset;
        }
        while (offset2 < sl) {
            offset = offset2 + 1;
            char c = chars[offset2];
            if (c < 128) {
                dp = dp2 + 1;
                bytes[dp2] = (byte) c;
            } else if (c < 2048) {
                dp = dp2 + 1;
                bytes[dp2] = (byte) ((c >> 6) | Opcodes.CHECKCAST);
                dp2 = dp + 1;
                bytes[dp] = (byte) ((c & 63) | 128);
                dp = dp2;
            } else if (c < 55296 || c >= 57344) {
                dp = dp2 + 1;
                bytes[dp2] = (byte) ((c >> 12) | 224);
                dp2 = dp + 1;
                bytes[dp] = (byte) (((c >> 6) & 63) | 128);
                dp = dp2 + 1;
                bytes[dp2] = (byte) ((c & 63) | 128);
            } else {
                int uc;
                int ip = offset - 1;
                if (Character.isHighSurrogate(c)) {
                    if (sl - ip < 2) {
                        uc = -1;
                    } else {
                        char d = chars[ip + 1];
                        if (Character.isLowSurrogate(d)) {
                            uc = Character.toCodePoint(c, d);
                        } else {
                            throw new JSONException("encodeUTF8 error", new MalformedInputException(1));
                        }
                    }
                } else if (Character.isLowSurrogate(c)) {
                    throw new JSONException("encodeUTF8 error", new MalformedInputException(1));
                } else {
                    char uc2 = c;
                }
                if (uc2 < 0) {
                    dp = dp2 + 1;
                    bytes[dp2] = (byte) 63;
                } else {
                    dp = dp2 + 1;
                    bytes[dp2] = (byte) ((uc2 >> 18) | 240);
                    dp2 = dp + 1;
                    bytes[dp] = (byte) (((uc2 >> 12) & 63) | 128);
                    dp = dp2 + 1;
                    bytes[dp2] = (byte) (((uc2 >> 6) & 63) | 128);
                    dp2 = dp + 1;
                    bytes[dp] = (byte) ((uc2 & 63) | 128);
                    offset++;
                    dp = dp2;
                }
            }
            dp2 = dp;
            offset2 = offset;
        }
        return dp2;
    }

    public static int decodeUTF8(byte[] sa, int sp, int len, char[] da) {
        int dp;
        int sl = sp + len;
        int dlASCII = Math.min(len, da.length);
        int dp2 = 0;
        int sp2 = sp;
        while (dp2 < dlASCII && sa[sp2] >= (byte) 0) {
            dp = dp2 + 1;
            sp = sp2 + 1;
            da[dp2] = (char) sa[sp2];
            dp2 = dp;
            sp2 = sp;
        }
        while (sp2 < sl) {
            sp = sp2 + 1;
            int b1 = sa[sp2];
            int b2;
            if (b1 >= 0) {
                dp = dp2 + 1;
                da[dp2] = (char) b1;
                dp2 = dp;
                sp2 = sp;
            } else if ((b1 >> 5) != -2 || (b1 & 30) == 0) {
                int b3;
                if ((b1 >> 4) == -2) {
                    if (sp + 1 >= sl) {
                        return -1;
                    }
                    sp2 = sp + 1;
                    b2 = sa[sp];
                    sp = sp2 + 1;
                    b3 = sa[sp2];
                    if ((b1 == -32 && (b2 & 224) == 128) || (b2 & Opcodes.CHECKCAST) != 128 || (b3 & Opcodes.CHECKCAST) != 128) {
                        return -1;
                    }
                    char c = (char) (((b1 << 12) ^ (b2 << 6)) ^ (-123008 ^ b3));
                    boolean isSurrogate = c >= 55296 && c < 57344;
                    if (isSurrogate) {
                        return -1;
                    }
                    dp = dp2 + 1;
                    da[dp2] = c;
                    dp2 = dp;
                    sp2 = sp;
                } else if ((b1 >> 3) != -2) {
                    return -1;
                } else {
                    if (sp + 2 >= sl) {
                        return -1;
                    }
                    sp2 = sp + 1;
                    b2 = sa[sp];
                    sp = sp2 + 1;
                    b3 = sa[sp2];
                    sp2 = sp + 1;
                    int b4 = sa[sp];
                    int uc = (((b1 << 18) ^ (b2 << 12)) ^ (b3 << 6)) ^ (3678080 ^ b4);
                    if ((b2 & Opcodes.CHECKCAST) == 128 && (b3 & Opcodes.CHECKCAST) == 128 && (b4 & Opcodes.CHECKCAST) == 128 && Character.isSupplementaryCodePoint(uc)) {
                        dp = dp2 + 1;
                        da[dp2] = (char) ((uc >>> 10) + 55232);
                        dp2 = dp + 1;
                        da[dp] = (char) ((uc & 1023) + 56320);
                    } else {
                        sp = sp2;
                        return -1;
                    }
                }
            } else if (sp >= sl) {
                return -1;
            } else {
                sp2 = sp + 1;
                b2 = sa[sp];
                if ((b2 & Opcodes.CHECKCAST) != 128) {
                    sp = sp2;
                    return -1;
                }
                dp = dp2 + 1;
                da[dp2] = (char) (((b1 << 6) ^ b2) ^ 3968);
                dp2 = dp;
            }
        }
        return dp2;
    }

    public static String readAll(Reader reader) {
        StringBuilder buf = new StringBuilder();
        try {
            char[] chars = new char[2048];
            while (true) {
                int len = reader.read(chars, 0, chars.length);
                if (len < 0) {
                    return buf.toString();
                }
                buf.append(chars, 0, len);
            }
        } catch (Exception ex) {
            throw new JSONException("read string from reader error", ex);
        }
    }

    public static boolean isValidJsonpQueryParam(String value) {
        if (value == null || value.length() == 0) {
            return false;
        }
        int len = value.length();
        for (int i = 0; i < len; i++) {
            char ch = value.charAt(i);
            if (ch != '.' && !isIdent(ch)) {
                return false;
            }
        }
        return true;
    }
}
