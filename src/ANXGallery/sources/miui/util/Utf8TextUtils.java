package miui.util;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class Utf8TextUtils {
    private static final String JZ = "UTF-8";
    private static final int Ka = 1;
    private static final int Kb = 6;
    private static final String TAG = "Utf8TextUtils";

    private static class CharRange {
        int length = -1;
        int start = -1;

        CharRange() {
        }

        CharRange(int i, int i2) {
            this.start = i;
            this.length = i2;
        }

        boolean isValid() {
            return this.start >= 0 && this.length > 0;
        }

        int getEndIndex() {
            return this.start + this.length;
        }
    }

    private Utf8TextUtils() {
    }

    public static String subString(String str, int i, int i2) {
        if (TextUtils.isEmpty(str) || i2 <= i) {
            return "";
        }
        Object bytes = str.getBytes();
        List c = c(bytes);
        if (c.isEmpty()) {
            return str.substring(i, i2);
        }
        if (i < 0 || i >= c.size()) {
            return "";
        }
        int size = c.size();
        i = ((CharRange) c.get(i)).start;
        size = (i2 >= size ? bytes.length : ((CharRange) c.get(i2)).start) - i;
        Object obj = new byte[size];
        System.arraycopy(bytes, i, obj, 0, size);
        try {
            return new String(obj, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0075 A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0067 A:{Catch:{ UnsupportedEncodingException -> 0x0076 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String truncateByte(String str, int i) {
        try {
            Object bytes = str.getBytes();
            List c = c(bytes);
            if (c.isEmpty()) {
                StringBuilder stringBuilder = new StringBuilder();
                while (stringBuilder.toString().getBytes().length < i) {
                    stringBuilder.append(str.charAt(stringBuilder.length()));
                }
                if (stringBuilder.toString().getBytes().length > i) {
                    stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                }
                return stringBuilder.toString();
            }
            int length = bytes.length;
            int size = c.size() - 1;
            while (size >= 0) {
                CharRange charRange = (CharRange) c.get(size);
                if (charRange.start >= i) {
                    size--;
                } else {
                    length = charRange.getEndIndex();
                    if (length > i) {
                        length = charRange.start;
                    }
                    if (length < bytes.length) {
                        return str;
                    }
                    Object obj = new byte[length];
                    System.arraycopy(bytes, 0, obj, 0, length);
                    return new String(obj, "UTF-8");
                }
            }
            if (length < bytes.length) {
            }
        } catch (UnsupportedEncodingException e) {
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("failed to get bytes of UTF-8 from ");
            stringBuilder2.append(str);
            stringBuilder2.append(", ");
            stringBuilder2.append(e);
            Log.w(str2, stringBuilder2.toString());
            return null;
        }
    }

    private static List<CharRange> c(byte[] bArr) {
        List<CharRange> arrayList = new ArrayList();
        int i = 0;
        while (i < bArr.length) {
            CharRange a = a(bArr, i);
            if (!a.isValid()) {
                arrayList.clear();
                break;
            }
            arrayList.add(a);
            i += a.length;
        }
        return arrayList;
    }

    private static CharRange a(byte[] bArr, int i) {
        int a = a(bArr[i]);
        if (a == 0) {
            return new CharRange(i, 1);
        }
        return a(bArr, i, a);
    }

    private static CharRange a(byte[] bArr, int i, int i2) {
        CharRange charRange = new CharRange();
        if (b(bArr, i, i2)) {
            charRange.start = i;
            charRange.length = i2;
        }
        return charRange;
    }

    private static boolean b(byte[] bArr, int i, int i2) {
        if (i2 <= 1 || i2 > 6) {
            return false;
        }
        for (int i3 = 1; i3 < i2; i3++) {
            if (a(bArr[i + i3]) != 1) {
                return false;
            }
        }
        return true;
    }

    private static int a(byte b) {
        int i = 0;
        int i2 = 7;
        while (i2 >= 1 && (1 & ((byte) (b >> i2))) != 0) {
            i++;
            i2--;
        }
        return i;
    }
}
