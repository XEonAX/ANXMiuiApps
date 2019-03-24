package com.miui.internal.analytics;

import android.content.Context;

public interface Dispatchable {
    void dispatchEvent(TrackEvent trackEvent);

    void dispatchLog(LogEvent logEvent);

    void dispatchPageView(TrackPageViewEvent trackPageViewEvent);

    void start(Context context, String str);

    void stop();
}
