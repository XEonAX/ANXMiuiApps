package com.miui.gallery.provider.peoplecover;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.RectF;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.DecodeRegionImageUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.face.FaceRegionRectF;

public class CoverColorStrategy extends BaseStrategy {
    private PeopleCoverReusedBitCache mBitCache = new PeopleCoverReusedBitCache();

    public CoverColorStrategy(int weight) {
        super(weight);
    }

    public boolean isValid(Cursor cursor) {
        Bitmap coverBitmap = getCoverBitmap(getCoverFilePath(cursor), getFaceRegionRectF(cursor));
        if (coverBitmap == null) {
            return false;
        }
        int height = coverBitmap.getHeight();
        int width = coverBitmap.getWidth();
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                float saturation;
                int pixel = coverBitmap.getPixel(i, j);
                int red = Color.red(pixel);
                int blue = Color.blue(pixel);
                int green = Color.green(pixel);
                int max = Math.max(red, Math.max(green, blue));
                int min = Math.min(red, Math.min(green, blue));
                if (max == 0) {
                    saturation = 0.0f;
                } else {
                    saturation = ((float) (max - min)) / ((float) max);
                }
                float lightness = (((float) (max + min)) / 255.0f) / 2.0f;
                if (saturation > 0.25f && lightness > 0.25f && lightness < 0.75f) {
                    return true;
                }
            }
        }
        return false;
    }

    public void onFinish() {
        this.mBitCache.clear();
    }

    private String getCoverFilePath(Cursor cursor) {
        String path = cursor.getString(15);
        if (TextUtils.isEmpty(path)) {
            path = cursor.getString(16);
        }
        if (TextUtils.isEmpty(path)) {
            return cursor.getString(14);
        }
        return path;
    }

    private Bitmap getCoverBitmap(String filePath, RectF rect) {
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        try {
            Bitmap result = DecodeRegionImageUtils.decodeFaceRegion(rect, filePath, 1.0f, 50, ((ExifInterface) ExifUtil.sSupportExifCreator.create(filePath)).getAttributeInt("Orientation", 1), this.mBitCache);
            this.mBitCache.put(result);
            return result;
        } catch (Throwable th) {
            return null;
        } finally {
            BaseMiscUtil.closeSilently(null);
        }
    }

    public FaceRegionRectF getFaceRegionRectF(Cursor cursor) {
        return new FaceRegionRectF(cursor.getFloat(0), cursor.getFloat(1), cursor.getFloat(0) + cursor.getFloat(2), cursor.getFloat(1) + cursor.getFloat(3), cursor.getInt(11));
    }
}
