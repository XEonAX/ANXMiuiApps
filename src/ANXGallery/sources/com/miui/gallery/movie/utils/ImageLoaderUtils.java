package com.miui.gallery.movie.utils;

import android.graphics.Bitmap.Config;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public class ImageLoaderUtils {
    public static Builder getNormalDisplayImageOptionsBuilder() {
        return new Builder().considerExifParams(true).resetViewBeforeLoading(false).imageScaleType(ImageScaleType.IN_SAMPLE_INT).cacheInMemory(false).cacheOnDisk(true).cacheBigPhoto(false).bitmapConfig(Config.RGB_565);
    }
}
