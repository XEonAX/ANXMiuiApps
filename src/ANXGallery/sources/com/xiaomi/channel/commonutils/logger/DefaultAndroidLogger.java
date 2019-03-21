package com.xiaomi.channel.commonutils.logger;

import android.util.Log;

public class DefaultAndroidLogger implements LoggerInterface {
    private String mTag = "xiaomi";

    public void log(String content) {
        Log.v(this.mTag, content);
    }

    public void log(String content, Throwable t) {
        Log.v(this.mTag, content, t);
    }
}
