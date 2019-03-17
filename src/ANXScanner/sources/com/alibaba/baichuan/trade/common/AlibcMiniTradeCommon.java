package com.alibaba.baichuan.trade.common;

import android.app.Application;
import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewProxy;
import com.ut.device.UTDevice;

public class AlibcMiniTradeCommon {
    public static final String APPKEY = "appkey";
    public static final String APP_VERSION = "app_version";
    public static final String PF_ANDROID = "android";
    public static final String PLATFORM = "platform";
    public static final String SDK_VERSION = "sdk_version";
    protected static String a;
    protected static String b;
    protected static boolean c;
    public static Application context;
    protected static String d = "3.2.0.0";
    protected static Environment e = Environment.ONLINE;
    public static String isvVersion = "1.0.0";
    public static String systemVersion = "";
    public static String ttid = "";

    public static boolean checkCommon() {
        return (context == null || TextUtils.isEmpty(systemVersion)) ? false : true;
    }

    public static String getAppKey() {
        return b;
    }

    public static String getUtdid() {
        return a;
    }

    public static Boolean init(Application application, String str, String str2) {
        if (application == null) {
            return Boolean.valueOf(false);
        }
        AlibcTradeCommon.context = application;
        if (str == null) {
            str = "99";
        }
        AlibcTradeCommon.systemVersion = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        AlibcTradeCommon.b = str2;
        AlibcTradeCommon.a = UTDevice.getUtdid(application);
        AlibcWebViewProxy.init();
        return Boolean.valueOf(true);
    }

    public static void setChannel(String str) {
    }

    public static void setIsvVersion(String str) {
        AlibcTradeCommon.isvVersion = str;
    }

    public static void setTTID(String str) {
        AlibcTradeCommon.ttid = str;
    }

    public static void turnOffDebug() {
        c = true;
    }

    public static void turnOnDebug() {
        c = true;
    }
}
