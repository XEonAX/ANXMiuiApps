package com.miui.screenrecorder.tools;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.widget.ImageView;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

public class MSRImageLoader {
    private static final int DELAY_BEFORE_LOADING = 100;
    private static final int RAM_CACHE_SIZE = 2097152;
    public static final String TAG = "MSRImageLoader";
    private static final int THREAD_POOL_SIZE = 3;
    private static MSRImageLoader mInstance;
    private ImageLoader mImageLoader = ImageLoader.getInstance();

    public static synchronized MSRImageLoader getInstance(Context context) {
        MSRImageLoader mSRImageLoader;
        synchronized (MSRImageLoader.class) {
            if (mInstance == null) {
                mInstance = new MSRImageLoader(context);
            }
            mSRImageLoader = mInstance;
        }
        return mSRImageLoader;
    }

    private MSRImageLoader(Context context) {
        initImageLoader(context, this.mImageLoader);
    }

    private void initImageLoader(Context context, ImageLoader imageLoader) {
        imageLoader.init(new Builder(context).threadPoolSize(3).threadPriority(3).denyCacheImageMultipleSizesInMemory().memoryCache(new WeakMemoryCache()).memoryCacheSize(2097152).tasksProcessingOrder(QueueProcessingType.FIFO).build());
    }

    public void displayImage(String uri, ImageView imageView, ImageLoadingListener listener) {
        this.mImageLoader.displayImage(uri, imageView, createDisplayImageOptions(), listener, null);
    }

    private DisplayImageOptions createDisplayImageOptions() {
        return new DisplayImageOptions.Builder().cacheInMemory(true).cacheOnDisk(false).bitmapConfig(Config.RGB_565).imageScaleType(ImageScaleType.EXACTLY).displayer(new MSRBitmapDisplayer((int) ScreenRecorderApplication.getContext().getResources().getDimension(R.dimen.thumbnail_round))).delayBeforeLoading(100).build();
    }
}
