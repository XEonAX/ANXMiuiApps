package com.miui.gallery.assistant.model;

import android.database.Cursor;
import com.miui.gallery.dao.base.Entity;

public class TinyImageFeature {
    public static final String[] PROJECTION = new String[]{"imageId", "score", "clusterGroupId", "iqaExpo", "iqaNois", "iqaBlur", "iqaBlueType"};
    public static final String[] PROJECTION_GROUP = new String[]{"imageId"};
    private final long mClusterGroupId;
    private final long mImageId;
    private boolean mIsPoorImage;
    private final double mScore;

    public TinyImageFeature(Cursor cursor) {
        this.mImageId = Entity.getLong(cursor, "imageId");
        this.mScore = Entity.getDoubleDefault(cursor, "score", 0.0d);
        this.mClusterGroupId = Entity.getLongDefault(cursor, "clusterGroupId", 0);
        double mIqaExpo = Entity.getDoubleDefault(cursor, "iqaExpo", 0.0d);
        boolean z = (Entity.getDoubleDefault(cursor, "iqaBlur", 0.0d) < 82.0d && ((double) Entity.getIntDefault(cursor, "iqaBlueType", -1)) == 0.0d) || Entity.getDoubleDefault(cursor, "iqaNois", 0.0d) < 79.4d || mIqaExpo < 62.3d;
        this.mIsPoorImage = z;
    }

    public long getImageId() {
        return this.mImageId;
    }

    public double getScore() {
        return this.mScore;
    }

    public long getClusterGroupId() {
        return this.mClusterGroupId;
    }

    public boolean isPoorImage() {
        return this.mIsPoorImage;
    }
}
