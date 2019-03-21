package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.RectF;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.util.DecodeRegionImageUtils;

public class CoverImageSizeStrategy extends BaseStrategy {
    public CoverImageSizeStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        int width = cursor.getInt(12);
        int height = cursor.getInt(13);
        RectF faceRect = getFacePositionRect(cursor);
        if (DecodeRegionImageUtils.roundToSquareAndScale(new Rect((int) (faceRect.left * ((float) width)), (int) (faceRect.top * ((float) height)), (int) (faceRect.right * ((float) width)), (int) (faceRect.bottom * ((float) height))), width, height, 1.5f).width() >= GalleryApp.sGetAndroidContext().getResources().getDimensionPixelSize(R.dimen.people_face_size_large)) {
            return true;
        }
        return false;
    }
}
