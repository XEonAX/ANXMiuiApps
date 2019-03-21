package cn.kuaipan.android.utils;

import java.util.HashMap;

public class ObtainabelHashMap<K, V> extends HashMap<K, V> implements IObtainable {
    private static ObtainabelHashMap<?, ?> mPool = null;
    private static int mPoolSize = 0;
    private static Object mPoolSync = new Object();
    private static final long serialVersionUID = 5201260832948788096L;
    private ObtainabelHashMap<?, ?> next;

    public static <K, V> ObtainabelHashMap<K, V> obtain() {
        synchronized (mPoolSync) {
            if (mPool != null) {
                ObtainabelHashMap m = mPool;
                mPool = m.next;
                m.next = null;
                mPoolSize--;
                m.clear();
                return m;
            }
            return new ObtainabelHashMap();
        }
    }

    public void recycle() {
        synchronized (mPoolSync) {
            if (mPoolSize < 500) {
                mPoolSize++;
                this.next = mPool;
                mPool = this;
            }
            for (V value : values()) {
                if (value instanceof IObtainable) {
                    ((IObtainable) value).recycle();
                }
            }
            clear();
        }
    }

    private ObtainabelHashMap() {
    }
}
