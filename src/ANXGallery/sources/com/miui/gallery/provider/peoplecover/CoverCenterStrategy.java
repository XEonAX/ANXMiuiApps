package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;

public class CoverCenterStrategy extends BaseStrategy {
    public CoverCenterStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        float end;
        float start;
        if (isXYReversed(cursor.getInt(11))) {
            start = cursor.getFloat(1);
            end = start + cursor.getFloat(3);
        } else {
            start = cursor.getFloat(0);
            end = start + cursor.getFloat(2);
        }
        if (end < 0.25f || start > 0.75f) {
            return false;
        }
        return true;
    }
}
