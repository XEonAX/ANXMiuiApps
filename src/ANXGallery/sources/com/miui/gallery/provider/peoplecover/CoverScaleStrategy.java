package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.RectF;

public class CoverScaleStrategy extends BaseStrategy {
    public CoverScaleStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        int width = cursor.getInt(12);
        int height = cursor.getInt(13);
        RectF faceRect = getFacePositionRect(cursor);
        return isFaceFullInDisplayRect(new Rect((int) (faceRect.left * ((float) width)), (int) (faceRect.top * ((float) height)), (int) (faceRect.right * ((float) width)), (int) (faceRect.bottom * ((float) height))), width, height);
    }

    public static boolean isFaceFullInDisplayRect(Rect facePos, int imageWidth, int imageHeight) {
        return Math.max(facePos.right - facePos.left, facePos.bottom - facePos.top) <= Math.min(Math.min(facePos.centerX(), facePos.centerY()), Math.min(imageWidth - facePos.centerX(), imageHeight - facePos.centerY())) * 2;
    }
}
