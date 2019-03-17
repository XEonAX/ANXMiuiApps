package com.xiaomi.scanner.translation.bean;

import android.graphics.Bitmap;
import android.graphics.Rect;

public class CropImageBean {
    private Bitmap mBitmap;
    private Rect mDestRect;
    private Rect mSourceRect;

    public CropImageBean(Bitmap bitmap, Rect source, Rect dest) {
        this.mBitmap = bitmap;
        this.mSourceRect = source;
        this.mDestRect = dest;
    }

    public void setSourceRect(Rect rect) {
        this.mSourceRect = rect;
    }

    public Rect getSourceRect() {
        return this.mSourceRect;
    }

    public void setDestRect(Rect rect) {
        this.mDestRect = rect;
    }

    public Rect getDestRect() {
        return this.mDestRect;
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public void clear() {
    }
}
