package com.miui.gallery.search.core.source.local;

import android.database.ContentObserver;
import android.os.Handler;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.ThreadManager;
import java.lang.ref.WeakReference;

public class ContentCache<T> {
    private final int mCacheHoldTime;
    private Runnable mCacheRecycleRunnable;
    private WeakReference<T> mCacheRef;
    private ContentObserver mContentObserver;
    private final ContentCacheProvider<T> mContentProvider;
    private final Object mLock;

    private class MyContentObserver extends ContentObserver {
        public MyContentObserver(Handler handler) {
            super(handler);
        }

        public void onChange(boolean selfChange) {
            if (ContentCache.this.mContentObserver != null) {
                T cache = ContentCache.this.mContentProvider.loadContent();
                if (cache != null && ContentCache.this.mContentObserver != null) {
                    if (ContentCache.this.mCacheRef != null) {
                        ContentCache.this.mCacheRef.clear();
                    }
                    ContentCache.this.mCacheRef = new WeakReference(cache);
                }
            }
        }
    }

    public ContentCache(ContentCacheProvider<T> contentProvider) {
        this(contentProvider, 300000);
    }

    public ContentCache(ContentCacheProvider<T> contentProvider, int cacheHoldTime) {
        this.mLock = new Object();
        this.mCacheRef = null;
        this.mContentObserver = null;
        this.mCacheRecycleRunnable = new Runnable() {
            public void run() {
                ContentCache.this.releaseCache();
            }
        };
        if (contentProvider == null) {
            throw new IllegalArgumentException("Cannot accept null content cache provider");
        }
        this.mContentProvider = contentProvider;
        this.mCacheHoldTime = cacheHoldTime;
    }

    public T getCache() {
        T cache;
        if (this.mCacheRef == null) {
            cache = null;
        } else {
            cache = this.mCacheRef.get();
        }
        if (cache == null) {
            try {
                cache = this.mContentProvider.loadContent();
                if (cache != null) {
                    this.mCacheRef = new WeakReference(cache);
                    synchronized (this.mLock) {
                        if (this.mContentObserver == null) {
                            this.mContentObserver = new MyContentObserver(ThreadManager.getWorkHandler());
                            this.mContentProvider.registerContentObserver(this.mContentProvider.getContentUri(), true, this.mContentObserver);
                        }
                    }
                }
            } catch (Throwable e) {
                try {
                    SearchLog.e("ContentCache", e);
                } finally {
                    hangOn();
                }
            }
        }
        hangOn();
        return cache;
    }

    public void releaseCache() {
        Handler workHandler = ThreadManager.getWorkHandler();
        synchronized (this.mLock) {
            if (this.mContentObserver != null) {
                this.mContentProvider.unregisterContentObserver(this.mContentObserver);
                this.mContentObserver = null;
            }
        }
        if (this.mCacheRef != null) {
            this.mCacheRef.clear();
            this.mCacheRef = null;
        }
        workHandler.removeCallbacks(this.mCacheRecycleRunnable);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        releaseCache();
    }

    private void hangOn() {
        Handler handler = ThreadManager.getWorkHandler();
        handler.removeCallbacks(this.mCacheRecycleRunnable);
        handler.postDelayed(this.mCacheRecycleRunnable, (long) this.mCacheHoldTime);
    }
}
