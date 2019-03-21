package com.nostra13.universalimageloader.cache.disc.impl.ext;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.Editor;
import com.nostra13.universalimageloader.cache.disc.impl.ext.DiskLruCache.Snapshot;
import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class LruDiskCache implements DiskCache {
    public static final CompressFormat DEFAULT_COMPRESS_FORMAT = CompressFormat.PNG;
    protected int bufferSize = 32768;
    protected DiskLruCache cache;
    protected CompressFormat compressFormat = DEFAULT_COMPRESS_FORMAT;
    protected int compressQuality = 100;
    protected final FileNameGenerator fileNameGenerator;
    private File mCacheDir;
    private int mCacheMaxFileCount;
    private long mCacheMaxSize;
    private File reserveCacheDir;

    public LruDiskCache(File cacheDir, File reserveCacheDir, FileNameGenerator fileNameGenerator, long cacheMaxSize, int cacheMaxFileCount) throws IOException {
        if (cacheDir == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        } else if (cacheMaxSize < 0) {
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        } else if (cacheMaxFileCount < 0) {
            throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
        } else if (fileNameGenerator == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        } else {
            if (cacheMaxSize == 0) {
                cacheMaxSize = Long.MAX_VALUE;
            }
            if (cacheMaxFileCount == 0) {
                cacheMaxFileCount = Integer.MAX_VALUE;
            }
            this.reserveCacheDir = reserveCacheDir;
            this.fileNameGenerator = fileNameGenerator;
            this.mCacheDir = cacheDir;
            this.mCacheMaxSize = cacheMaxSize;
            this.mCacheMaxFileCount = cacheMaxFileCount;
        }
    }

    private void ensureInitialized() throws IOException {
        if (this.cache == null) {
            synchronized (this) {
                if (this.cache == null) {
                    initCache(this.mCacheDir, this.reserveCacheDir, this.mCacheMaxSize, this.mCacheMaxFileCount);
                }
            }
        }
    }

    private void initCache(File cacheDir, File reserveCacheDir, long cacheMaxSize, int cacheMaxFileCount) throws IOException {
        try {
            this.cache = DiskLruCache.open(cacheDir, 1, 1, cacheMaxSize, cacheMaxFileCount);
        } catch (IOException e) {
            L.e(e);
            if (reserveCacheDir != null) {
                initCache(reserveCacheDir, null, cacheMaxSize, cacheMaxFileCount);
            }
            if (this.cache == null) {
                throw e;
            }
        }
    }

    public File get(String imageUri) {
        File file = null;
        Snapshot snapshot = null;
        try {
            ensureInitialized();
            snapshot = this.cache.get(getKey(imageUri));
            if (snapshot != null) {
                file = snapshot.getFile(0);
            }
            if (snapshot != null) {
                snapshot.close();
            }
        } catch (IOException e) {
            L.e(e);
            if (snapshot != null) {
                snapshot.close();
            }
        } catch (Throwable th) {
            if (snapshot != null) {
                snapshot.close();
            }
        }
        return file;
    }

    public Bitmap getBitmap(String imageUri) {
        return null;
    }

    public boolean save(String imageUri, InputStream imageStream, CopyListener listener) throws IOException {
        boolean copied = false;
        ensureInitialized();
        Editor editor = this.cache.edit(getKey(imageUri));
        if (editor != null) {
            OutputStream os = new BufferedOutputStream(editor.newOutputStream(0), this.bufferSize);
            copied = false;
            try {
                copied = IoUtils.copyStream(imageStream, os, listener, this.bufferSize);
            } finally {
                IoUtils.closeSilently(os);
                if (copied) {
                    editor.commit();
                } else {
                    editor.abort();
                }
            }
        }
        return copied;
    }

    public boolean save(String imageUri, Bitmap bitmap) throws IOException {
        boolean savedSuccessfully = false;
        ensureInitialized();
        Editor editor = this.cache.edit(getKey(imageUri));
        if (editor != null) {
            OutputStream os = new BufferedOutputStream(editor.newOutputStream(0), this.bufferSize);
            savedSuccessfully = false;
            try {
                savedSuccessfully = bitmap.compress(this.compressFormat, this.compressQuality, os);
                if (savedSuccessfully) {
                    editor.commit();
                } else {
                    editor.abort();
                }
            } finally {
                IoUtils.closeSilently(os);
            }
        }
        return savedSuccessfully;
    }

    public String getKey(String imageUri) {
        return this.fileNameGenerator.generate(imageUri);
    }
}
