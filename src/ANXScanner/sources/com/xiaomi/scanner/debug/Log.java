package com.xiaomi.scanner.debug;

public class Log {
    public static final String SCANNER_LOGTAG_PREFIX = "SCAN_";
    private static final Tag TAG = new Tag("Log");

    public static final class Tag {
        private static final int MAX_TAG_LEN = (23 - Log.SCANNER_LOGTAG_PREFIX.length());
        final String mValue;

        public Tag(String tag) {
            int lenDiff = tag.length() - MAX_TAG_LEN;
            if (lenDiff > 0) {
                Log.w(Log.TAG, "Tag " + tag + " is " + lenDiff + " chars longer than limit.");
            }
            StringBuilder append = new StringBuilder().append(Log.SCANNER_LOGTAG_PREFIX);
            if (lenDiff > 0) {
                tag = tag.substring(0, MAX_TAG_LEN);
            }
            this.mValue = append.append(tag).toString();
        }

        public String toString() {
            return this.mValue;
        }
    }

    public static void t(Tag tag, String msg) {
        if (LogHelper.instance().isDebugMode()) {
            android.util.Log.d(tag.toString(), msg);
        }
    }

    public static void d(Tag tag, String msg) {
        if (isLoggable(tag, 3)) {
            android.util.Log.d(tag.toString(), msg);
        }
    }

    public static void d(Tag tag, String msg, Throwable tr) {
        if (isLoggable(tag, 3)) {
            android.util.Log.d(tag.toString(), msg, tr);
        }
    }

    public static void e(Tag tag, String msg) {
        if (isLoggable(tag, 6)) {
            android.util.Log.e(tag.toString(), msg);
        }
    }

    public static void e(Tag tag, String msg, Throwable tr) {
        if (isLoggable(tag, 6)) {
            android.util.Log.e(tag.toString(), msg, tr);
        }
    }

    public static void i(Tag tag, String msg) {
        if (isLoggable(tag, 4)) {
            android.util.Log.i(tag.toString(), msg);
        }
    }

    public static void i(Tag tag, String msg, Throwable tr) {
        if (isLoggable(tag, 4)) {
            android.util.Log.i(tag.toString(), msg, tr);
        }
    }

    public static void v(Tag tag, String msg) {
        if (isLoggable(tag, 2)) {
            android.util.Log.v(tag.toString(), msg);
        }
    }

    public static void v(Tag tag, String msg, Throwable tr) {
        if (isLoggable(tag, 2)) {
            android.util.Log.v(tag.toString(), msg, tr);
        }
    }

    public static void w(Tag tag, String msg) {
        if (isLoggable(tag, 5)) {
            android.util.Log.w(tag.toString(), msg);
        }
    }

    public static void w(Tag tag, String msg, Throwable tr) {
        if (isLoggable(tag, 5)) {
            android.util.Log.w(tag.toString(), msg, tr);
        }
    }

    private static boolean isLoggable(Tag tag, int level) {
        boolean z = false;
        try {
            if (LogHelper.instance().isDebugMode()) {
                return true;
            }
            if (LogHelper.instance().getOverrideLevel() == 0) {
                if (android.util.Log.isLoggable(SCANNER_LOGTAG_PREFIX, level) || android.util.Log.isLoggable(tag.toString(), level)) {
                    z = true;
                }
                return z;
            } else if (LogHelper.instance().getOverrideLevel() > level) {
                return false;
            } else {
                return true;
            }
        } catch (IllegalArgumentException e) {
            e(TAG, "Tag too long:" + tag);
            return false;
        }
    }
}
