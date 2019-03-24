package miui.util.cache;

import android.app.ActivityManager;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.locks.ReentrantLock;
import miui.util.AppConstants;

public class LruCache<K, V> implements Cache<K, V> {
    private static final int Ma = ((((ActivityManager) AppConstants.getCurrentApplication().getSystemService("activity")).getMemoryClass() * 1024) * 1024);
    private long AA;
    private long De;
    private final ReentrantLock Mb;
    private final LinkedHashMap<K, CacheItem<K, V>> Mc;

    private static class CacheItem<K, T> {
        public T Md;
        public SoftReference<T> Me;
        public K key;
        public int size;

        private CacheItem() {
        }
    }

    public LruCache(int i) {
        if (i < 0) {
            i = Ma / 8;
        }
        this.Mb = new ReentrantLock();
        this.AA = (long) i;
        this.De = 0;
        this.Mc = new LinkedHashMap(0, 0.75f, true);
    }

    public void setMaxSize(int i) {
        if (i < 0) {
            i = Ma / 8;
        }
        this.AA = (long) i;
        try {
            this.Mb.lock();
            if (this.De < this.AA) {
                dO();
            }
            this.Mb.unlock();
        } catch (Throwable th) {
            this.Mb.unlock();
        }
    }

    public void put(K k, V v, int i) {
        if (k != null && v != null) {
            CacheItem cacheItem = new CacheItem();
            cacheItem.key = k;
            cacheItem.Md = v;
            if (i < 0) {
                i = 0;
            }
            cacheItem.size = i;
            this.Mb.lock();
            try {
                this.Mc.put(k, cacheItem);
                this.De += (long) cacheItem.size;
                dO();
            } finally {
                this.Mb.unlock();
            }
        }
    }

    public V get(K k) {
        this.Mb.lock();
        try {
            dO();
            CacheItem cacheItem = (CacheItem) this.Mc.get(k);
            V v = null;
            if (cacheItem == null) {
                return v;
            }
            V v2;
            if (cacheItem.Md != null) {
                v2 = cacheItem.Md;
                this.Mb.unlock();
                return v2;
            }
            if (cacheItem.Me != null) {
                cacheItem.Md = cacheItem.Me.get();
                if (cacheItem.Md != null) {
                    this.De += (long) cacheItem.size;
                    if (this.De > this.AA) {
                        dO();
                    }
                    v2 = cacheItem.Md;
                    this.Mb.unlock();
                    return v2;
                }
            }
            this.Mc.remove(k);
            this.Mb.unlock();
            return v;
        } finally {
            this.Mb.unlock();
        }
    }

    public void clear() {
        this.Mb.lock();
        try {
            for (Entry value : this.Mc.entrySet()) {
                CacheItem cacheItem = (CacheItem) value.getValue();
                if (cacheItem.Me != null) {
                    cacheItem.Me.clear();
                }
            }
            this.Mc.clear();
        } finally {
            this.Mb.unlock();
        }
    }

    public int getCount() {
        this.Mb.lock();
        try {
            dO();
            int size = this.Mc.size();
            return size;
        } finally {
            this.Mb.unlock();
        }
    }

    private void dO() {
        CacheItem cacheItem;
        Iterator it = this.Mc.entrySet().iterator();
        while (it.hasNext()) {
            cacheItem = (CacheItem) ((Entry) it.next()).getValue();
            if (cacheItem.Md == null && (cacheItem.Me == null || cacheItem.Me.get() == null)) {
                it.remove();
            }
        }
        it = this.Mc.entrySet().iterator();
        while (this.De > this.AA && it.hasNext()) {
            cacheItem = (CacheItem) ((Entry) it.next()).getValue();
            if (cacheItem != null) {
                if (cacheItem.Me == null) {
                    cacheItem.Me = new SoftReference(cacheItem.Md);
                }
                this.De -= (long) cacheItem.size;
                cacheItem.Md = null;
            }
        }
    }
}
