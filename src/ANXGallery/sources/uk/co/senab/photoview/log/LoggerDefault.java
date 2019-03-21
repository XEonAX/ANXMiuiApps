package uk.co.senab.photoview.log;

import android.util.Log;

public class LoggerDefault implements Logger {
    public int d(String tag, String msg) {
        return Log.d(tag, msg);
    }

    public int i(String tag, String msg) {
        return Log.i(tag, msg);
    }

    public int w(String tag, String msg) {
        return Log.w(tag, msg);
    }

    public int e(String tag, String msg) {
        return Log.e(tag, msg);
    }
}
