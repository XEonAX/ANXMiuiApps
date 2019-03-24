package com.xiaomi.push.service.timers;

import android.content.Context;
import miui.date.Calendar;

class HybridTimer extends AlarmManagerTimer {
    private static int pingInterval = Calendar.MILLISECOND_OF_HOUR;

    public HybridTimer(Context context) {
        super(context);
    }

    long getPingInteval() {
        return (long) pingInterval;
    }
}
