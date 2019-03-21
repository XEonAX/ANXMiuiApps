package com.miui.gallery.util;

import android.database.Cursor;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.android.internal.FilesCompat;
import com.miui.os.Rom;
import java.io.Closeable;
import java.util.regex.Pattern;

public class Utils {
    private static final boolean IS_DEBUG_BUILD;
    private static final LazyValue<Void, Pattern> SHARE_ALBUM_ID_PATTERN = new LazyValue<Void, Pattern>() {
        protected Pattern onInit(Void aVoid) {
            return Pattern.compile("(\\d+)(-\\d+)");
        }
    };
    private static long[] sCrcTable = new long[256];

    static {
        boolean z = Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug");
        IS_DEBUG_BUILD = z;
        for (int i = 0; i < 256; i++) {
            long part = (long) i;
            for (int j = 0; j < 8; j++) {
                part = (part >> 1) ^ ((((int) part) & 1) != 0 ? -7661587058870466123L : 0);
            }
            sCrcTable[i] = part;
        }
    }

    public static void assertTrue(boolean cond) {
        if (!cond) {
            throw new AssertionError();
        }
    }

    public static void assertTrue(boolean cond, String message, Object... args) {
        if (!cond) {
            if (args.length != 0) {
                message = String.format(message, args);
            }
            throw new AssertionError(message);
        }
    }

    public static boolean equals(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    public static int prevPowerOf2(int n) {
        if (n > 0) {
            return Integer.highestOneBit(n);
        }
        throw new IllegalArgumentException();
    }

    public static long clamp(long x, long min, long max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    public static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Exception e) {
                Log.w("Utils", "close fail", e);
            }
        }
    }

    public static void closeSilently(ParcelFileDescriptor fd) {
        if (fd != null) {
            try {
                fd.close();
            } catch (Exception e) {
                Log.w("Utils", "fail to close", e);
            }
        }
    }

    public static void closeSilently(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                Log.w("Utils", "fail to close", e);
            }
        }
    }

    public static String ensureNotNull(String value) {
        return value == null ? "" : value;
    }

    public static boolean isNullOrEmpty(String exifMake) {
        return TextUtils.isEmpty(exifMake);
    }

    public static boolean doubleEquals(double f1, double f2) {
        return doubleNear(f1, f2, 1.0E-7d);
    }

    public static boolean floatNear(float f1, float f2, float eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static boolean doubleNear(double f1, double f2, double eps) {
        return Math.abs(f1 - f2) < Math.abs(eps);
    }

    public static int setPermissions(String path, int mode, int uid, int gid) {
        return FilesCompat.setPermissions(path, mode, uid, gid);
    }

    public static String desensitizeShareAlbumId(String albumId) {
        if (TextUtils.isEmpty(albumId) || Rom.IS_DEBUGGABLE) {
            return albumId;
        }
        return ((Pattern) SHARE_ALBUM_ID_PATTERN.get(null)).matcher(albumId).replaceAll("******$2");
    }
}
