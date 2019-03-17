package mtopsdk.common.util;

import android.util.Log;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsLongitudeRef;
import com.xiaomi.scanner.camera.exif.ExifInterface.GpsStatus;
import java.util.HashMap;
import java.util.Map;

public class TBSdkLog {
    private static final String TAG = "mtopsdk.TBSdkLog";
    private static Map<String, LogEnable> logEnabaleMap = new HashMap(5);
    private static LogEnable logEnable = LogEnable.DebugEnable;
    private static boolean printLog = true;
    private static boolean tLogEnabled = true;

    public enum LogEnable {
        VerboseEnable(GpsStatus.INTEROPERABILITY),
        DebugEnable("D"),
        InfoEnable("I"),
        WarnEnable(GpsLongitudeRef.WEST),
        ErrorEnable(GpsLongitudeRef.EAST),
        NoneEnable("L");
        
        private String logEnable;

        public final String getLogEnable() {
            return this.logEnable;
        }

        private LogEnable(String str) {
            this.logEnable = str;
        }
    }

    static {
        for (LogEnable logEnable : LogEnable.values()) {
            logEnabaleMap.put(logEnable.getLogEnable(), logEnable);
        }
    }

    public static void setPrintLog(boolean z) {
        printLog = z;
        Log.d(TAG, "[setPrintLog] printLog=" + z);
    }

    public static boolean isPrintLog() {
        return printLog;
    }

    public static void setTLogEnabled(boolean z) {
        tLogEnabled = z;
        Log.d(TAG, "[setTLogEnabled] tLogEnabled=" + z);
    }

    public static void setLogEnable(LogEnable logEnable) {
        if (logEnable != null) {
            logEnable = logEnable;
            Log.d(TAG, "[setLogEnable] logEnable=" + logEnable);
        }
    }

    public static void d(String str, String str2) {
        d(str, null, str2);
    }

    public static void d(String str, String str2, String str3) {
        if (isLogEnable(LogEnable.DebugEnable) && printLog) {
            Log.d(str, append(str2, str3));
        }
    }

    public static void d(String str, String str2, String... strArr) {
        if (isLogEnable(LogEnable.DebugEnable) && printLog) {
            Log.d(str, append(str2, strArr));
        }
    }

    public static void i(String str, String str2) {
        i(str, null, str2);
    }

    public static void i(String str, String str2, String str3) {
        if (isLogEnable(LogEnable.InfoEnable) && printLog) {
            Log.i(str, append(str2, str3));
        }
    }

    public static void i(String str, String str2, String... strArr) {
        if (isLogEnable(LogEnable.InfoEnable) && printLog) {
            Log.i(str, append(str2, strArr));
        }
    }

    public static void w(String str, String str2) {
        w(str, null, str2);
    }

    public static void w(String str, String str2, String str3) {
        if (isLogEnable(LogEnable.WarnEnable) && printLog) {
            Log.w(str, append(str2, str3));
        }
    }

    public static void w(String str, String str2, Throwable th) {
        w(str, null, str2, th);
    }

    public static void w(String str, String str2, String str3, Throwable th) {
        if (isLogEnable(LogEnable.WarnEnable) && printLog) {
            Log.w(str, append(str2, str3), th);
        }
    }

    public static void e(String str, String str2) {
        e(str, null, str2);
    }

    public static void e(String str, String str2, String str3) {
        if (isLogEnable(LogEnable.ErrorEnable) && printLog) {
            Log.e(str, append(str2, str3));
        }
    }

    public static void e(String str, String str2, Throwable th) {
        e(str, null, str2, th);
    }

    public static void e(String str, String str2, String str3, Throwable th) {
        if (isLogEnable(LogEnable.ErrorEnable) && printLog) {
            Log.e(str, append(str2, str3), th);
        }
    }

    private static String append(String str, String... strArr) {
        StringBuilder stringBuilder = new StringBuilder();
        if (str != null) {
            stringBuilder.append("[seq:").append(str).append("]|");
        }
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                stringBuilder.append(strArr[i]);
                if (i < strArr.length - 1) {
                    stringBuilder.append(",");
                }
            }
        }
        return stringBuilder.toString();
    }

    public static boolean isLogEnable(LogEnable logEnable) {
        return logEnable.ordinal() >= logEnable.ordinal();
    }
}
