package com.xiaomi.analytics.internal.v1;

import com.xiaomi.analytics.internal.Version;

public interface AnalyticsInterface {
    void close();

    void deleteAllEvents(String str);

    String getClientExtra(String str);

    Version getVersion();

    void init();

    boolean isPolicyReady(String str);

    void setDebugOn(boolean z);

    void setDefaultPolicy(String str, String str2);

    void trackEvent(String str);

    void trackEvents(String[] strArr);
}
