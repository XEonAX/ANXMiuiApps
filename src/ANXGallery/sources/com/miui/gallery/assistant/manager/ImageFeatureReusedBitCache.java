package com.miui.gallery.assistant.manager;

import android.graphics.Bitmap.Config;
import com.miui.gallery.util.ReusedBitmapCache;

public class ImageFeatureReusedBitCache extends ReusedBitmapCache {
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
