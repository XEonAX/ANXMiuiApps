package com.xiaomi.scanner.translation.bean;

import android.graphics.Bitmap;
import android.graphics.Rect;

public class ScanDataBean {
    private Bitmap mBitmap;
    private Rect mCropRect;
    private ScanType mType;

    public enum ScanType {
        TRANSLATE_POINT,
        TRANSLATE_AREA,
        OCR
    }

    public ScanDataBean(Bitmap bitmap, ScanType type, Rect rect) {
        this.mBitmap = bitmap;
        this.mType = type;
        this.mCropRect = rect;
    }

    public ScanDataBean(Bitmap bitmap, ScanType type) {
        this.mBitmap = bitmap;
        this.mType = type;
    }

    public Rect getCropRect() {
        return this.mCropRect;
    }

    public ScanType getScanType() {
        return this.mType;
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public boolean isScanPointType() {
        return this.mType == ScanType.TRANSLATE_POINT;
    }

    public void clear() {
    }
}
