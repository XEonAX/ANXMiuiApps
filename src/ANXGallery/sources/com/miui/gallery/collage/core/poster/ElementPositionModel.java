package com.miui.gallery.collage.core.poster;

import android.graphics.RectF;

public class ElementPositionModel {
    public float height;
    public int locationType;
    public float width;
    public float x;
    public float y;

    public static void getRectByLocation(RectF rect, ElementPositionModel positionModel, float width, float height, int parentWidth, int parentHeight, boolean isRTL) {
        float x = positionModel.x * ((float) parentWidth);
        float y = positionModel.y * ((float) parentHeight);
        switch (positionModel.locationType) {
            case 0:
                rect.left = x;
                rect.top = y;
                break;
            case 1:
                rect.left = x;
                rect.top = y - (height / 2.0f);
                break;
            case 2:
                rect.left = x;
                rect.top = y - height;
                break;
            case 3:
                rect.left = x - (width / 2.0f);
                rect.top = y;
                break;
            case 4:
                rect.left = x - (width / 2.0f);
                rect.top = y - (height / 2.0f);
                break;
            case 5:
                rect.left = x - (width / 2.0f);
                rect.top = y - height;
                break;
            case 6:
                rect.left = x - width;
                rect.top = y;
                break;
            case 7:
                rect.left = x - width;
                rect.top = y - (height / 2.0f);
                break;
            case 8:
                rect.left = x - width;
                rect.top = y - height;
                break;
        }
        if (isRTL) {
            rect.left = (((float) parentWidth) - rect.left) - width;
        }
        rect.right = rect.left + width;
        rect.bottom = rect.top + height;
    }
}
