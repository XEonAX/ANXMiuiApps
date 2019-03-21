package com.miui.gallery.util.uil;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class ThumbnailDiskCache implements DiskCache {
    private BlobCache mBlobCache;
    private Object mBlobLock = new Object();
    private final File mCacheDir;
    private final int mCacheMaxSize;
    private final int mMaxEntries;

    public ThumbnailDiskCache(File cacheDir, int maxEntries, int cacheMaxSize) {
        this.mCacheDir = cacheDir;
        this.mMaxEntries = maxEntries;
        this.mCacheMaxSize = cacheMaxSize / 4;
        MicroThumbCache.init(cacheDir, maxEntries, cacheMaxSize - this.mCacheMaxSize);
    }

    private synchronized void ensureInitialized() throws IOException {
        if (this.mBlobCache == null) {
            long start = System.currentTimeMillis();
            if (!(this.mCacheDir == null || this.mCacheDir.exists())) {
                FileUtils.createFolder(this.mCacheDir, true);
            }
            try {
                this.mBlobCache = new BlobCache(this.mCacheDir + "/" + "thumbnail_blob", this.mMaxEntries, this.mCacheMaxSize, false, 7);
                Log.d("ThumbnailDiskCache", "init cost %s", Long.valueOf(System.currentTimeMillis() - start));
            } catch (IOException e) {
                Log.w("ThumbnailDiskCache", "cache creation failed, use dummy", e);
                throw e;
            }
        }
    }

    public boolean save(String imageUri, InputStream imageStream, CopyListener listener) throws IOException {
        throw new RuntimeException("save: Stub!");
    }

    public boolean save(String imageUri, Bitmap bitmap) throws IOException {
        ensureInitialized();
        String thumbnailKey = MemoryCacheUtils.generateThumbnailKey(imageUri);
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try {
            bitmap.compress(CompressFormat.JPEG, 90, bos);
            byte[] data = bos.toByteArray();
            if (data != null) {
                synchronized (this.mBlobLock) {
                    Log.d("ThumbnailDiskCache", "Save data size %d", Integer.valueOf(data.length));
                    this.mBlobCache.insert(BaseMiscUtil.crc64Long(thumbnailKey.getBytes()), data);
                }
            }
            bos.close();
            return MicroThumbCache.getInstance().save(imageUri, bitmap);
        } catch (Throwable th) {
            bos.close();
        }
    }

    public File get(String imageUri) {
        throw new RuntimeException("get File: Stub!");
    }

    public Bitmap getBitmap(String imageUri) {
        String thumbnailKey = MemoryCacheUtils.generateThumbnailKey(imageUri);
        long start = SystemClock.elapsedRealtimeNanos();
        byte[] data = null;
        Bitmap bitmap = null;
        synchronized (this.mBlobLock) {
            try {
                ensureInitialized();
                data = this.mBlobCache.lookup(BaseMiscUtil.crc64Long(thumbnailKey.getBytes()));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (data != null) {
            bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
        }
        long cost = SystemClock.elapsedRealtimeNanos() - start;
        if (bitmap != null) {
            LoadMonitor.record(1, cost);
        }
        return bitmap;
    }
}
