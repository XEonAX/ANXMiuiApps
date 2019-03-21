package com.miui.gallery.provider.peoplecover;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import com.miui.gallery.util.ReusedBitmapCache;

public class PeopleCoverReusedBitCache extends ReusedBitmapCache {
    protected boolean canUseForInBitmap(Bitmap bitmap, Options options) {
        if (!isSupportBytesCount()) {
            return super.canUseForInBitmap(bitmap, options);
        }
        int convertSampleSize = convertToPowerOf2(options.inSampleSize);
        int width = options.outWidth / convertSampleSize;
        int height = options.outHeight / convertSampleSize;
        return bitmap.getWidth() >= width && bitmap.getHeight() >= height && (width * height) * ReusedBitmapCache.getBytesPerPixel(bitmap.getConfig()) <= bitmap.getAllocationByteCount();
    }

    protected int getMaxCount() {
        return 3;
    }

    protected Config getConfig() {
        return Config.RGB_565;
    }

    protected boolean needMutable() {
        return false;
    }

    protected boolean needRecycle() {
        return false;
    }
}
