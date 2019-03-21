package org.keyczar.util;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.i18n.Messages;

public class Base64Coder {
    private static final char[] ALPHABET = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
    private static final byte[] DECODE = new byte[128];
    private static final char[] WHITESPACE = new char[]{9, 10, 13, ' ', 12};

    static {
        int i;
        int i2 = 0;
        for (i = 0; i < DECODE.length; i++) {
            DECODE[i] = (byte) -1;
        }
        for (char c : WHITESPACE) {
            DECODE[c] = (byte) -2;
        }
        while (i2 < ALPHABET.length) {
            DECODE[ALPHABET[i2]] = (byte) i2;
            i2++;
        }
    }

    private Base64Coder() {
    }

    @Deprecated
    public static byte[] decode(String str) throws Base64DecodingException {
        return decodeWebSafe(str);
    }

    public static byte[] decodeWebSafe(String str) throws Base64DecodingException {
        char[] toCharArray = str.toCharArray();
        int length = toCharArray.length;
        if (toCharArray[length - 1] == '=') {
            length--;
        }
        if (toCharArray[length - 1] == '=') {
            length--;
        }
        int i = 0;
        for (char isWhiteSpace : toCharArray) {
            if (isWhiteSpace(isWhiteSpace)) {
                i++;
            }
        }
        int i2 = length - i;
        length = (i2 / 4) * 3;
        switch (i2 % 4) {
            case 1:
                throw new Base64DecodingException(Messages.getString("Base64Coder.IllegalLength", Integer.valueOf(i2)));
            case 2:
                length++;
                break;
            case 3:
                length += 2;
                break;
        }
        byte[] bArr = new byte[length];
        length = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2 + i; i5++) {
            if (!isWhiteSpace(toCharArray[i5])) {
                i4 = (i4 << 6) | getByte(toCharArray[i5]);
                i3++;
            }
            if (i3 == 4) {
                i3 = length + 1;
                bArr[length] = (byte) (i4 >> 16);
                int i6 = i3 + 1;
                bArr[i3] = (byte) (i4 >> 8);
                length = i6 + 1;
                bArr[i6] = (byte) i4;
                i3 = 0;
                i4 = 0;
            }
        }
        switch (i3) {
            case 2:
                i = length + 1;
                bArr[length] = (byte) (i4 >> 4);
                break;
            case 3:
                i = length + 1;
                bArr[length] = (byte) (i4 >> 10);
                length = i + 1;
                bArr[i] = (byte) (i4 >> 2);
                break;
        }
        return bArr;
    }

    public static byte[] decodeMime(String str) throws Base64DecodingException {
        return decodeWebSafe(str.replace('+', '-').replace('/', '_'));
    }

    @Deprecated
    public static String encode(byte[] bArr) {
        return encodeWebSafe(bArr);
    }

    public static String encodeWebSafe(byte[] bArr) {
        int i = 0;
        int length = bArr.length / 3;
        int length2 = bArr.length % 3;
        int i2 = length * 4;
        switch (length2) {
            case 1:
                i2 += 2;
                break;
            case 2:
                i2 += 3;
                break;
        }
        char[] cArr = new char[i2];
        int i3 = 0;
        for (i2 = 0; i2 < length; i2++) {
            int i4 = i + 1;
            int i5 = i4 + 1;
            i4 = ((bArr[i4] & 255) << 8) | ((bArr[i] & 255) << 16);
            i = i5 + 1;
            i4 |= bArr[i5] & 255;
            i5 = i3 + 1;
            cArr[i3] = ALPHABET[(i4 >> 18) & 63];
            i3 = i5 + 1;
            cArr[i5] = ALPHABET[(i4 >> 12) & 63];
            i5 = i3 + 1;
            cArr[i3] = ALPHABET[(i4 >> 6) & 63];
            i3 = i5 + 1;
            cArr[i5] = ALPHABET[i4 & 63];
        }
        if (length2 > 0) {
            length = i + 1;
            i2 = (bArr[i] & 255) << 16;
            if (length2 == 2) {
                i = length + 1;
                i2 |= (bArr[length] & 255) << 8;
            }
            i = i3 + 1;
            cArr[i3] = ALPHABET[(i2 >> 18) & 63];
            i3 = i + 1;
            cArr[i] = ALPHABET[(i2 >> 12) & 63];
            if (length2 == 2) {
                i = i3 + 1;
                cArr[i3] = ALPHABET[(i2 >> 6) & 63];
            }
        }
        return new String(cArr);
    }

    public static String encodeMime(byte[] bArr, boolean z) {
        String replace = encodeWebSafe(bArr).replace('-', '+').replace('_', '/');
        switch (replace.length() % 4) {
            case 0:
                return replace;
            case 2:
                return replace + "==";
            case 3:
                return replace + "=";
            default:
                throw new RuntimeException("Bug in Base64 encoder");
        }
    }

    private static byte getByte(int i) throws Base64DecodingException {
        if (i >= 0 && i <= BaiduSceneResult.BANK_CARD && DECODE[i] != (byte) -1) {
            return DECODE[i];
        }
        throw new Base64DecodingException(Messages.getString("Base64Coder.IllegalCharacter", Integer.valueOf(i)));
    }

    private static boolean isWhiteSpace(int i) {
        return DECODE[i] == (byte) -2;
    }
}
