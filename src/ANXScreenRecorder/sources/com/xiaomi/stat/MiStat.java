package com.xiaomi.stat;

import android.content.Context;

public class MiStat {
    private static C0004e a;

    public final class Event {
        public static final String ADD_TO_CART = "add_to_cart";
        public static final String ADD_TO_FAVORITE = "add_to_favorite";
        public static final String APP_OPEN = "app_open";
        public static final String CLICK = "click";
        public static final String DOWNLOAD_START = "download_start";
        public static final String ECOMMERCE_PAY = "ecommerce_pay";
        public static final String IMPRESSION = "impression";
        public static final String LEVEL_UP = "level_up";
        public static final String LOGIN = "login";
        public static final String PURCHASE_REFUND = "purchase_refund";
        public static final String REMOVE_FROM_CART = "remove_from_cart";
        public static final String SEARCH = "search";
        public static final String SHARE = "share";
        public static final String SIGN_UP = "sign_up";
    }

    public final class NetworkType {
        public static final int TYPE_2G = 1;
        public static final int TYPE_3G = 2;
        public static final int TYPE_4G = 4;
        public static final int TYPE_ALL = 31;
        public static final int TYPE_ETHERNET = 16;
        public static final int TYPE_NONE = 0;
        public static final int TYPE_WIFI = 8;
    }

    public final class Param {
        public static final String CITY = "city";
        public static final String CONTENT = "content";
        public static final String CONTENT_TYPE = "content_type";
        public static final String COUNT = "count";
        public static final String CURRENCY = "currency";
        public static final String DESTINATION = "destination";
        public static final String END_DATE = "end_date";
        public static final String LEVEL = "level";
        public static final String LEVEL_NAME = "level_name";
        public static final String LOCATION = "location";
        public static final String METHOD = "method";
        public static final String ORIGIN = "origin";
        public static final String PRICE = "price";
        public static final String PROVINCE = "province";
        public static final String REGION = "region";
        public static final String SCORE = "score";
        public static final String SEARCH_TERM = "search_term";
        public static final String START_DATE = "start_date";
        public static final String STATUS = "status";
        public static final String VALUE = "value";
    }

    public final class UserProperty {
        public static final String CITY = "city";
        public static final String FIRST_ACTIVATION = "first_activation";
        public static final String PACKAGE_CHANNEL = "package_channel";
        public static final String PROVINCE = "province";
        public static final String REGION = "region";
        public static final String SIGN_UP_METHOD = "sign_up_method";
        public static final String SIGN_UP_TIME = "sign_up_time";
        public static final String USER_NAME = "user_name";
    }

    public static void initialize(Context context, String appId, String appKey, boolean useCustomPrivacyPolicy) {
        if (a != null) {
            throw new IllegalStateException("duplicate sdk init!");
        }
        a = new C0004e(context, appId, appKey, useCustomPrivacyPolicy);
    }

    public static void initialize(Context context, String appId, String appKey, boolean useCustomPrivacyPolicy, String channel) {
        if (a != null) {
            throw new IllegalStateException("duplicate sdk init!");
        }
        a = new C0004e(context, appId, appKey, useCustomPrivacyPolicy, channel);
    }

    private static void a() {
        if (a == null) {
            throw new IllegalStateException("must init sdk before use!");
        }
    }

    public static void setStatisticEnabled(boolean enabled) {
        a();
        a.a(enabled);
    }

    public static void setNetworkAccessEnabled(boolean enabled) {
        a();
        a.b(enabled);
    }

    public static void setExceptionCatcherEnabled(boolean enabled) {
        a();
        a.c(enabled);
    }

    public static void trackPageStart(String pageName) {
        a();
        a.a(pageName);
    }

    public static void trackPageEnd(String pageName) {
        a();
        a.b(pageName);
    }

    public static void trackPageEnd(String pageName, MiStatParams params) {
        a();
        a.a(pageName, params);
    }

    public static void trackEvent(String eventName) {
        a();
        a.c(eventName);
    }

    public static void trackEvent(String eventName, String eventGroup) {
        a();
        a.a(eventName, eventGroup);
    }

    public static void trackEvent(String eventName, MiStatParams params) {
        a();
        a.b(eventName, params);
    }

    public static void trackEvent(String eventName, String eventGroup, MiStatParams params) {
        a();
        a.a(eventName, eventGroup, params);
    }

    public static void trackIdentifiedEvent(String eventName) {
        a();
        a.c(eventName);
    }

    public static void trackIdentifiedEvent(String eventName, String eventGroup) {
        a();
        a.a(eventName, eventGroup);
    }

    public static void trackIdentifiedEvent(String eventName, MiStatParams params) {
        a();
        a.b(eventName, params);
    }

    public static void trackIdentifiedEvent(String eventName, String eventGroup, MiStatParams params) {
        a();
        a.a(eventName, eventGroup, params);
    }

    public static void trackException(Throwable t) {
        a();
        a.a(t);
    }

    public static void trackException(Throwable t, String key) {
        a();
        a.a(t, key);
    }

    public static void setUserProperty(String name, String value) {
        a();
        a.c(name, value);
    }

    public static void setUserProperty(MiStatParams property) {
        a();
        a.a(property);
    }

    public static void setIdentifiedUserProperty(String name, String value) {
        a();
        a.d(name, value);
    }

    public static void setIdentifiedUserProperty(MiStatParams property) {
        a();
        a.b(property);
    }

    public static void setUserId(String id) {
        a();
        a.e(id);
    }

    public static void setUploadNetworkType(int networkType) {
        a();
        a.a(networkType);
    }

    public static int getUploadNetworkType() {
        a();
        return a.a();
    }

    public static void setUploadInterval(int intervalInSeconds) {
        a();
        a.b(intervalInSeconds);
    }

    public static int getUploadInterval() {
        a();
        return a.b();
    }

    public static void setCustomPrivacyState(boolean accepted) {
        a();
        a.d(accepted);
    }

    public static void setInternationalRegion(boolean isInternationalVersion, String region) {
        a();
        a.a(isInternationalVersion, region);
    }

    public static void trackHttpEvent(HttpEvent httpEvent) {
        a();
        a.a(httpEvent);
    }

    public static String getDeviceId() {
        a();
        return a.c();
    }

    public static boolean setUseSystemUploadingService(boolean useSystemUploadingService) {
        a();
        return a.e(useSystemUploadingService);
    }

    public static void setDebugModeEnabled(boolean enabled) {
        a();
        a.f(enabled);
    }

    public static void trackPlainTextEvent(String eventName, String text) {
        a();
        a.e(eventName, text);
    }
}
