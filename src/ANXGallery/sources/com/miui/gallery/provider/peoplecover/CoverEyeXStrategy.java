package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;

public class CoverEyeXStrategy extends BaseStrategy {
    public CoverEyeXStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        boolean z = true;
        if (cursor == null) {
            return false;
        }
        float faceWidth;
        float leftDistance;
        float rightDistance;
        float faceStart;
        float faceEnd;
        if (isXYReversed(cursor.getInt(11))) {
            faceStart = cursor.getFloat(1);
            faceEnd = faceStart + cursor.getFloat(3);
            faceWidth = Math.abs(faceStart - faceEnd);
            leftDistance = Math.abs(cursor.getFloat(5) - faceStart);
            rightDistance = Math.abs(cursor.getFloat(7) - faceEnd);
        } else {
            faceStart = cursor.getFloat(0);
            faceEnd = faceStart + cursor.getFloat(2);
            faceWidth = Math.abs(faceStart - faceEnd);
            leftDistance = Math.abs(cursor.getFloat(4) - faceStart);
            rightDistance = Math.abs(cursor.getFloat(6) - faceEnd);
        }
        if (Math.abs(leftDistance - rightDistance) >= 0.05f * faceWidth) {
            z = false;
        }
        return z;
    }
}
