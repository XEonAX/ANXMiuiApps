package com.uploader.implement;

import android.util.Log;
import com.uploader.export.IUploaderLog;

/* compiled from: LogTool */
public class a {
    private static volatile IUploaderLog a;
    private static volatile int b = 31;

    static final void a(IUploaderLog log) {
        a = log;
    }

    public static final int a(int priority, String tag, String msg) {
        return a(priority, tag, msg, null);
    }

    public static final int a(int priority, String tag, String msg, Throwable t) {
        if (tag != null) {
            tag = "<aus>" + tag;
        }
        IUploaderLog l = a;
        if (l != null) {
            return l.print(priority, tag, msg, t);
        }
        if ((b & priority) == 0) {
            return 0;
        }
        switch (priority) {
            case 1:
                if (t != null) {
                    msg = msg + 10 + Log.getStackTraceString(t);
                }
                return Log.println(2, tag, msg);
            case 2:
                if (t != null) {
                    msg = msg + 10 + Log.getStackTraceString(t);
                }
                return Log.println(3, tag, msg);
            case 4:
                if (t != null) {
                    msg = msg + 10 + Log.getStackTraceString(t);
                }
                return Log.println(4, tag, msg);
            case 8:
                if (t != null) {
                    msg = msg + 10 + Log.getStackTraceString(t);
                }
                return Log.println(5, tag, msg);
            case 16:
                if (t != null) {
                    msg = msg + 10 + Log.getStackTraceString(t);
                }
                return Log.println(6, tag, msg);
            default:
                return 0;
        }
    }

    public static final boolean a(int priority) {
        IUploaderLog l = a;
        if (l != null) {
            return l.isEnabled(priority);
        }
        return (b & priority) != 0;
    }
}
