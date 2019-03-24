package miui.util.cache;

import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

public class SoftCache<K, T> implements Cache<K, T> {
    private ConcurrentHashMap<K, SoftReference<T>> Mf = new ConcurrentHashMap();

    public void setMaxSize(int i) {
    }

    public void put(K k, T t) {
        put(k, t, 0);
    }

    public void put(K k, T t, int i) {
        dO();
        this.Mf.put(k, new SoftReference(t));
    }

    public T get(K k) {
        dO();
        SoftReference softReference = (SoftReference) this.Mf.get(k);
        return softReference == null ? null : softReference.get();
    }

    public void clear() {
        for (Entry value : this.Mf.entrySet()) {
            ((SoftReference) value.getValue()).clear();
        }
        this.Mf.clear();
    }

    public int getCount() {
        dO();
        return this.Mf.size();
    }

    private void dO() {
        Iterator it = this.Mf.entrySet().iterator();
        while (it.hasNext()) {
            if (((SoftReference) ((Entry) it.next()).getValue()).get() == null) {
                it.remove();
            }
        }
    }
}
