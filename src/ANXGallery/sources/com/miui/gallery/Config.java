package com.miui.gallery;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.uil.ImageDecoderSupportRegion;
import com.miui.gallery.util.uil.PhotoReusedBitCache;
import com.miui.gallery.util.uil.ThumbnailDiskCache;
import com.miui.os.Rom;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.impl.FIFOLimitedMemoryCache;
import com.nostra13.universalimageloader.cache.memory.impl.LRULimitedMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import java.io.File;

public class Config {

    public static class BigPhotoConfig {
        public static final DisplayImageOptions BIG_PHOTO_DISPLAY_IMAGE_OPTIONS_DEFAULT = new Builder().resetViewBeforeLoading(false).considerExifParams(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(getBitmapConfig()).reusedBitmapCache(PhotoReusedBitCache.getInstance()).cacheBigPhoto(true).build();
        public static final ImageSize BIG_PHOTO_SIZE_DEFAULT = null;

        public static android.graphics.Bitmap.Config getBitmapConfig() {
            return android.graphics.Bitmap.Config.ARGB_8888;
        }

        public static String getCacheDir() {
            return StorageUtils.getCacheDirectory();
        }

        private static int getBlurRadius() {
            return 3;
        }

        public static DisplayImageOptions appendBlurOptions(DisplayImageOptions options) {
            return new Builder().cloneFrom(options).bitmapConfig(android.graphics.Bitmap.Config.ARGB_8888).loadThumbnail(false).cacheThumbnail(false).cacheBigPhoto(false).blurRadius(getBlurRadius()).build();
        }
    }

    public static class ImageDownload {
        public static boolean requireWLAN(DownloadType type) {
            return type == DownloadType.ORIGIN || type == DownloadType.ORIGIN_BATCH || type == DownloadType.THUMBNAIL_BATCH;
        }
    }

    public static class ImageLoaderConfig {
        public static ImageLoaderConfiguration getConfig(Context context) {
            DiskCache diskCache = new ThumbnailDiskCache(ThumbConfig.getDiskCacheDir(), 15000, 1610612736);
            boolean isLoggingEnabled = Rom.IS_ALPHA || Rom.IS_DEV;
            ImageLoaderConfiguration.Builder builder = new ImageLoaderConfiguration.Builder(context).thumbnailCache(diskCache).diskCacheSize(31457280).memoryCache(new LRULimitedMemoryCache(ThumbConfig.get().sImageMemoryCache)).subMemoryCache(new FIFOLimitedMemoryCache(ThumbConfig.get().sImagePreloadMemoryCache)).threadPoolSize(4).threadPriority(4).tasksProcessingOrder(QueueProcessingType.FIFO).imageDecoder(new ImageDecoderSupportRegion(isLoggingEnabled));
            if (isLoggingEnabled) {
                builder.writeDebugLogs();
            }
            return builder.build();
        }
    }

    public static class ScreenConfig {
        private static int sHeightPixels;
        private static int sRealHeightPixels;
        private static int sRealWidthPixels;
        private static int sWidthPixels;

        private static void init() {
            WindowManager wm = (WindowManager) GalleryApp.sGetAndroidContext().getSystemService("window");
            DisplayMetrics dm = new DisplayMetrics();
            wm.getDefaultDisplay().getMetrics(dm);
            sWidthPixels = dm.widthPixels;
            sHeightPixels = dm.heightPixels;
            wm.getDefaultDisplay().getRealMetrics(dm);
            sRealWidthPixels = dm.widthPixels;
            sRealHeightPixels = dm.heightPixels;
        }

        public static int getScreenWidth() {
            if (sWidthPixels == 0) {
                init();
            }
            return sWidthPixels;
        }

        public static int getScreenHeight() {
            if (sHeightPixels == 0) {
                init();
            }
            return sHeightPixels;
        }

        public static int getRealScreenWidth() {
            if (sRealWidthPixels == 0) {
                init();
            }
            return sRealWidthPixels;
        }

        public static int getRealScreenHeight() {
            if (sRealHeightPixels == 0) {
                init();
            }
            return sRealHeightPixels;
        }
    }

    public static class SecretAlbumConfig {
        public static long getSupportedSpecialTypeFlags(long origin) {
            return 0 & origin;
        }
    }

    public static class ShareAlbumConfig {
        public static long getSupportedSpecialTypeFlags(long origin) {
            return 0 & origin;
        }
    }

    public static class ThumbConfig {
        public static final DisplayImageOptions MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT = new Builder().cacheThumbnail(true).cacheInMemory(true).loadFromMicroCache(true).considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(getThumbConfig()).showImageOnLoading(R.drawable.image_default_cover).build();
        public static final DisplayImageOptions THUMBNAIL_DISPLAY_IMAGE_OPTIONS_DEFAULT = new Builder().loadThumbnail(true).cacheThumbnail(true).loadOriginScaleThumbnail(true).considerExifParams(true).bitmapConfig(android.graphics.Bitmap.Config.RGB_565).build();
        private static ThumbConfig sInstance;
        public final ImageSize sAlbumHeaderThumbTargetSize;
        public final int sImageMemoryCache;
        public final int sImagePreloadMemoryCache;
        public final ImageSize sMicroHorizontalDocumentTargetSize;
        public final int sMicroPanoColumns = 1;
        public final ImageSize sMicroPanoTargetSize;
        public final ImageSize sMicroRecentTargetSize;
        public final ImageSize sMicroScreenshotTargetSize;
        public final ImageSize sMicroTargetSize;
        public final int sMicroThumbColumnsLand;
        public final int sMicroThumbColumnsPortrait;
        public final int sMicroThumbHorizontalDocumentColumns = 2;
        public final int sMicroThumbRecentColumnsLand;
        public final int sMicroThumbRecentColumnsPortrait;
        public final int sMicroThumbScreenshotColumnsLand;
        public final int sMicroThumbScreenshotColumnsPortrait;
        public final int sPreloadNum;

        private ThumbConfig() {
            Resources resources = GalleryApp.sGetAndroidContext().getResources();
            int horizontalSpacing = resources.getDimensionPixelOffset(R.dimen.micro_thumb_horizontal_spacing);
            int screenWidth = ScreenConfig.getScreenWidth();
            int screenHeight = ScreenConfig.getScreenHeight();
            this.sMicroThumbColumnsPortrait = resources.getInteger(R.integer.thumbnail_columns);
            this.sMicroThumbColumnsLand = resources.getInteger(R.integer.thumbnail_columns_land);
            int microThumbSize = (Math.min(screenWidth, screenHeight) - ((this.sMicroThumbColumnsPortrait - 1) * horizontalSpacing)) / Math.min(this.sMicroThumbColumnsPortrait, this.sMicroThumbColumnsLand);
            this.sMicroTargetSize = new ImageSize(microThumbSize, microThumbSize);
            this.sMicroRecentTargetSize = new ImageSize(microThumbSize, microThumbSize);
            int albumThumbSize = Math.min(screenWidth, screenHeight) / resources.getInteger(R.integer.album_page_header_columns);
            this.sAlbumHeaderThumbTargetSize = new ImageSize(albumThumbSize, (int) (((double) albumThumbSize) / 1.5d));
            this.sMicroThumbRecentColumnsPortrait = resources.getInteger(R.integer.thumbnail_recent_columns);
            this.sMicroThumbRecentColumnsLand = resources.getInteger(R.integer.thumbnail_recent_columns_land);
            this.sMicroThumbScreenshotColumnsPortrait = resources.getInteger(R.integer.thumbnail_screenshot_columns);
            this.sMicroThumbScreenshotColumnsLand = resources.getInteger(R.integer.thumbnail_screenshot_columns_land);
            this.sMicroScreenshotTargetSize = new ImageSize(resources.getDimensionPixelSize(R.dimen.micro_screenshot_thumbnail_width), resources.getDimensionPixelSize(R.dimen.micro_screenshot_thumbnail_height));
            int width = resources.getDimensionPixelSize(R.dimen.micro_pano_thumbnail_width);
            int height = resources.getDimensionPixelSize(R.dimen.micro_pano_thumbnail_height);
            this.sMicroPanoTargetSize = new ImageSize(width, height);
            width = resources.getDimensionPixelSize(R.dimen.micro_horizontal_document_thumbnail_width);
            if (BuildUtil.isXiaoMi()) {
                width = Math.min(ScreenConfig.getScreenWidth(), ScreenConfig.getScreenHeight()) / 2;
                height = (resources.getInteger(R.integer.micro_horizontal_document_item_height_scale) * width) / resources.getInteger(R.integer.micro_horizontal_document_item_width_scale);
            }
            this.sMicroHorizontalDocumentTargetSize = new ImageSize(width, height);
            short onePixelSize = BitmapUtils.getConfigSize(getThumbConfig());
            this.sImageMemoryCache = Math.max((screenWidth * screenHeight) * onePixelSize, 5242880);
            this.sImagePreloadMemoryCache = (int) (0.6f * ((float) this.sImageMemoryCache));
            this.sPreloadNum = Math.max((int) ((0.8f * ((float) this.sImagePreloadMemoryCache)) / ((float) ((microThumbSize * microThumbSize) * onePixelSize))), 0);
        }

        public static synchronized ThumbConfig get() {
            ThumbConfig thumbConfig;
            synchronized (ThumbConfig.class) {
                if (sInstance == null) {
                    sInstance = new ThumbConfig();
                }
                thumbConfig = sInstance;
            }
            return thumbConfig;
        }

        public static File getDiskCacheDir() {
            return new File(StorageUtils.getCacheDirectory());
        }

        public static android.graphics.Bitmap.Config getThumbConfig() {
            return android.graphics.Bitmap.Config.RGB_565;
        }

        private static int getBlurRadius() {
            return 3;
        }

        public static DisplayImageOptions appendBlurOptions(DisplayImageOptions options) {
            return new Builder().cloneFrom(options).bitmapConfig(android.graphics.Bitmap.Config.ARGB_8888).loadThumbnail(false).cacheThumbnail(false).cacheInMemory(true).blurRadius(getBlurRadius()).build();
        }
    }

    public static class TileConfig {
        private static int sCacheCount = 12;

        public static int getMaxCacheCount() {
            return sCacheCount;
        }

        public static android.graphics.Bitmap.Config getBitmapConfig() {
            return android.graphics.Bitmap.Config.ARGB_8888;
        }

        public static boolean needUseTile(int width, int height) {
            return ((float) Math.max(width, height)) > ((float) Math.min(ScreenConfig.getScreenWidth(), ScreenConfig.getScreenHeight())) * 1.0f;
        }
    }
}
