package com.miui.gallery.video.editor.util;

import android.graphics.Bitmap.Config;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public class ImageLoaderUtils {
    public static DisplayImageOptions mVideoEditorDisplayImageOptions = new Builder().considerExifParams(true).resetViewBeforeLoading(false).imageScaleType(ImageScaleType.IN_SAMPLE_INT).cacheInMemory(true).cacheOnDisk(true).cacheBigPhoto(false).bitmapConfig(Config.ARGB_8888).build();
}
