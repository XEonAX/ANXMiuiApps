package miui.yellowpage;

import java.util.Arrays;
import miui.os.C0015Build;

public class Log {
    private static final boolean DEBUG = C0015Build.IS_DEBUGGABLE;
    private static final String TAG = "YellowPage";

    private Log() {
    }

    public static void d(String tag, String msg) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tag);
            stringBuilder.append(":");
            stringBuilder.append(msg);
            android.util.Log.d(str, stringBuilder.toString());
        }
    }

    public static void d(String tag, String msg, Throwable tr) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tag);
            stringBuilder.append(":");
            stringBuilder.append(msg);
            android.util.Log.d(str, stringBuilder.toString(), tr);
        }
    }

    public static void e(String tag, String msg) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.e(str, stringBuilder.toString());
    }

    public static void e(String tag, String msg, Throwable tr) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.e(str, stringBuilder.toString(), tr);
    }

    public static void v(String tag, String msg) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.v(str, stringBuilder.toString());
    }

    public static void v(String tag, String msg, Throwable tr) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.v(str, stringBuilder.toString(), tr);
    }

    public static void i(String tag, String msg) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tag);
            stringBuilder.append(":");
            stringBuilder.append(msg);
            android.util.Log.i(str, stringBuilder.toString());
        }
    }

    public static void i(String tag, String msg, Throwable tr) {
        if (DEBUG) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(tag);
            stringBuilder.append(":");
            stringBuilder.append(msg);
            android.util.Log.i(str, stringBuilder.toString(), tr);
        }
    }

    public static void wtf(String tag, String msg) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.wtf(str, stringBuilder.toString());
    }

    public static void wtf(String tag, String msg, Throwable tr) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(tag);
        stringBuilder.append(":");
        stringBuilder.append(msg);
        android.util.Log.wtf(str, stringBuilder.toString(), tr);
    }

    public static String logify(String privacy) {
        if (privacy == null) {
            return null;
        }
        char[] log = new char[privacy.length()];
        Arrays.fill(log, '*');
        return new String(log);
    }
}
