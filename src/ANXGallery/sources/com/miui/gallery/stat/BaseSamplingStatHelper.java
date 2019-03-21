package com.miui.gallery.stat;

import android.app.Activity;
import android.os.Build;
import android.os.Build.VERSION;
import com.miui.gallery.util.GalleryStatHelper;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class BaseSamplingStatHelper {
    private static boolean isEnabled() {
        return !StatSampling.FILTERED;
    }

    private static String formatSampledCategoryKey(String category) {
        return String.format(Locale.US, "sample_%s", new Object[]{category});
    }

    private static String formatErrorCategoryKey(String category) {
        return String.format(Locale.US, "error_%s", new Object[]{category});
    }

    public static void recordErrorEvent(String category, String event) {
        GalleryStatHelper.recordCountEvent(formatErrorCategoryKey(category), event);
    }

    public static void recordErrorEvent(String category, String event, Map<String, String> params) {
        GalleryStatHelper.recordCountEvent(formatErrorCategoryKey(category), event, params);
    }

    public static void recordCountEvent(String category, String event) {
        if (isEnabled()) {
            GalleryStatHelper.recordCountEvent(formatSampledCategoryKey(category), event);
        }
    }

    public static void recordCountEvent(String category, String event, Map<String, String> params) {
        if (isEnabled()) {
            GalleryStatHelper.recordCountEvent(formatSampledCategoryKey(category), event, params);
        }
    }

    public static void recordNumericPropertyEvent(String category, String event, long value) {
        if (isEnabled()) {
            GalleryStatHelper.recordNumericPropertyEvent(formatSampledCategoryKey(category), event, value);
        }
    }

    public static void recordStringPropertyEvent(String category, String event, String value) {
        if (isEnabled()) {
            GalleryStatHelper.recordStringPropertyEvent(formatSampledCategoryKey(category), event, value);
        }
    }

    public static void recordPageEnd(Activity activity, String pageName) {
        if (isEnabled()) {
            GalleryStatHelper.recordPageEnd(activity, formatSampledCategoryKey(pageName));
        }
    }

    public static void recordPageStart(Activity activity, String pageName) {
        if (isEnabled()) {
            GalleryStatHelper.recordPageStart(activity, formatSampledCategoryKey(pageName));
        }
    }

    public static Map<String, String> generatorCommonParams() {
        Map<String, String> params = new HashMap();
        params.put("model", Build.MODEL);
        params.put("version", VERSION.INCREMENTAL);
        return params;
    }

    public static int generatorValueStage(float value, int[] stages) {
        int count = stages.length;
        for (int i = 0; i < count; i++) {
            if (value <= ((float) stages[i])) {
                return stages[i];
            }
        }
        return -1;
    }

    public static String formatValueStage(float value, int[] stages) {
        if (generatorValueStage(value, stages) != -1) {
            return String.format(Locale.US, "<=%d", new Object[]{Integer.valueOf(generatorValueStage(value, stages))});
        }
        return String.format(Locale.US, ">%d", new Object[]{Integer.valueOf(stages[stages.length - 1])});
    }
}
