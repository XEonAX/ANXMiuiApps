package com.nostra13.universalimageloader.core;

import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.miui.gallery.util.ReusedBitmapCache;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.BitmapDisplayer;
import com.nostra13.universalimageloader.core.process.BitmapProcessor;
import java.io.Serializable;

public final class DisplayImageOptions implements Serializable {
    private int blurRadius;
    private final boolean cacheInMemory;
    private boolean cacheInSubMemory;
    private final boolean cacheOnDisk;
    private final boolean cacheThumbnail;
    private final boolean considerExifParams;
    private boolean considerFileLength;
    private final Options decodingOptions;
    private final int delayBeforeLoading;
    private final boolean delayCacheThumbnail;
    private final BitmapDisplayer displayer;
    private final Object extraForDownloader;
    private long fileLength;
    private final Handler handler;
    private final Drawable imageForEmptyUri;
    private final Drawable imageOnFail;
    private final Drawable imageOnLoading;
    private final int imageResForEmptyUri;
    private final int imageResOnFail;
    private final int imageResOnLoading;
    private final ImageScaleType imageScaleType;
    private boolean isCacheBigPhoto;
    private boolean isHighPriority;
    private boolean isLoadFromBigPhotoCache;
    private boolean isLoadFromMemoryOnly;
    private boolean isLoadFromMicroCache;
    private boolean isLoadOriginScaleThumbnail;
    private boolean isLoadThumbnail;
    private boolean isPreferSyncLoadFromMicroCache;
    private boolean isSecretImage;
    private boolean isSyncLoadFromThumbCache;
    private final boolean isSyncLoading;
    private final BitmapProcessor postProcessor;
    private final BitmapProcessor preProcessor;
    private final boolean resetViewBeforeLoading;
    private ReusedBitmapCache reusedBitmapCache;
    private byte[] secretKey;
    private boolean usingRegionDecoderFace;

    public static class Builder {
        private int blurRadius = -1;
        private boolean cacheInMemory = false;
        private boolean cacheInSubMemory;
        private boolean cacheOnDisk = false;
        private boolean cacheThumbnail = false;
        private boolean considerExifParams = false;
        private boolean considerFileLength;
        private Options decodingOptions = new Options();
        private int delayBeforeLoading = 0;
        private boolean delayCacheThumbnail = false;
        private BitmapDisplayer displayer = DefaultConfigurationFactory.createBitmapDisplayer();
        private Object extraForDownloader = null;
        private long fileLength;
        private Handler handler = null;
        private Drawable imageForEmptyUri = null;
        private Drawable imageOnFail = null;
        private Drawable imageOnLoading = null;
        private int imageResForEmptyUri = 0;
        private int imageResOnFail = 0;
        private int imageResOnLoading = 0;
        private ImageScaleType imageScaleType = ImageScaleType.IN_SAMPLE_POWER_OF_2;
        private boolean isCacheBigPhoto;
        private boolean isHighPriority = false;
        private boolean isLoadFromBigPhotoCache;
        private boolean isLoadFromMemoryOnly;
        private boolean isLoadFromMicroCache;
        private boolean isLoadOriginScaleThumbnail;
        private boolean isLoadThumbnail;
        private boolean isPreferSyncLoadFromMicroCache = true;
        private boolean isSecretImage;
        private boolean isSyncLoadFromThumbCache;
        private boolean isSyncLoading = false;
        private BitmapProcessor postProcessor = null;
        private BitmapProcessor preProcessor = null;
        private boolean resetViewBeforeLoading = false;
        private ReusedBitmapCache reusedBitmapCache;
        private byte[] secretKey;
        private boolean usingRegionDecoderFace = false;

        @Deprecated
        public Builder showStubImage(int imageRes) {
            this.imageResOnLoading = imageRes;
            return this;
        }

        public Builder showImageOnLoading(int imageRes) {
            this.imageResOnLoading = imageRes;
            return this;
        }

        public Builder showImageForEmptyUri(int imageRes) {
            this.imageResForEmptyUri = imageRes;
            return this;
        }

        public Builder showImageOnFail(int imageRes) {
            this.imageResOnFail = imageRes;
            return this;
        }

        public Builder resetViewBeforeLoading(boolean resetViewBeforeLoading) {
            this.resetViewBeforeLoading = resetViewBeforeLoading;
            return this;
        }

        public Builder cacheInMemory(boolean cacheInMemory) {
            this.cacheInMemory = cacheInMemory;
            return this;
        }

        @Deprecated
        public Builder cacheOnDisc() {
            return cacheOnDisk(true);
        }

        public Builder cacheOnDisk(boolean cacheOnDisk) {
            this.cacheOnDisk = cacheOnDisk;
            return this;
        }

        public Builder cacheThumbnail(boolean cacheThumbnail) {
            this.cacheThumbnail = cacheThumbnail;
            return this;
        }

        public Builder delayCacheThumbnail(boolean delayCacheThumbnail) {
            this.delayCacheThumbnail = delayCacheThumbnail;
            return this;
        }

        public Builder cacheBigPhoto(boolean cacheBigPhoto) {
            this.isCacheBigPhoto = cacheBigPhoto;
            return this;
        }

        public Builder imageScaleType(ImageScaleType imageScaleType) {
            this.imageScaleType = imageScaleType;
            return this;
        }

        public Builder bitmapConfig(Config bitmapConfig) {
            if (bitmapConfig == null) {
                throw new IllegalArgumentException("bitmapConfig can't be null");
            }
            this.decodingOptions.inPreferredConfig = bitmapConfig;
            return this;
        }

        public Builder considerExifParams(boolean considerExifParams) {
            this.considerExifParams = considerExifParams;
            return this;
        }

        public Builder displayer(BitmapDisplayer displayer) {
            if (displayer == null) {
                throw new IllegalArgumentException("displayer can't be null");
            }
            this.displayer = displayer;
            return this;
        }

        public Builder usingRegionDecoderFace(boolean usingRegionDecoderFace) {
            this.usingRegionDecoderFace = usingRegionDecoderFace;
            return this;
        }

        public Builder secretKey(byte[] secretKey) {
            this.isSecretImage = true;
            this.secretKey = secretKey;
            return this;
        }

        public Builder syncLoadFromThumbCache(boolean isSyncLoadFromThumbCache) {
            this.isSyncLoadFromThumbCache = isSyncLoadFromThumbCache;
            loadThumbnail(true);
            return this;
        }

        public Builder syncLoading(boolean isSyncLoading) {
            this.isSyncLoading = isSyncLoading;
            return this;
        }

        public Builder reusedBitmapCache(ReusedBitmapCache cache) {
            this.reusedBitmapCache = cache;
            return this;
        }

        public Builder loadThumbnail(boolean loadThumbnail) {
            this.isLoadThumbnail = loadThumbnail;
            return this;
        }

        public Builder loadOriginScaleThumbnail(boolean loadOriginScaleThumbnail) {
            this.isLoadOriginScaleThumbnail = loadOriginScaleThumbnail;
            return this;
        }

        public Builder loadFromMicroCache(boolean isLoadFromMicroCache) {
            this.isLoadFromMicroCache = isLoadFromMicroCache;
            loadThumbnail(true);
            return this;
        }

        public Builder loadFromBigPhotoCache(boolean isLoadFromBigPhotoCache) {
            this.isLoadFromBigPhotoCache = isLoadFromBigPhotoCache;
            return this;
        }

        public Builder loadFromMemoryOnly(boolean isLoadFromMemoryOnly) {
            this.isLoadFromMemoryOnly = isLoadFromMemoryOnly;
            return this;
        }

        public Builder preferSyncLoadFromMicroCache(boolean isPreferSyncLoadFromMicroCache) {
            this.isPreferSyncLoadFromMicroCache = isPreferSyncLoadFromMicroCache;
            return this;
        }

        public Builder handler(Handler handler) {
            this.handler = handler;
            return this;
        }

        public Builder highPriority(boolean isHighPriority) {
            this.isHighPriority = isHighPriority;
            return this;
        }

        public Builder considerFileLength(boolean considerFileLength) {
            this.considerFileLength = considerFileLength;
            return this;
        }

        public Builder fileLength(long fileLength) {
            this.considerFileLength = true;
            this.fileLength = fileLength;
            return this;
        }

        public Builder blurRadius(int blurRadius) {
            this.blurRadius = blurRadius;
            return this;
        }

        public Builder cacheInSubMemory(boolean cacheInSubMemory) {
            this.cacheInSubMemory = cacheInSubMemory;
            return this;
        }

        public Builder cloneFrom(DisplayImageOptions options) {
            this.imageResOnLoading = options.imageResOnLoading;
            this.imageResForEmptyUri = options.imageResForEmptyUri;
            this.imageResOnFail = options.imageResOnFail;
            this.imageOnLoading = options.imageOnLoading;
            this.imageForEmptyUri = options.imageForEmptyUri;
            this.imageOnFail = options.imageOnFail;
            this.resetViewBeforeLoading = options.resetViewBeforeLoading;
            this.cacheInMemory = options.cacheInMemory;
            this.cacheOnDisk = options.cacheOnDisk;
            this.imageScaleType = options.imageScaleType;
            this.decodingOptions = options.decodingOptions;
            this.delayBeforeLoading = options.delayBeforeLoading;
            this.considerExifParams = options.considerExifParams;
            this.extraForDownloader = options.extraForDownloader;
            this.preProcessor = options.preProcessor;
            this.postProcessor = options.postProcessor;
            this.displayer = options.displayer;
            this.handler = options.handler;
            this.isSyncLoading = options.isSyncLoading;
            this.cacheThumbnail = options.cacheThumbnail;
            this.delayCacheThumbnail = options.delayCacheThumbnail;
            this.usingRegionDecoderFace = options.usingRegionDecoderFace;
            this.isSecretImage = options.isSecretImage;
            this.secretKey = options.secretKey;
            this.isSyncLoadFromThumbCache = options.isSyncLoadFromThumbCache;
            this.reusedBitmapCache = options.reusedBitmapCache;
            this.isLoadThumbnail = options.isLoadThumbnail;
            this.isLoadOriginScaleThumbnail = options.isLoadOriginScaleThumbnail;
            this.isLoadFromMicroCache = options.isLoadFromMicroCache;
            this.isCacheBigPhoto = options.isCacheBigPhoto;
            this.isLoadFromBigPhotoCache = options.isLoadFromBigPhotoCache;
            this.isLoadFromMemoryOnly = options.isLoadFromMemoryOnly;
            this.isPreferSyncLoadFromMicroCache = options.isPreferSyncLoadFromMicroCache;
            this.considerFileLength = options.considerFileLength;
            this.fileLength = options.fileLength;
            this.blurRadius = options.blurRadius;
            this.cacheInSubMemory = options.cacheInSubMemory;
            return this;
        }

        public DisplayImageOptions build() {
            return new DisplayImageOptions(this);
        }
    }

    private DisplayImageOptions(Builder builder) {
        this.imageResOnLoading = builder.imageResOnLoading;
        this.imageResForEmptyUri = builder.imageResForEmptyUri;
        this.imageResOnFail = builder.imageResOnFail;
        this.imageOnLoading = builder.imageOnLoading;
        this.imageForEmptyUri = builder.imageForEmptyUri;
        this.imageOnFail = builder.imageOnFail;
        this.resetViewBeforeLoading = builder.resetViewBeforeLoading;
        this.cacheInMemory = builder.cacheInMemory;
        this.cacheOnDisk = builder.cacheOnDisk;
        this.imageScaleType = builder.imageScaleType;
        this.decodingOptions = builder.decodingOptions;
        this.delayBeforeLoading = builder.delayBeforeLoading;
        this.considerExifParams = builder.considerExifParams;
        this.extraForDownloader = builder.extraForDownloader;
        this.preProcessor = builder.preProcessor;
        this.postProcessor = builder.postProcessor;
        this.displayer = builder.displayer;
        this.handler = builder.handler;
        this.isSyncLoading = builder.isSyncLoading;
        this.cacheThumbnail = builder.cacheThumbnail;
        this.delayCacheThumbnail = builder.delayCacheThumbnail;
        this.usingRegionDecoderFace = builder.usingRegionDecoderFace;
        this.isSecretImage = builder.isSecretImage;
        this.secretKey = builder.secretKey;
        this.isSyncLoadFromThumbCache = builder.isSyncLoadFromThumbCache;
        this.reusedBitmapCache = builder.reusedBitmapCache;
        this.isLoadThumbnail = builder.isLoadThumbnail;
        this.isLoadOriginScaleThumbnail = builder.isLoadOriginScaleThumbnail;
        this.isLoadFromMicroCache = builder.isLoadFromMicroCache;
        this.isCacheBigPhoto = builder.isCacheBigPhoto;
        this.isLoadFromBigPhotoCache = builder.isLoadFromBigPhotoCache;
        this.isLoadFromMemoryOnly = builder.isLoadFromMemoryOnly;
        this.isPreferSyncLoadFromMicroCache = builder.isPreferSyncLoadFromMicroCache;
        this.isHighPriority = builder.isHighPriority;
        this.considerFileLength = builder.considerFileLength;
        this.fileLength = builder.fileLength;
        this.blurRadius = builder.blurRadius;
        this.cacheInSubMemory = builder.cacheInSubMemory;
    }

    public boolean shouldShowImageOnLoading() {
        return (this.imageOnLoading == null && this.imageResOnLoading == 0) ? false : true;
    }

    public boolean shouldShowImageForEmptyUri() {
        return (this.imageForEmptyUri == null && this.imageResForEmptyUri == 0) ? false : true;
    }

    public boolean shouldShowImageOnFail() {
        return (this.imageOnFail == null && this.imageResOnFail == 0) ? false : true;
    }

    public boolean shouldPreProcess() {
        return this.preProcessor != null;
    }

    public boolean shouldPostProcess() {
        return this.postProcessor != null;
    }

    public boolean shouldDelayBeforeLoading() {
        return this.delayBeforeLoading > 0;
    }

    public Drawable getImageOnLoading(Resources res) {
        return this.imageResOnLoading != 0 ? res.getDrawable(this.imageResOnLoading) : this.imageOnLoading;
    }

    public Drawable getImageForEmptyUri(Resources res) {
        return this.imageResForEmptyUri != 0 ? res.getDrawable(this.imageResForEmptyUri) : this.imageForEmptyUri;
    }

    public Drawable getImageOnFail(Resources res) {
        return this.imageResOnFail != 0 ? res.getDrawable(this.imageResOnFail) : this.imageOnFail;
    }

    public boolean isResetViewBeforeLoading() {
        return this.resetViewBeforeLoading;
    }

    public boolean isCacheInMemory() {
        return this.cacheInMemory;
    }

    public boolean isCacheInSubMemory() {
        return this.cacheInSubMemory;
    }

    public boolean isCacheOnDisk() {
        return this.cacheOnDisk;
    }

    public boolean isCacheThumbnail() {
        return this.cacheThumbnail;
    }

    public boolean isDelayCacheThumbnail() {
        return this.delayCacheThumbnail;
    }

    public boolean isCacheBigPhoto() {
        return this.isCacheBigPhoto;
    }

    public boolean isLoadFromBigPhotoCache() {
        return this.isLoadFromBigPhotoCache;
    }

    public ImageScaleType getImageScaleType() {
        return this.imageScaleType;
    }

    public Options getDecodingOptions() {
        return this.decodingOptions;
    }

    public int getDelayBeforeLoading() {
        return this.delayBeforeLoading;
    }

    public boolean isConsiderExifParams() {
        return this.considerExifParams;
    }

    public Object getExtraForDownloader() {
        return this.extraForDownloader;
    }

    public BitmapProcessor getPreProcessor() {
        return this.preProcessor;
    }

    public BitmapProcessor getPostProcessor() {
        return this.postProcessor;
    }

    public BitmapDisplayer getDisplayer() {
        return this.displayer;
    }

    public Handler getHandler() {
        return this.handler;
    }

    public boolean usingRegionDecoderFace() {
        return this.usingRegionDecoderFace;
    }

    public boolean isSecretImage() {
        return this.isSecretImage;
    }

    public byte[] getSecretKey() {
        return this.secretKey;
    }

    public boolean isSyncLoadFromThumbCache() {
        return this.isSyncLoadFromThumbCache;
    }

    public ReusedBitmapCache getReusedBitmapCache() {
        return this.reusedBitmapCache;
    }

    public boolean isLoadThumbnail() {
        return this.isLoadThumbnail;
    }

    public boolean isLoadOriginScaleThumbnail() {
        return this.isLoadOriginScaleThumbnail;
    }

    public boolean isLoadFromMemoryOnly() {
        return this.isLoadFromMemoryOnly;
    }

    public boolean isLoadFromMicroCache() {
        return this.isLoadFromMicroCache;
    }

    public boolean isPreferSyncLoadFromMicroCache() {
        return this.isPreferSyncLoadFromMicroCache;
    }

    boolean isSyncLoading() {
        return this.isSyncLoading;
    }

    public boolean isHighPriority() {
        return this.isHighPriority;
    }

    public boolean isConsiderFileLength() {
        return this.considerFileLength;
    }

    public long getFileLength() {
        return this.fileLength;
    }

    public int getBlurRadius() {
        return this.blurRadius;
    }

    public static DisplayImageOptions createSimple() {
        return new Builder().build();
    }
}
