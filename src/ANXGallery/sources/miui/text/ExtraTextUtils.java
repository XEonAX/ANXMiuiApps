package miui.text;

import android.content.Context;
import com.miui.internal.R;
import miui.util.C0014Pools;

public class ExtraTextUtils {
    public static final long GB = 1000000000;
    private static final char[] HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final long KB = 1000;
    public static final long MB = 1000000;
    private static final long UNIT = 1000;

    protected ExtraTextUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static void toHexReadable(byte[] bArr, Appendable appendable) {
        if (bArr != null) {
            try {
                for (int i : bArr) {
                    int i2;
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    appendable.append(HEX_DIGITS[i2 >> 4]).append(HEX_DIGITS[i2 & 15]);
                }
            } catch (Throwable e) {
                throw new RuntimeException("Exception throw during when append", e);
            }
        }
    }

    public static String toHexReadable(byte[] bArr) {
        StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
        toHexReadable(bArr, stringBuilder);
        String stringBuilder2 = stringBuilder.toString();
        C0014Pools.getStringBuilderPool().release(stringBuilder);
        return stringBuilder2;
    }

    public static byte[] fromHexReadable(String str) {
        int length = str.length();
        StringBuilder stringBuilder;
        if (length % 2 == 0) {
            byte[] bArr = new byte[(length >> 1)];
            for (int i = 0; i < length; i += 2) {
                int i2;
                int i3;
                char charAt = str.charAt(i);
                if (charAt >= '0' && charAt <= '9') {
                    i2 = charAt - 48;
                } else if (charAt >= 'a' && charAt <= 'f') {
                    i2 = (charAt - 97) + 10;
                } else if (charAt < 'A' || charAt > 'F') {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("s is not a readable string: ");
                    stringBuilder.append(str);
                    throw new IllegalArgumentException(stringBuilder.toString());
                } else {
                    i2 = (charAt - 65) + 10;
                }
                i2 <<= 4;
                char charAt2 = str.charAt(i + 1);
                if (charAt2 >= '0' && charAt2 <= '9') {
                    i3 = charAt2 - 48;
                } else if (charAt2 >= 'a' && charAt2 <= 'f') {
                    i3 = (charAt2 - 97) + 10;
                } else if (charAt2 < 'A' || charAt2 > 'F') {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("s is not a readable string: ");
                    stringBuilder.append(str);
                    throw new IllegalArgumentException(stringBuilder.toString());
                } else {
                    i3 = (charAt2 - 65) + 10;
                }
                bArr[i >> 1] = (byte) (i2 + i3);
            }
            return bArr;
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append("s is not a readable string: ");
        stringBuilder.append(str);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public static String formatFileSize(Context context, long j) {
        return a(context, j, false);
    }

    public static String formatShortFileSize(Context context, long j) {
        return a(context, j, true);
    }

    private static String a(Context context, long j, boolean z) {
        if (context == null) {
            return "";
        }
        String format;
        int i;
        float f = (float) j;
        int i2 = R.string.size_byte;
        if (f > 900.0f) {
            i2 = R.string.size_kilo_byte;
            f /= 1000.0f;
        }
        if (f > 900.0f) {
            i2 = R.string.size_mega_byte;
            f /= 1000.0f;
        }
        if (f > 900.0f) {
            i2 = R.string.size_giga_byte;
            f /= 1000.0f;
        }
        if (f > 900.0f) {
            i2 = R.string.size_tera_byte;
            f /= 1000.0f;
        }
        if (f > 900.0f) {
            i2 = R.string.size_peta_byte;
            f /= 1000.0f;
        }
        if (f < 1.0f) {
            format = String.format("%.2f", new Object[]{Float.valueOf(f)});
        } else if (f < 10.0f) {
            if (z) {
                format = String.format("%.1f", new Object[]{Float.valueOf(f)});
            } else {
                format = String.format("%.2f", new Object[]{Float.valueOf(f)});
            }
        } else if (f >= 100.0f) {
            format = String.format("%.0f", new Object[]{Float.valueOf(f)});
        } else if (z) {
            format = String.format("%.0f", new Object[]{Float.valueOf(f)});
        } else {
            format = String.format("%.2f", new Object[]{Float.valueOf(f)});
        }
        int length = format.length();
        if (length > 3) {
            i = length - 3;
            if (format.charAt(i) == '.' && format.charAt(length - 2) == '0' && format.charAt(length - 1) == '0') {
                format = format.substring(0, i);
                return context.getResources().getString(R.string.size_suffix, new Object[]{format, context.getString(i2)});
            }
        }
        if (length > 2) {
            i = length - 2;
            if (format.charAt(i) == '.' && format.charAt(length - 1) == '0') {
                format = format.substring(0, i);
            }
        }
        return context.getResources().getString(R.string.size_suffix, new Object[]{format, context.getString(i2)});
    }
}
