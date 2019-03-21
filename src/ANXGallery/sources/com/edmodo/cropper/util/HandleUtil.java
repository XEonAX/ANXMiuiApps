package com.edmodo.cropper.util;

import android.graphics.PointF;
import com.edmodo.cropper.cropwindow.handle.Handle;

public class HandleUtil {
    public static Handle getPressedHandle(float x, float y, float left, float top, float right, float bottom, float targetRadius) {
        Handle closestHandle = null;
        float closestDistance = Float.POSITIVE_INFINITY;
        float distanceToTopLeft = MathUtil.calculateDistance(x, y, left, top);
        if (distanceToTopLeft < Float.POSITIVE_INFINITY) {
            closestDistance = distanceToTopLeft;
            closestHandle = Handle.TOP_LEFT;
        }
        float distanceToTopRight = MathUtil.calculateDistance(x, y, right, top);
        if (distanceToTopRight < closestDistance) {
            closestDistance = distanceToTopRight;
            closestHandle = Handle.TOP_RIGHT;
        }
        float distanceToBottomLeft = MathUtil.calculateDistance(x, y, left, bottom);
        if (distanceToBottomLeft < closestDistance) {
            closestDistance = distanceToBottomLeft;
            closestHandle = Handle.BOTTOM_LEFT;
        }
        float distanceToBottomRight = MathUtil.calculateDistance(x, y, right, bottom);
        if (distanceToBottomRight < closestDistance) {
            closestDistance = distanceToBottomRight;
            closestHandle = Handle.BOTTOM_RIGHT;
        }
        if (closestDistance <= targetRadius) {
            return closestHandle;
        }
        if (isInHorizontalTargetZone(x, y, left, right, top, targetRadius)) {
            return Handle.TOP;
        }
        if (isInHorizontalTargetZone(x, y, left, right, bottom, targetRadius)) {
            return Handle.BOTTOM;
        }
        if (isInVerticalTargetZone(x, y, left, top, bottom, targetRadius)) {
            return Handle.LEFT;
        }
        if (isInVerticalTargetZone(x, y, right, top, bottom, targetRadius)) {
            return Handle.RIGHT;
        }
        if (isWithinBounds(x, y, left, top, right, bottom)) {
            return Handle.CENTER;
        }
        return null;
    }

    public static void getOffset(Handle handle, float x, float y, float left, float top, float right, float bottom, PointF touchOffsetOutput) {
        float touchOffsetX = 0.0f;
        float touchOffsetY = 0.0f;
        switch (handle) {
            case TOP_LEFT:
                touchOffsetX = left - x;
                touchOffsetY = top - y;
                break;
            case TOP_RIGHT:
                touchOffsetX = right - x;
                touchOffsetY = top - y;
                break;
            case BOTTOM_LEFT:
                touchOffsetX = left - x;
                touchOffsetY = bottom - y;
                break;
            case BOTTOM_RIGHT:
                touchOffsetX = right - x;
                touchOffsetY = bottom - y;
                break;
            case LEFT:
                touchOffsetX = left - x;
                touchOffsetY = 0.0f;
                break;
            case TOP:
                touchOffsetX = 0.0f;
                touchOffsetY = top - y;
                break;
            case RIGHT:
                touchOffsetX = right - x;
                touchOffsetY = 0.0f;
                break;
            case BOTTOM:
                touchOffsetX = 0.0f;
                touchOffsetY = bottom - y;
                break;
            case CENTER:
                touchOffsetX = ((right + left) / 2.0f) - x;
                touchOffsetY = ((top + bottom) / 2.0f) - y;
                break;
        }
        touchOffsetOutput.x = touchOffsetX;
        touchOffsetOutput.y = touchOffsetY;
    }

    private static boolean isInHorizontalTargetZone(float x, float y, float handleXStart, float handleXEnd, float handleY, float targetRadius) {
        return x > handleXStart && x < handleXEnd && Math.abs(y - handleY) <= targetRadius;
    }

    private static boolean isInVerticalTargetZone(float x, float y, float handleX, float handleYStart, float handleYEnd, float targetRadius) {
        return Math.abs(x - handleX) <= targetRadius && y > handleYStart && y < handleYEnd;
    }

    private static boolean isWithinBounds(float x, float y, float left, float top, float right, float bottom) {
        return x >= left && x <= right && y >= top && y <= bottom;
    }
}
