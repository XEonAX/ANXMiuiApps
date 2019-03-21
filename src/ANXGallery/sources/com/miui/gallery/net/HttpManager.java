package com.miui.gallery.net;

import com.android.volley.ExecutorDelivery;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.StorageUtils;

public class HttpManager {
    private static HttpManager instance;
    private GalleryCache mRequestCache;
    private RequestQueue mRequestQueue = initRequestQueue();

    private HttpManager() {
    }

    public static synchronized HttpManager getInstance() {
        HttpManager httpManager;
        synchronized (HttpManager.class) {
            if (instance == null) {
                instance = new HttpManager();
            }
            httpManager = instance;
        }
        return httpManager;
    }

    private RequestQueue initRequestQueue() {
        this.mRequestCache = new GalleryCache(StorageUtils.getNetworkCacheDirectory(), 5242880);
        RequestQueue queue = new RequestQueue(this.mRequestCache, new GalleryNetwork(), 2, new ExecutorDelivery(ThreadManager.getRequestThreadHandler()));
        queue.start();
        return queue;
    }

    public void putToCache(String key, byte[] data, long expires, long softTtl) {
        this.mRequestCache.put(key, data, expires, softTtl);
    }

    public <T> void addToRequestQueue(Request<T> req) {
        this.mRequestQueue.add(req);
    }

    public void cancelAll(String tag) {
        this.mRequestQueue.cancelAll((Object) tag);
    }
}
