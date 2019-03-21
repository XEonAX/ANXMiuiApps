package com.miui.gallery.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class GalleryDataCache {
    private Map<String, Object> mCacheMap;

    private static class SingletonHolder {
        static final GalleryDataCache INSTANCE = new GalleryDataCache();
    }

    private GalleryDataCache() {
        this.mCacheMap = Collections.synchronizedMap(new HashMap());
    }

    public static GalleryDataCache getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void put(String key, Object value) {
        this.mCacheMap.put(key, value);
    }

    public <V> V remove(String key) {
        Object value = this.mCacheMap.remove(key);
        return value != null ? value : null;
    }
}
