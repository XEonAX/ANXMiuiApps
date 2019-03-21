package com.miui.gallery.util.photoview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import java.lang.ref.WeakReference;
import java.util.Locale;

public class Tile {
    private static Paint sPaint;
    private TileBit mBit;
    private int mColumn;
    private RectF mDisplayRect;
    private WeakReference<BitmapRecycleCallback> mRecycleCallbackRef;
    private int mRefreshId = -1;
    private int mRow;
    private int mSampleSize;
    private int mState;
    private Rect mTileRect;

    public Tile(Rect tileRect, RectF displayRect, int sampleSize, BitmapRecycleCallback callback) {
        this.mTileRect = tileRect;
        this.mDisplayRect = displayRect;
        this.mSampleSize = sampleSize;
        this.mRecycleCallbackRef = new WeakReference(callback);
        setActive(true);
    }

    public void setIndex(int row, int column) {
        this.mRow = row;
        this.mColumn = column;
    }

    private void setActive(boolean active) {
        this.mState &= -4;
        if (active) {
            this.mState |= 0;
        } else {
            this.mState |= 2;
        }
    }

    private boolean isContentValidate() {
        return this.mBit != null && this.mBit.isContentValidate();
    }

    private void setDecoded() {
        this.mState &= -13;
        if (isContentValidate()) {
            this.mState |= 4;
        } else {
            this.mState |= 8;
        }
    }

    protected void updateDisplayParam(RectF displayRect) {
        this.mDisplayRect.set(displayRect);
        setActive(true);
    }

    protected void updateTileParam(Rect tileRect, int sampleSize) {
        this.mTileRect.set(tileRect);
        this.mSampleSize = sampleSize;
    }

    public void setRefreshId(int refreshId) {
        this.mRefreshId = refreshId;
    }

    public int getRefreshId() {
        return this.mRefreshId;
    }

    public boolean decode(TileBitProvider provider) {
        if (provider != null) {
            this.mBit = provider.getTileBit(this.mTileRect, this.mSampleSize);
        }
        setDecoded();
        return isContentValidate();
    }

    private BitmapRecycleCallback getBitmapRecycleCallback() {
        return this.mRecycleCallbackRef != null ? (BitmapRecycleCallback) this.mRecycleCallbackRef.get() : null;
    }

    public void recycle() {
        this.mBit.recycle(getBitmapRecycleCallback());
        this.mBit = null;
        setActive(false);
        setDecoded();
        this.mRefreshId = -1;
    }

    private static Paint getPaint() {
        if (sPaint == null) {
            sPaint = new Paint();
        }
        return sPaint;
    }

    public boolean draw(Canvas canvas, Paint paint) {
        if (!isContentValidate()) {
            return false;
        }
        if (paint == null) {
            paint = getPaint();
        }
        this.mBit.draw(canvas, new RectF(this.mDisplayRect.left, this.mDisplayRect.top, this.mDisplayRect.left + (((this.mDisplayRect.width() * ((float) this.mBit.getValidateWidth())) * ((float) this.mSampleSize)) / ((float) this.mTileRect.width())), this.mDisplayRect.top + (((this.mDisplayRect.height() * ((float) this.mBit.getValidateHeight())) * ((float) this.mSampleSize)) / ((float) this.mTileRect.height()))), paint);
        return true;
    }

    public Rect getTileRect() {
        return this.mTileRect;
    }

    public boolean isActive() {
        return (this.mState & 3) == 0;
    }

    public String toString() {
        return String.format(Locale.US, "tileRect %s, displayRect %s, sampleSize %d, state %d, refreshId %d", new Object[]{String.valueOf(this.mTileRect), String.valueOf(this.mDisplayRect), Integer.valueOf(this.mSampleSize), Integer.valueOf(this.mState), Integer.valueOf(this.mRefreshId)});
    }
}
