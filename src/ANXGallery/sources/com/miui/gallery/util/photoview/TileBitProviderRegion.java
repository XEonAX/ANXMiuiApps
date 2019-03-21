package com.miui.gallery.util.photoview;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import com.meicam.themehelper.BuildConfig;
import com.miui.gallery.Config.TileConfig;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.ExifInfo;
import com.miui.gallery.util.Log;

public class TileBitProviderRegion implements TileBitProvider {
    private int mImageHeight;
    private int mImageWidth;
    private boolean mIsFlip;
    private Object mLock = new Object();
    private BitmapRegionDecoder mRegionDecoder;
    private int mRotation;

    public TileBitProviderRegion(String path, byte[] secretKey) {
        this.mRegionDecoder = BitmapUtils.safeCreateBitmapRegionDecoder(path, false, secretKey);
        if (BitmapUtils.isValidate(this.mRegionDecoder)) {
            this.mImageWidth = this.mRegionDecoder.getWidth();
            this.mImageHeight = this.mRegionDecoder.getHeight();
            ExifInfo info = ExifUtil.parseRotationInfo(path, secretKey);
            if (info == null) {
                this.mRotation = 0;
                this.mIsFlip = false;
            } else {
                this.mRotation = info.rotation;
                this.mIsFlip = info.flip;
            }
        }
        Log.i("TileBitProviderRegion", "create");
    }

    public void release() {
        synchronized (this.mLock) {
            if (BitmapUtils.isValidate(this.mRegionDecoder)) {
                this.mRegionDecoder.recycle();
            }
            this.mRegionDecoder = null;
            Log.i("TileBitProviderRegion", BuildConfig.BUILD_TYPE);
        }
    }

    public TileBit getTileBit(Rect region, int sampleSize) {
        if (region == null) {
            return null;
        }
        Rect intersect = new Rect(0, 0, this.mImageWidth, this.mImageHeight);
        if (!intersect.intersect(region)) {
            return null;
        }
        Options options = new Options();
        options.inPreferredConfig = TileConfig.getBitmapConfig();
        options.inSampleSize = sampleSize;
        options.outWidth = intersect.width();
        options.outHeight = intersect.height();
        options.inBitmap = TileReusedBitCache.getInstance().get(options);
        Bitmap bitmap = null;
        synchronized (this.mLock) {
            if (BitmapUtils.isValidate(this.mRegionDecoder)) {
                bitmap = BitmapUtils.safeDecodeRegion(this.mRegionDecoder, intersect, options);
            }
        }
        if (bitmap == null) {
            synchronized (this.mLock) {
                if (BitmapUtils.isValidate(options.inBitmap)) {
                    Log.w("TileBitProviderRegion", "fail in decoding region use inBitmap [width %d, height %d]", Integer.valueOf(options.inBitmap.getWidth()), Integer.valueOf(options.inBitmap.getHeight()));
                    options.inBitmap.recycle();
                    options.inBitmap = null;
                    bitmap = BitmapUtils.safeDecodeRegion(this.mRegionDecoder, intersect, options);
                } else {
                    Log.w("TileBitProviderRegion", "fail in decoding region %s", region.toString());
                }
            }
        }
        if (BitmapUtils.isValidate(bitmap)) {
            return new TileBit(bitmap, intersect.width() / sampleSize, intersect.height() / sampleSize);
        }
        return null;
    }

    public int getImageWidth() {
        return this.mImageWidth;
    }

    public int getImageHeight() {
        return this.mImageHeight;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public boolean isFlip() {
        return this.mIsFlip;
    }
}
