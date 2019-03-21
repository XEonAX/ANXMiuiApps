package com.miui.gallery.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.BidiFormatter;
import android.text.TextUtils;
import com.miui.gallery.R;
import java.util.Locale;

public final class FileSizeFormatter {

    public static class BytesResult {
        public final long roundedBytes;
        public final String units;
        public final String value;

        public BytesResult(String value, String units, long roundedBytes) {
            this.value = value;
            this.units = units;
            this.roundedBytes = roundedBytes;
        }
    }

    private static Locale localeFromContext(Context context) {
        if (VERSION.SDK_INT >= 24) {
            return context.getResources().getConfiguration().getLocales().get(0);
        }
        return context.getResources().getConfiguration().locale;
    }

    private static String bidiWrap(Context context, String source) {
        if (TextUtils.getLayoutDirectionFromLocale(localeFromContext(context)) == 1) {
            return BidiFormatter.getInstance(true).unicodeWrap(source);
        }
        return source;
    }

    public static String formatShortFileSize(Context context, long sizeBytes) {
        if (context == null) {
            return "";
        }
        BytesResult res = formatBytes(context.getResources(), sizeBytes, 9);
        return bidiWrap(context, context.getString(R.string.fileSizeSuffix, new Object[]{res.value, res.units}));
    }

    public static BytesResult formatBytes(Resources res, long sizeBytes, int flags) {
        float result;
        int roundFactor;
        String roundFormat;
        long roundedBytes;
        int unit = (flags & 8) != 0 ? 1024 : 1000;
        boolean isNegative = sizeBytes < 0;
        if (isNegative) {
            result = (float) (-sizeBytes);
        } else {
            result = (float) sizeBytes;
        }
        int suffix = R.string.byteShort;
        long mult = 1;
        if (result > 900.0f) {
            suffix = R.string.kilobyteShort;
            mult = (long) unit;
            result /= (float) unit;
        }
        if (result > 900.0f) {
            suffix = R.string.megabyteShort;
            mult *= (long) unit;
            result /= (float) unit;
        }
        if (result > 900.0f) {
            suffix = R.string.gigabyteShort;
            mult *= (long) unit;
            result /= (float) unit;
        }
        if (result > 900.0f) {
            suffix = R.string.terabyteShort;
            mult *= (long) unit;
            result /= (float) unit;
        }
        if (result > 900.0f) {
            suffix = R.string.petabyteShort;
            mult *= (long) unit;
            result /= (float) unit;
        }
        if (mult == 1 || result >= 100.0f) {
            roundFactor = 1;
            roundFormat = "%.0f";
        } else if (result < 1.0f) {
            roundFactor = 100;
            roundFormat = "%.2f";
        } else if (result < 10.0f) {
            if ((flags & 1) != 0) {
                roundFactor = 10;
                roundFormat = "%.1f";
            } else {
                roundFactor = 100;
                roundFormat = "%.2f";
            }
        } else if ((flags & 1) != 0) {
            roundFactor = 1;
            roundFormat = "%.0f";
        } else {
            roundFactor = 100;
            roundFormat = "%.2f";
        }
        if (isNegative) {
            result = -result;
        }
        String roundedString = String.format(roundFormat, new Object[]{Float.valueOf(result)});
        int length = roundedString.length();
        if (length > 3 && roundedString.charAt(length - 3) == '.' && roundedString.charAt(length - 2) == '0' && roundedString.charAt(length - 1) == '0') {
            roundedString = roundedString.substring(0, length - 3);
        } else if (length > 2 && roundedString.charAt(length - 2) == '.' && roundedString.charAt(length - 1) == '0') {
            roundedString = roundedString.substring(0, length - 2);
        }
        if ((flags & 2) == 0) {
            roundedBytes = 0;
        } else {
            roundedBytes = (((long) Math.round(((float) roundFactor) * result)) * mult) / ((long) roundFactor);
        }
        return new BytesResult(roundedString, res.getString(suffix), roundedBytes);
    }
}
