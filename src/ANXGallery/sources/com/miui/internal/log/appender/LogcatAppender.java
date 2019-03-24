package com.miui.internal.log.appender;

import android.util.Log;
import com.miui.internal.log.Level;
import com.miui.internal.log.format.Formatter;
import com.miui.internal.log.message.Message;

public class LogcatAppender implements Appender {
    private ThreadLocal<StringBuilder> gI = new ThreadLocal<StringBuilder>() {
        /* renamed from: N */
        protected StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    public void setFormatter(Formatter formatter) {
    }

    public Formatter getFormatter() {
        return null;
    }

    public void append(String str, String str2, long j, Level level, String str3, Throwable th) {
        switch (level) {
            case VERBOSE:
                if (th == null) {
                    Log.v(str2, str3);
                    return;
                } else {
                    Log.v(str2, str3, th);
                    return;
                }
            case DEBUG:
                if (th == null) {
                    Log.d(str2, str3);
                    return;
                } else {
                    Log.d(str2, str3, th);
                    return;
                }
            case INFO:
                if (th == null) {
                    Log.i(str2, str3);
                    return;
                } else {
                    Log.i(str2, str3, th);
                    return;
                }
            case WARNING:
                if (th == null) {
                    Log.w(str2, str3);
                    return;
                } else {
                    Log.w(str2, str3, th);
                    return;
                }
            case ERROR:
                if (th == null) {
                    Log.e(str2, str3);
                    return;
                } else {
                    Log.e(str2, str3, th);
                    return;
                }
            case FATAL:
                if (th == null) {
                    Log.wtf(str2, str3);
                    return;
                } else {
                    Log.wtf(str2, str3, th);
                    return;
                }
            default:
                return;
        }
    }

    public void append(String str, String str2, long j, Level level, Message message) {
        StringBuilder stringBuilder = (StringBuilder) this.gI.get();
        stringBuilder.setLength(0);
        message.format(stringBuilder);
        append(str, str2, j, level, stringBuilder.toString(), message.getThrowable());
        if (stringBuilder.length() > 8192) {
            stringBuilder.setLength(8192);
            stringBuilder.trimToSize();
        }
    }

    public void close() {
    }
}
