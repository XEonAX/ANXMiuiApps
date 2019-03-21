package com.miui.gallery.util.photoview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.Log;

public class TileBit {
    private static final Rect sTileRect = new Rect();
    private Bitmap mBitmap;
    private int mValidateHeight;
    private int mValidateWidth;

    public TileBit(Bitmap bitmap, int validateWidth, int validateHeight) {
        this.mBitmap = bitmap;
        this.mValidateWidth = validateWidth;
        this.mValidateHeight = validateHeight;
    }

    public int getValidateWidth() {
        return this.mValidateWidth;
    }

    public int getValidateHeight() {
        return this.mValidateHeight;
    }

    public void recycle(BitmapRecycleCallback callback) {
        if (isContentValidate()) {
            if (callback != null) {
                callback.recycle(this.mBitmap);
            } else {
                Log.i("TileBit", "recycle bitmap: %s", this.mBitmap);
                this.mBitmap.recycle();
            }
        }
        this.mBitmap = null;
    }

    public boolean isContentValidate() {
        return BitmapUtils.isValidate(this.mBitmap);
    }

    public void draw(Canvas canvas, RectF tarRect, Paint paint) {
        sTileRect.set(0, 0, getValidateWidth(), getValidateHeight());
        canvas.drawBitmap(this.mBitmap, sTileRect, tarRect, paint);
    }
}
