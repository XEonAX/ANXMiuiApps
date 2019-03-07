package com.xiaomi.analytics.internal;

import com.xiaomi.analytics.internal.util.TimeUtils;

public class Constants {
    public static final String ANALYTICS_APP_PACKAGE_NAME = "com.miui.analytics";
    public static final Version API_VER = new Version("1.9.3");
    public static final int CONNECT_TIME_OUT_MILLIS = (TimeUtils.ONE_SECOND_IN_MS * 30);
    public static final String INVALID_CORE_VER_STR = "0.0.0";
    public static final Version MIN_CORE_VER = new Version("1.3.0");
    public static final String NULL_STRING = "";
    public static final String PREFS_FILE = "analytics_api";
    public static final int READ_TIME_OUT_MILLIS = TimeUtils.ONE_MINUTE_IN_MS;
}
