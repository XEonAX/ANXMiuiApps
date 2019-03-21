package com.edmodo.cropper.util;

import android.graphics.RectF;

public class AspectRatioUtil {
    public static float calculateAspectRatio(float left, float top, float right, float bottom) {
        return (right - left) / (bottom - top);
    }

    public static float calculateAspectRatio(RectF rect) {
        return rect.width() / rect.height();
    }

    public static float calculateLeft(float top, float right, float bottom, float targetAspectRatio) {
        return right - (targetAspectRatio * (bottom - top));
    }

    public static float calculateTop(float left, float right, float bottom, float targetAspectRatio) {
        return bottom - ((right - left) / targetAspectRatio);
    }

    public static float calculateRight(float left, float top, float bottom, float targetAspectRatio) {
        return (targetAspectRatio * (bottom - top)) + left;
    }

    public static float calculateBottom(float left, float top, float right, float targetAspectRatio) {
        return ((right - left) / targetAspectRatio) + top;
    }

    public static float calculateWidth(float height, float targetAspectRatio) {
        return targetAspectRatio * height;
    }

    public static float calculateHeight(float width, float targetAspectRatio) {
        return width / targetAspectRatio;
    }
}
