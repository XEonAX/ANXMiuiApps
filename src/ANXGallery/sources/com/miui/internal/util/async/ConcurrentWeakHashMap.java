package com.miui.internal.util.async;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentWeakHashMap<K, V> {
    private final ReferenceQueue<Object> jR = new ReferenceQueue();
    private final ConcurrentHashMap<WeakKey<K>, V> jS = new ConcurrentHashMap();

    private static class WeakKey<T> extends WeakReference<Object> {
        private int jT;

        public WeakKey(Object obj) {
            super(obj);
            b(obj);
        }

        public WeakKey(Object obj, ReferenceQueue<? super Object> referenceQueue) {
            super(obj, referenceQueue);
            b(obj);
        }

        private void b(Object obj) {
            this.jT = obj != null ? obj.hashCode() : 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WeakKey)) {
                return false;
            }
            WeakKey weakKey = (WeakKey) obj;
            Object obj2 = get();
            obj = weakKey.get();
            if (obj2 == null || !obj2.equals(obj)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.jT;
        }
    }

    public V put(K k, V v) {
        if (k == null || v == null) {
            return null;
        }
        clean();
        return this.jS.put(new WeakKey(k, this.jR), v);
    }

    public V get(K k) {
        clean();
        return this.jS.get(new WeakKey(k));
    }

    private void clean() {
        while (true) {
            Reference poll = this.jR.poll();
            if (poll != null) {
                this.jS.remove((WeakKey) poll);
            } else {
                return;
            }
        }
    }
}
