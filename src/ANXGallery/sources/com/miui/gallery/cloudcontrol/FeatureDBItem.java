package com.miui.gallery.cloudcontrol;

import android.database.Cursor;

public class FeatureDBItem extends FeatureProfile {
    public static final String[] PROJECTION = new String[]{"_id", "featureName", "status", "strategy"};
    private long mId;

    public static FeatureDBItem fromCursor(Cursor cursor) {
        FeatureDBItem item = new FeatureDBItem();
        item.setId(cursor.getLong(0));
        item.setName(cursor.getString(1));
        item.setStatus(cursor.getString(2));
        item.setStrategy(cursor.getString(3));
        return item;
    }

    public void setId(long id) {
        this.mId = id;
    }
}
