package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;
import android.graphics.RectF;

public abstract class BaseStrategy {
    public static final String[] PROJECTION = new String[]{"faceXScale", "faceYScale", "faceWScale", "faceHScale", "leftEyeXScale", "leftEyeYScale", "RightEyeXScale", "RightEyeYScale", "photo_id", "photo_server_id", "serverId", "exifOrientation", "exifImageWidth", "exifImageLength", "microthumbfile", "thumbnailFile", "localFile"};
    protected int mWeight;

    public abstract boolean isValid(Cursor cursor);

    public BaseStrategy(int weight) {
        this.mWeight = weight;
    }

    public int getWeight() {
        return this.mWeight;
    }

    protected boolean isXYReversed(int orientation) {
        if (orientation == 5 || orientation == 6 || orientation == 7 || orientation == 8) {
            return true;
        }
        return false;
    }

    protected RectF getFacePositionRect(Cursor cursor) {
        float x = cursor.getFloat(0);
        float y = cursor.getFloat(1);
        return new RectF(x, y, cursor.getFloat(2) + x, cursor.getFloat(3) + y);
    }

    public void onFinish() {
    }
}
