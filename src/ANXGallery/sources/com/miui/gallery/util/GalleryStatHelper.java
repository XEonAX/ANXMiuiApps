package com.miui.gallery.util;

import android.app.Activity;
import android.content.Context;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.URLStatsRecorder;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.util.Map;

public class GalleryStatHelper {
    private static boolean sInitialized;

    public static void init(Context context) {
        if (!sInitialized && CTA.canConnectNetwork()) {
            sInitialized = true;
            try {
                MiStatInterface.initialize(context, "2882303761517492012", "5601749292012", "com.miui.gallery");
                MiStatInterface.setUploadPolicy(0, 300000);
                URLStatsRecorder.enableAutoRecord();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static boolean isUsable() {
        return sInitialized;
    }

    public static void recordCountEvent(String category, String event) {
        if (isUsable()) {
            try {
                MiStatInterface.recordCountEvent(category, event);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void recordCountEvent(String category, String event, Map<String, String> params) {
        if (isUsable()) {
            try {
                MiStatInterface.recordCountEvent(category, event, params);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void recordPageEnd(Activity activity, String pageName) {
        if (isUsable()) {
            try {
                MiStatInterface.recordPageEnd(activity, pageName);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void recordPageStart(Activity activity, String pageName) {
        if (isUsable()) {
            try {
                MiStatInterface.recordPageStart(activity, pageName);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void recordStringPropertyEvent(String category, String event, String value) {
        if (isUsable()) {
            try {
                MiStatInterface.recordStringPropertyEvent(category, event, value);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void recordNumericPropertyEvent(String category, String event, long value) {
        if (isUsable()) {
            try {
                MiStatInterface.recordNumericPropertyEvent(category, event, value);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void addHttpEvent(String url, String exceptionName) {
        if (isUsable()) {
            URLStatsRecorder.addHttpEvent(new HttpEvent(url, exceptionName));
        }
    }

    public static void addHttpEvent(String url, long timeCost, long netFlow, int responseCode, String exceptionName) {
        if (isUsable()) {
            URLStatsRecorder.addHttpEvent(new HttpEvent(url, timeCost, netFlow, responseCode, exceptionName));
        }
    }

    public static void addHttpEvent(String url, long timeCost, long netFlow, int responseCode) {
        if (isUsable()) {
            URLStatsRecorder.addHttpEvent(new HttpEvent(url, timeCost, netFlow, responseCode));
        }
    }
}
