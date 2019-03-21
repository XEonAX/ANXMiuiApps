package com.edmodo.cropper.util;

public class MathUtil {
    public static float calculateDistance(float x1, float y1, float x2, float y2) {
        float side1 = x2 - x1;
        float side2 = y2 - y1;
        return (float) Math.sqrt((double) ((side1 * side1) + (side2 * side2)));
    }
}
