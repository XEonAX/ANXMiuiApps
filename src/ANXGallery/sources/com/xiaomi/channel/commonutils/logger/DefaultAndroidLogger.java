package com.xiaomi.channel.commonutils.logger;

import android.util.Log;
import com.miui.internal.analytics.XiaomiDispatcher;

public class DefaultAndroidLogger implements LoggerInterface {
    private String mTag = XiaomiDispatcher.TAG;

    public void log(String content) {
        Log.v(this.mTag, content);
    }

    public void log(String content, Throwable t) {
        Log.v(this.mTag, content, t);
    }
}
