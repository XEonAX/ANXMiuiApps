package com.miui.internal.content.res;

import android.content.res.Configuration;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

public class ThemeDensityFallbackUtils {
    private static final int[] DENSITIES = new int[]{480, 320, 240, 0};
    private static final int DENSITY_NONE = 1;

    private ThemeDensityFallbackUtils() {
    }

    public static String getScreenWidthSuffix(Configuration config) {
        if (config.smallestScreenWidthDp >= 720) {
            return "-sw720dp";
        }
        return "";
    }

    public static String getDensitySuffix(int density) {
        if (density == BaiduSceneResult.MOTORCYCLE) {
            return "-ldpi";
        }
        if (density == 160) {
            return "-mdpi";
        }
        if (density == 240) {
            return "-hdpi";
        }
        if (density == 320) {
            return "-xhdpi";
        }
        if (density == 440) {
            return "-nxhdpi";
        }
        if (density == 480) {
            return "-xxhdpi";
        }
        if (density == 640) {
            return "-xxxhdpi";
        }
        switch (density) {
            case 0:
                return "";
            case 1:
                return "-nodpi";
            default:
                int min = DENSITIES.length - 1;
                for (int j = min - 1; j > 0; j--) {
                    if (Math.abs(DENSITIES[j] - density) < Math.abs(DENSITIES[min] - density)) {
                        min = j;
                    }
                }
                return getDensitySuffix(DENSITIES[min]);
        }
    }

    public static int[] getFallbackOrder(int currentDensity) {
        int left = DENSITIES.length - 1;
        while (left >= 0 && DENSITIES[left] <= currentDensity) {
            left--;
        }
        int right = 0;
        while (right < DENSITIES.length && DENSITIES[right] >= currentDensity) {
            right++;
        }
        int[] densities = new int[(DENSITIES.length + (left + 1 == right ? 1 : 0))];
        densities[0] = currentDensity;
        int right2 = right;
        right = left;
        left = 1;
        while (left < densities.length) {
            boolean leftIsBetter;
            if (right < 0) {
                leftIsBetter = false;
            } else if (right2 == DENSITIES.length) {
                leftIsBetter = true;
            } else {
                leftIsBetter = DENSITIES[right] - currentDensity < currentDensity - DENSITIES[right2];
            }
            int index;
            int left2;
            if (leftIsBetter) {
                index = left + 1;
                left2 = right - 1;
                densities[left] = DENSITIES[right];
                left = index;
                right = left2;
            } else {
                index = left + 1;
                left2 = right2 + 1;
                densities[left] = DENSITIES[right2];
                left = index;
                right2 = left2;
            }
        }
        return densities;
    }
}
