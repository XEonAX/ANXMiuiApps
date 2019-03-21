package com.miui.gallery.share;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.common.collect.Maps;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class DBCache<K, V> {
    private final Map<K, V> mCache = Maps.newHashMap();
    private final ContentObserver mContentObserver = new ContentObserver(this.mHandler) {
        public void onChange(boolean selfChange) {
            DBCache.this.mDirty = true;
            DBCache.this.reloadIfNeeded(false);
        }
    };
    private boolean mDirty = true;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final List<OnDBCacheChangedListener<K, V>> mListeners = new CopyOnWriteArrayList();
    private final Runnable mReloadRunnable = new Runnable() {
        public void run() {
            AlbumShareUIManager.submit(new Job<AsyncResult<Map<K, V>>>() {
                public AsyncResult<Map<K, V>> run(JobContext jc) {
                    long start = SystemClock.uptimeMillis();
                    return AsyncResult.create(0, DBCache.this.loadInBackground());
                }
            }, new OnCompletionListener<Void, Map<K, V>>() {
                public void onCompletion(Void key, Map<K, V> data, int error, boolean cancel) {
                    if (error == 0 && data != null) {
                        DBCache.this.onReloadSuccess(data);
                        DBCache.this.reloadIfNeeded(false);
                    }
                }
            });
        }
    };

    public interface OnDBCacheChangedListener<K, V> {
        void onDBCacheChanged(DBCache<K, V> dBCache);
    }

    public abstract Uri getUri();

    protected abstract K newKey(Cursor cursor);

    protected abstract V newValue(Cursor cursor);

    public Map<K, V> getCache() {
        return Collections.unmodifiableMap(this.mCache);
    }

    public V getValue(K key) {
        return this.mCache.get(key);
    }

    public void addListener(OnDBCacheChangedListener<K, V> l) {
        if (l != null) {
            this.mListeners.add(l);
            if (this.mListeners.size() == 1) {
                Context context = GalleryApp.sGetAndroidContext();
                this.mDirty = true;
                context.getContentResolver().registerContentObserver(getUri(), true, this.mContentObserver);
                reloadIfNeeded(true);
            }
        }
    }

    public void removeListener(OnDBCacheChangedListener<K, V> l) {
        if (l != null) {
            this.mListeners.remove(l);
            if (this.mListeners.isEmpty()) {
                GalleryApp.sGetAndroidContext().getContentResolver().unregisterContentObserver(this.mContentObserver);
            }
        }
    }

    protected Cursor queryInBackground() {
        return GalleryApp.sGetAndroidContext().getContentResolver().query(getUri(), CloudUtils.getProjectionAll(), null, null, null);
    }

    protected Map<K, V> loadInBackground() {
        Map<K, V> map = Maps.newHashMap();
        Cursor cursor = queryInBackground();
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    K key = newKey(cursor);
                    if (key != null) {
                        map.put(key, newValue(cursor));
                    }
                } finally {
                    cursor.close();
                }
            }
        }
        return map;
    }

    private boolean reloadIfNeeded(boolean immediately) {
        if (this.mListeners.isEmpty() || !this.mDirty) {
            return false;
        }
        this.mDirty = false;
        this.mHandler.removeCallbacks(this.mReloadRunnable);
        if (immediately) {
            this.mHandler.post(this.mReloadRunnable);
        } else {
            this.mHandler.postDelayed(this.mReloadRunnable, 1000);
        }
        return true;
    }

    private void onReloadSuccess(Map<K, V> result) {
        this.mCache.clear();
        this.mCache.putAll(result);
        notifyShareUserChanged();
    }

    private void notifyShareUserChanged() {
        for (OnDBCacheChangedListener<K, V> l : this.mListeners) {
            l.onDBCacheChanged(this);
        }
    }
}
