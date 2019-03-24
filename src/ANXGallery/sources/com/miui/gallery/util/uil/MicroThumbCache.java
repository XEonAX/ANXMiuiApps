package com.miui.gallery.util.uil;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.os.SystemClock;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ReusedBitmapCache;
import com.miui.gallery.util.uil.BlobCache.LookupRequest;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0013SoftReferencePool;

public class MicroThumbCache {
    private static final int MICRO_THUMBNAIL_SIZE = ThumbConfig.get().sMicroTargetSize.getWidth();
    private static final int THUMB_CONFIG_ORDINAL = ThumbConfig.getThumbConfig().ordinal();
    private static MicroThumbCache sCache;
    private C0013SoftReferencePool<Bitmap> mBitmapPool;
    private BlobCache mBlobCache;
    private Object mBlobLock = new Object();
    private final File mCacheDir;
    private final int mCacheMaxSize;
    private C0013SoftReferencePool<LookupRequest> mLookupRequestPool;
    private final int mMaxEntries;

    public static MicroThumbCache getInstance() {
        return sCache;
    }

    private MicroThumbCache(File cacheDir, int maxEntries, int cacheMaxSize) {
        Log.d("MicroThumbCache", "MicroThumbCache cache size %d", Integer.valueOf(cacheMaxSize));
        this.mCacheDir = cacheDir;
        this.mMaxEntries = maxEntries;
        this.mCacheMaxSize = cacheMaxSize;
    }

    public static void init(File cacheDir, int maxEntries, int cacheMaxSize) {
        sCache = new MicroThumbCache(cacheDir, maxEntries, cacheMaxSize);
    }

    private synchronized void ensureInitialized() throws IOException {
        if (this.mBlobCache == null) {
            long start = System.currentTimeMillis();
            if (!(this.mCacheDir == null || this.mCacheDir.exists())) {
                FileUtils.createFolder(this.mCacheDir, true);
            }
            try {
                this.mBlobCache = new BlobCache(this.mCacheDir + "/" + "micro_thumbnail_blob", this.mMaxEntries, this.mCacheMaxSize, false, 7);
                this.mLookupRequestPool = C0014Pools.createSoftReferencePool(new C0000Manager<LookupRequest>() {
                    public LookupRequest createInstance() {
                        return new LookupRequest();
                    }
                }, 32);
                this.mBitmapPool = C0014Pools.createSoftReferencePool(new C0000Manager<Bitmap>() {
                    public Bitmap createInstance() {
                        return Bitmap.createBitmap(MicroThumbCache.MICRO_THUMBNAIL_SIZE, MicroThumbCache.MICRO_THUMBNAIL_SIZE, ThumbConfig.getThumbConfig());
                    }
                }, 10);
                Log.d("MicroThumbCache", "init cost %s", Long.valueOf(System.currentTimeMillis() - start));
            } catch (IOException e) {
                Log.w("MicroThumbCache", "cache creation failed, use dummy", e);
                throw e;
            }
        }
    }

    public boolean save(String imageUri, Bitmap bitmap) throws IOException {
        ensureInitialized();
        if (bitmap == null || bitmap.isRecycled()) {
            return false;
        }
        Bitmap target;
        ByteBuffer buffer = null;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int minSize = Math.min(width, height);
        if (minSize <= 0 || minSize >= MICRO_THUMBNAIL_SIZE) {
            target = bitmap;
        } else {
            float scale = ((float) MICRO_THUMBNAIL_SIZE) / ((float) minSize);
            if ((((float) ((ReusedBitmapCache.getBytesPerPixel(ThumbConfig.getThumbConfig()) * width) * height)) * scale) * scale > 2097152.0f) {
                return false;
            }
            Matrix matrix = new Matrix();
            matrix.postScale(scale, scale);
            target = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        }
        if (isCorrectSize(target)) {
            width = target.getWidth();
            int x = (width - MICRO_THUMBNAIL_SIZE) / 2;
            int y = (target.getHeight() - MICRO_THUMBNAIL_SIZE) / 2;
            if (isCorrectConfig(target)) {
                target = Bitmap.createBitmap(target, x, y, MICRO_THUMBNAIL_SIZE, MICRO_THUMBNAIL_SIZE);
            } else {
                Log.d("MicroThumbCache", "is not correct config %s, %s", imageUri, target.getConfig());
                target = BitmapUtils.safeCreateBitmap(target, x, y, MICRO_THUMBNAIL_SIZE, MICRO_THUMBNAIL_SIZE, null, true, ThumbConfig.getThumbConfig());
            }
            if (isCorrectConfig(target)) {
                buffer = ByteBuffer.allocate(target.getByteCount());
                target.copyPixelsToBuffer(buffer);
            }
        }
        if (buffer != null) {
            synchronized (this.mBlobLock) {
                Log.d("MicroThumbCache", "save data size %d", Integer.valueOf(target.getByteCount()));
                this.mBlobCache.insert(BaseMiscUtil.crc64Long(imageUri.getBytes()), buffer.array());
            }
        }
        return true;
    }

    public Bitmap getCenterCropBitmap(String memoryKey, Bitmap reusedBitmap) {
        long start = SystemClock.elapsedRealtimeNanos();
        Bitmap bitmap = null;
        try {
            ensureInitialized();
            LookupRequest lookRequest = (LookupRequest) this.mLookupRequestPool.acquire();
            lookRequest.key = BaseMiscUtil.crc64Long(memoryKey.getBytes());
            lookRequest.length = 0;
            synchronized (this.mBlobLock) {
                try {
                    this.mBlobCache.lookup(lookRequest);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (lookRequest.length > 0) {
                ByteBuffer buffer = ByteBuffer.wrap(lookRequest.buffer, 0, lookRequest.length);
                if (isReusableBitmap(reusedBitmap)) {
                    bitmap = reusedBitmap;
                } else {
                    bitmap = (Bitmap) this.mBitmapPool.acquire();
                }
                bitmap.copyPixelsFromBuffer(buffer);
            }
            this.mLookupRequestPool.release(lookRequest);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        long cost = SystemClock.elapsedRealtimeNanos() - start;
        if (bitmap != null) {
            LoadMonitor.record(0, cost);
        }
        return bitmap;
    }

    private boolean isCorrectConfig(Bitmap bitmap) {
        return bitmap != null && bitmap.getConfig() == ThumbConfig.getThumbConfig();
    }

    private boolean isCorrectSize(Bitmap bitmap) {
        return bitmap != null && Math.min(bitmap.getWidth(), bitmap.getHeight()) >= MICRO_THUMBNAIL_SIZE;
    }

    private boolean isReusableBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        Config config = bitmap.getConfig();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == MICRO_THUMBNAIL_SIZE && width == height && THUMB_CONFIG_ORDINAL == config.ordinal()) {
            return true;
        }
        return false;
    }
}
