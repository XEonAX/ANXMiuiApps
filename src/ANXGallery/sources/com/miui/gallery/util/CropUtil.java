package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;

public class CropUtil {
    private static Bitmap cropSmallBitmap(boolean widthSmaller, float scale, Bitmap bitmap, int cropWidth, int cropHeight, boolean recyle) {
        Bitmap tmpBitmap = bitmap;
        if (widthSmaller) {
            int fitScreenHeight = (int) (((float) cropHeight) / scale);
            Utils.assertTrue(bitmap.getHeight() >= fitScreenHeight);
            tmpBitmap = BitmapUtils.safeCreateBitmap(bitmap, 0, (bitmap.getHeight() - fitScreenHeight) / 2, bitmap.getWidth(), fitScreenHeight);
        } else {
            int fitScreenWidth = (int) (((float) cropWidth) / scale);
            if (fitScreenWidth == 0) {
                fitScreenWidth = 1;
            }
            tmpBitmap = BitmapUtils.safeCreateBitmap(bitmap, (bitmap.getWidth() - fitScreenWidth) / 2, 0, fitScreenWidth, bitmap.getHeight());
        }
        if (tmpBitmap == null) {
            return null;
        }
        Bitmap newBitmap = BitmapUtils.resizeBitmapByScale(tmpBitmap, scale, recyle);
        if (!(tmpBitmap == newBitmap || tmpBitmap == bitmap)) {
            tmpBitmap.recycle();
        }
        return newBitmap;
    }

    private static Bitmap cropLargeBitmap(boolean widthSmaller, float scale, Bitmap bitmap, int cropWidth, int cropHeight, boolean recycle) {
        Bitmap newBitmap = BitmapUtils.resizeBitmapByScale(bitmap, scale, recycle);
        if (newBitmap == null) {
            return bitmap;
        }
        Bitmap tmpBitmap = newBitmap;
        if (widthSmaller) {
            if (cropHeight <= newBitmap.getHeight()) {
                tmpBitmap = BitmapUtils.safeCreateBitmap(newBitmap, 0, (newBitmap.getHeight() - cropHeight) / 2, newBitmap.getWidth(), cropHeight);
            }
        } else if (cropWidth <= newBitmap.getWidth()) {
            tmpBitmap = BitmapUtils.safeCreateBitmap(newBitmap, (newBitmap.getWidth() - cropWidth) / 2, 0, cropWidth, cropHeight);
        }
        if (tmpBitmap == null) {
            tmpBitmap = newBitmap;
        }
        if (newBitmap != tmpBitmap) {
            newBitmap.recycle();
        }
        if (tmpBitmap != bitmap && recycle) {
            bitmap.recycle();
        }
        return tmpBitmap;
    }

    public static Bitmap cropImage(Bitmap bitmap, int cropWidth, int cropHeight, boolean recycle) {
        if (bitmap == null) {
            return null;
        }
        boolean z;
        boolean widthSmaller;
        int minSrcSize;
        float scale;
        int srcWidth = bitmap.getWidth();
        int srcHeight = bitmap.getHeight();
        if (srcHeight == 0 || cropHeight == 0) {
            z = false;
        } else {
            z = true;
        }
        Utils.assertTrue(z, "wrong dimension", new Object[0]);
        if (((float) srcWidth) / ((float) srcHeight) < ((float) cropWidth) / ((float) cropHeight)) {
            widthSmaller = true;
            minSrcSize = srcWidth;
        } else {
            widthSmaller = false;
            minSrcSize = srcHeight;
        }
        if (widthSmaller) {
            scale = ((float) cropWidth) / ((float) minSrcSize);
        } else {
            scale = ((float) cropHeight) / ((float) minSrcSize);
        }
        if (scale < 1.0f) {
            return cropLargeBitmap(widthSmaller, scale, bitmap, cropWidth, cropHeight, recycle);
        }
        return cropSmallBitmap(widthSmaller, scale, bitmap, cropWidth, cropHeight, recycle);
    }

    public static Bitmap circleBitmap(Bitmap src) {
        if (src == null || src.isRecycled()) {
            return null;
        }
        return circleBitmap(src, Math.min(src.getWidth(), src.getHeight()));
    }

    public static Bitmap circleBitmap(Bitmap src, int targetSize) {
        if (src == null || src.isRecycled()) {
            return null;
        }
        Bitmap target = BitmapUtils.safeCreateBitmap(targetSize, targetSize, Config.ARGB_8888);
        if (target == null) {
            return null;
        }
        int radius = targetSize / 2;
        BitmapShader bitmapShader = new BitmapShader(src, TileMode.REPEAT, TileMode.REPEAT);
        Canvas c = new Canvas(target);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        c.drawCircle((float) radius, (float) radius, (float) radius, paint);
        return target;
    }
}
