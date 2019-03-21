package com.xiaomi.push.service.timers;

import android.content.Context;

class HybridTimer extends AlarmManagerTimer {
    private static int pingInterval = 3600000;

    public HybridTimer(Context context) {
        super(context);
    }

    long getPingInteval() {
        return (long) pingInterval;
    }
}
