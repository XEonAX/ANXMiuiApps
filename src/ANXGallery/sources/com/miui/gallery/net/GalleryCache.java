package com.miui.gallery.net;

import com.android.volley.Cache.Entry;
import com.android.volley.toolbox.DiskBasedCache;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.HashMap;

class GalleryCache extends DiskBasedCache {
    public GalleryCache(File rootDirectory, int maxCacheSizeInBytes) {
        super(rootDirectory, maxCacheSizeInBytes);
        Log.d("GalleryCache", "Network cache path: %s", rootDirectory.getAbsolutePath());
    }

    @Deprecated
    public synchronized void put(String key, Entry entry) {
    }

    public synchronized void put(String key, byte[] data, long expires, long softTtl) {
        int i = 0;
        synchronized (this) {
            Entry entry = new Entry();
            entry.data = data;
            entry.ttl = System.currentTimeMillis() + expires;
            entry.softTtl = softTtl;
            super.put(key, entry);
            String str = "GalleryCache";
            String str2 = "put cache. key %s size %s expires %s softTtl:%s";
            Object[] objArr = new Object[4];
            objArr[0] = Integer.valueOf(key.hashCode());
            if (data != null) {
                i = data.length;
            }
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Long.valueOf(expires);
            objArr[3] = Long.valueOf(softTtl);
            Log.d(str, String.format(str2, objArr));
        }
    }

    public synchronized Entry get(String key) {
        Entry entry;
        entry = super.get(key);
        if (entry != null) {
            HashMap<String, String> headers = new HashMap();
            headers.put("From-Cache", String.valueOf(true));
            entry.responseHeaders = headers;
            Log.d("GalleryCache", "get cache: key %s, isExpired: %s", Integer.valueOf(key.hashCode()), Boolean.valueOf(entry.isExpired()));
            if (!entry.isExpired()) {
                Log.d("GalleryCache", "cache hit.");
            }
        }
        return entry;
    }
}
