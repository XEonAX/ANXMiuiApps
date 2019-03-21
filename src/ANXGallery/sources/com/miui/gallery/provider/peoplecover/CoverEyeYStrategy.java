package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;

public class CoverEyeYStrategy extends BaseStrategy {
    public CoverEyeYStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        float eyeh;
        float h;
        if (isXYReversed(cursor.getInt(11))) {
            eyeh = cursor.getFloat(6) - cursor.getFloat(4);
            h = cursor.getFloat(2);
        } else {
            eyeh = cursor.getFloat(7) - cursor.getFloat(5);
            h = cursor.getFloat(3);
        }
        if (Math.abs(eyeh) < 0.1f * h) {
            return true;
        }
        return false;
    }
}
