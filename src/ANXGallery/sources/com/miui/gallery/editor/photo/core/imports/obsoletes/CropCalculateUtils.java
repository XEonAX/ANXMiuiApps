package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.graphics.RectF;
import com.miui.gallery.util.Log;
import java.util.List;

public class CropCalculateUtils {
    public static float[] getIntersection(float[] line1Start, float[] line1End, float[] line2Start, float[] line2End) {
        float x1 = line1Start[0];
        float y1 = line1Start[1];
        float x2 = line1End[0];
        float y2 = line1End[1];
        float x3 = line2Start[0];
        float y3 = line2Start[1];
        float x4 = line2End[0];
        float y4 = line2End[1];
        float k1 = Float.MAX_VALUE;
        float k2 = Float.MAX_VALUE;
        boolean isLine1Vertical = false;
        boolean isLine2Vertical = false;
        if (x1 - x2 == 0.0f) {
            isLine1Vertical = true;
        }
        if (x3 - x4 == 0.0f) {
            isLine2Vertical = true;
        }
        if (!isLine1Vertical) {
            k1 = (y1 - y2) / (x1 - x2);
        }
        if (!isLine2Vertical) {
            k2 = (y3 - y4) / (x3 - x4);
        }
        if (k1 == k2) {
            boolean isSame = false;
            if (isLine1Vertical && isLine2Vertical) {
                if (x1 == x3) {
                    isSame = true;
                }
            } else if (y1 - (k1 * x1) == y3 - (k2 * x3)) {
                isSame = true;
            }
            if (isSame) {
                if (isAtSameSide(line2Start, line2End, line1End)) {
                    return line1End;
                }
                if (isAtSameSide(line2Start, line2End, line1Start)) {
                    return line1Start;
                }
            }
            return null;
        }
        float x;
        float y;
        if (isLine1Vertical) {
            x = x1;
            if (k2 == 0.0f) {
                y = y3;
            } else {
                y = ((x - x4) * k2) + y4;
            }
        } else if (isLine2Vertical) {
            x = x3;
            if (k1 == 0.0f) {
                y = y1;
            } else {
                y = ((x - x2) * k1) + y2;
            }
        } else if (k1 == 0.0f) {
            y = y1;
            x = ((y - y4) / k2) + x4;
        } else if (k2 == 0.0f) {
            y = y3;
            x = ((y - y2) / k1) + x2;
        } else {
            x = ((((k1 * x2) - (k2 * x4)) + y4) - y2) / (k1 - k2);
            y = ((x - x2) * k1) + y2;
        }
        return new float[]{x, y};
    }

    public static boolean isParallel(float[] line1Start, float[] line1End, float[] line2Start, float[] line2End) {
        float x1 = line1Start[0];
        float y1 = line1Start[1];
        float x2 = line1End[0];
        float y2 = line1End[1];
        return ((line2Start[0] - line2End[0]) * (y1 - y2)) - ((x1 - x2) * (line2Start[1] - line2End[1])) == 0.0f;
    }

    public static boolean isAtSameSide(float[] lineStart, float[] lineEnd, float[] point) {
        float x1 = lineStart[0];
        float y1 = lineStart[1];
        float x2 = lineEnd[0];
        float y2 = lineEnd[1];
        float x3 = point[0];
        float y3 = point[1];
        if (x2 == x3 && y2 == y3) {
            return true;
        }
        if (x2 - x1 == 0.0f) {
            if ((y3 - y2) * (y2 - y1) <= 0.0f) {
                return false;
            }
            return true;
        } else if (y2 - y1 == 0.0f) {
            if ((x3 - x2) * (x2 - x1) <= 0.0f) {
                return false;
            }
            return true;
        } else if ((y3 - y2) * (y2 - y1) <= 0.0f || (x3 - x2) * (x2 - x1) <= 0.0f) {
            return false;
        } else {
            return true;
        }
    }

    public static boolean isOnSegment(float[] lineStart, float[] lineEnd, float[] point) {
        float x1 = lineStart[0];
        float y1 = lineStart[1];
        float x2 = lineEnd[0];
        float y2 = lineEnd[1];
        float x3 = point[0];
        float y3 = point[1];
        if (x3 < Math.min(x1, x2) || x3 > Math.max(x1, x2) || y3 < Math.min(y1, y2) || y3 > Math.max(y1, y2)) {
            return false;
        }
        return true;
    }

    private static float[] getSegmentIntersection(float[] line1Start, float[] line1End, float[] line2Start, float[] line2End) {
        float[] intersection = getIntersection(line1Start, line1End, line2Start, line2End);
        return (intersection != null && isOnSegment(line1Start, line1End, intersection) && isAtSameSide(line2Start, line2End, intersection)) ? intersection : null;
    }

    public static float[] getRectIntersection(List<float[]> imageRectPoints, float[] lineStart, float[] lineEnd) {
        for (int i = 0; i < imageRectPoints.size(); i++) {
            float[] intersection = getSegmentIntersection((float[]) imageRectPoints.get(i), (float[]) imageRectPoints.get((i + 1) % imageRectPoints.size()), lineStart, lineEnd);
            if (intersection != null) {
                return intersection;
            }
        }
        Log.d("CropCalculateUtils", "can not find intersection");
        return lineEnd;
    }

    public static void doRound(RectF imageArea) {
        imageArea.left = doRound(imageArea.left);
        imageArea.top = doRound(imageArea.top);
        imageArea.right = doRound(imageArea.right);
        imageArea.bottom = doRound(imageArea.bottom);
    }

    public static void doRound(float[] values) {
        for (int i = 0; i < values.length; i++) {
            values[i] = doRound(values[i]);
        }
    }

    private static float doRound(float value) {
        return ((float) Math.round(value * 100.0f)) / 100.0f;
    }
}
