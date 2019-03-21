package com.miui.gallery.util.photoview;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import com.miui.gallery.Config.TileConfig;
import com.miui.gallery.util.ReusedBitmapCache;

public class TileReusedBitCache extends ReusedBitmapCache {
    private static TileReusedBitCache sInstance;

    private TileReusedBitCache() {
    }

    public static synchronized TileReusedBitCache getInstance() {
        TileReusedBitCache tileReusedBitCache;
        synchronized (TileReusedBitCache.class) {
            if (sInstance == null) {
                sInstance = new TileReusedBitCache();
            }
            tileReusedBitCache = sInstance;
        }
        return tileReusedBitCache;
    }

    protected boolean canUseForInBitmap(Bitmap bitmap, Options options) {
        if (isSupportBytesCount()) {
            int convertSampleSize = convertToPowerOf2(options.inSampleSize);
            int width = options.outWidth / convertSampleSize;
            int height = options.outHeight / convertSampleSize;
            int byteCount = (width * height) * ReusedBitmapCache.getBytesPerPixel(bitmap.getConfig());
            if (bitmap.getWidth() == width && bitmap.getHeight() == height && byteCount == bitmap.getAllocationByteCount()) {
                return true;
            }
            return false;
        } else if (bitmap.getWidth() == options.outWidth && bitmap.getHeight() == options.outHeight && options.inSampleSize == 1) {
            return true;
        } else {
            return false;
        }
    }

    protected int getMaxCount() {
        return TileConfig.getMaxCacheCount();
    }

    protected Config getConfig() {
        return TileConfig.getBitmapConfig();
    }

    protected boolean needMutable() {
        return false;
    }

    protected boolean needRecycle() {
        return true;
    }
}
