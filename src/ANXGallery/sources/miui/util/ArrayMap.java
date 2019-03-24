package miui.util;

import android.util.Log;
import com.miui.internal.vip.utils.JsonParser;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ArrayMap<K, V> implements Map<K, V> {
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int Hh = 4;
    static Object[] Hi = null;
    static int Hj = 0;
    static Object[] Hk = null;
    static int Hl = 0;
    private static final String TAG = "ArrayMap";
    int[] Hm;
    Object[] Hn;
    int Ho;
    MapCollections<K, V> Hp;

    int indexOf(Object obj, int i) {
        int i2 = this.Ho;
        if (i2 == 0) {
            return -1;
        }
        int a = a.a(this.Hm, i2, i);
        if (a < 0 || obj.equals(this.Hn[a << 1])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.Hm[i3] == i) {
            if (obj.equals(this.Hn[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        a--;
        while (a >= 0 && this.Hm[a] == i) {
            if (obj.equals(this.Hn[a << 1])) {
                return a;
            }
            a--;
        }
        return ~i3;
    }

    int dg() {
        int i = this.Ho;
        if (i == 0) {
            return -1;
        }
        int a = a.a(this.Hm, i, 0);
        if (a < 0 || this.Hn[a << 1] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.Hm[i2] == 0) {
            if (this.Hn[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        a--;
        while (a >= 0 && this.Hm[a] == 0) {
            if (this.Hn[a << 1] == null) {
                return a;
            }
            a--;
        }
        return ~i2;
    }

    private void S(int i) {
        Object[] objArr;
        if (i == 8) {
            synchronized (ArrayMap.class) {
                if (Hk != null) {
                    objArr = Hk;
                    this.Hn = objArr;
                    Hk = (Object[]) objArr[0];
                    this.Hm = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Hl--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ArrayMap.class) {
                if (Hi != null) {
                    objArr = Hi;
                    this.Hn = objArr;
                    Hi = (Object[]) objArr[0];
                    this.Hm = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Hj--;
                    return;
                }
            }
        }
        this.Hm = new int[i];
        this.Hn = new Object[(i << 1)];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        int i2;
        if (iArr.length == 8) {
            synchronized (ArrayMap.class) {
                if (Hl < 10) {
                    objArr[0] = Hk;
                    objArr[1] = iArr;
                    for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    Hk = objArr;
                    Hl++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArrayMap.class) {
                if (Hj < 10) {
                    objArr[0] = Hi;
                    objArr[1] = iArr;
                    for (i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    Hi = objArr;
                    Hj++;
                }
            }
        }
    }

    public ArrayMap() {
        this.Hm = a.Hx;
        this.Hn = a.Hz;
        this.Ho = 0;
    }

    public ArrayMap(int i) {
        if (i == 0) {
            this.Hm = a.Hx;
            this.Hn = a.Hz;
        } else {
            S(i);
        }
        this.Ho = 0;
    }

    public ArrayMap(ArrayMap arrayMap) {
        this();
        if (arrayMap != null) {
            putAll(arrayMap);
        }
    }

    public void clear() {
        if (this.Ho > 0) {
            a(this.Hm, this.Hn, this.Ho);
            this.Hm = a.Hx;
            this.Hn = a.Hz;
            this.Ho = 0;
        }
    }

    public void erase() {
        if (this.Ho > 0) {
            int i = this.Ho << 1;
            Object[] objArr = this.Hn;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            this.Ho = 0;
        }
    }

    public void ensureCapacity(int i) {
        if (this.Hm.length < i) {
            Object obj = this.Hm;
            Object obj2 = this.Hn;
            S(i);
            if (this.Ho > 0) {
                System.arraycopy(obj, 0, this.Hm, 0, this.Ho);
                System.arraycopy(obj2, 0, this.Hn, 0, this.Ho << 1);
            }
            a(obj, obj2, this.Ho);
        }
    }

    public boolean containsKey(Object obj) {
        if (obj == null) {
            if (dg() < 0) {
                return false;
            }
        } else if (indexOf(obj, obj.hashCode()) < 0) {
            return false;
        }
        return true;
    }

    int indexOfValue(Object obj) {
        int i = this.Ho * 2;
        Object[] objArr = this.Hn;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
        } else {
            for (int i3 = 1; i3 < i; i3 += 2) {
                if (obj.equals(objArr[i3])) {
                    return i3 >> 1;
                }
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public V get(Object obj) {
        int dg = obj == null ? dg() : indexOf(obj, obj.hashCode());
        return dg >= 0 ? this.Hn[(dg << 1) + 1] : null;
    }

    public K keyAt(int i) {
        return this.Hn[i << 1];
    }

    public V valueAt(int i) {
        return this.Hn[(i << 1) + 1];
    }

    public V setValueAt(int i, V v) {
        i = (i << 1) + 1;
        V v2 = this.Hn[i];
        this.Hn[i] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.Ho <= 0;
    }

    public V put(K k, V v) {
        int dg;
        int i;
        if (k == null) {
            dg = dg();
            i = 0;
        } else {
            dg = k.hashCode();
            i = dg;
            dg = indexOf(k, dg);
        }
        if (dg >= 0) {
            int i2 = (dg << 1) + 1;
            V v2 = this.Hn[i2];
            this.Hn[i2] = v;
            return v2;
        }
        int i3;
        dg = ~dg;
        if (this.Ho >= this.Hm.length) {
            i3 = 4;
            if (this.Ho >= 8) {
                i3 = (this.Ho >> 1) + this.Ho;
            } else if (this.Ho >= 4) {
                i3 = 8;
            }
            Object obj = this.Hm;
            Object obj2 = this.Hn;
            S(i3);
            if (this.Hm.length > 0) {
                System.arraycopy(obj, 0, this.Hm, 0, obj.length);
                System.arraycopy(obj2, 0, this.Hn, 0, obj2.length);
            }
            a(obj, obj2, this.Ho);
        }
        if (dg < this.Ho) {
            i3 = dg + 1;
            System.arraycopy(this.Hm, dg, this.Hm, i3, this.Ho - dg);
            System.arraycopy(this.Hn, dg << 1, this.Hn, i3 << 1, (this.Ho - dg) << 1);
        }
        this.Hm[dg] = i;
        dg <<= 1;
        this.Hn[dg] = k;
        this.Hn[dg + 1] = v;
        this.Ho++;
        return null;
    }

    public void append(K k, V v) {
        int i = this.Ho;
        int hashCode = k == null ? 0 : k.hashCode();
        if (i < this.Hm.length) {
            if (i > 0) {
                int i2 = i - 1;
                if (this.Hm[i2] > hashCode) {
                    Throwable runtimeException = new RuntimeException("here");
                    runtimeException.fillInStackTrace();
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("New hash ");
                    stringBuilder.append(hashCode);
                    stringBuilder.append(" is before end of array hash ");
                    stringBuilder.append(this.Hm[i2]);
                    stringBuilder.append(" at index ");
                    stringBuilder.append(i);
                    stringBuilder.append(" key ");
                    stringBuilder.append(k);
                    Log.w(str, stringBuilder.toString(), runtimeException);
                    put(k, v);
                    return;
                }
            }
            this.Ho = i + 1;
            this.Hm[i] = hashCode;
            i <<= 1;
            this.Hn[i] = k;
            this.Hn[i + 1] = v;
            return;
        }
        throw new IllegalStateException("Array is full");
    }

    public void putAll(ArrayMap<? extends K, ? extends V> arrayMap) {
        int i = arrayMap.Ho;
        ensureCapacity(this.Ho + i);
        int i2 = 0;
        if (this.Ho != 0) {
            while (i2 < i) {
                put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
                i2++;
            }
        } else if (i > 0) {
            System.arraycopy(arrayMap.Hm, 0, this.Hm, 0, i);
            System.arraycopy(arrayMap.Hn, 0, this.Hn, 0, i << 1);
            this.Ho = i;
        }
    }

    public V remove(Object obj) {
        int dg = obj == null ? dg() : indexOf(obj, obj.hashCode());
        if (dg >= 0) {
            return removeAt(dg);
        }
        return null;
    }

    public V removeAt(int i) {
        int i2 = i << 1;
        V v = this.Hn[i2 + 1];
        if (this.Ho <= 1) {
            a(this.Hm, this.Hn, this.Ho);
            this.Hm = a.Hx;
            this.Hn = a.Hz;
            this.Ho = 0;
        } else {
            int i3 = 8;
            int i4;
            if (this.Hm.length <= 8 || this.Ho >= this.Hm.length / 3) {
                this.Ho--;
                if (i < this.Ho) {
                    i4 = i + 1;
                    System.arraycopy(this.Hm, i4, this.Hm, i, this.Ho - i);
                    System.arraycopy(this.Hn, i4 << 1, this.Hn, i2, (this.Ho - i) << 1);
                }
                this.Hn[this.Ho << 1] = null;
                this.Hn[(this.Ho << 1) + 1] = null;
            } else {
                if (this.Ho > 8) {
                    i3 = (this.Ho >> 1) + this.Ho;
                }
                Object obj = this.Hm;
                Object obj2 = this.Hn;
                S(i3);
                this.Ho--;
                if (i > 0) {
                    System.arraycopy(obj, 0, this.Hm, 0, i);
                    System.arraycopy(obj2, 0, this.Hn, 0, i2);
                }
                if (i < this.Ho) {
                    i4 = i + 1;
                    System.arraycopy(obj, i4, this.Hm, i, this.Ho - i);
                    System.arraycopy(obj2, i4 << 1, this.Hn, i2, (this.Ho - i) << 1);
                }
            }
        }
        return v;
    }

    public int size() {
        return this.Ho;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        int i = 0;
        while (i < this.Ho) {
            try {
                Object keyAt = keyAt(i);
                Object valueAt = valueAt(i);
                Object obj2 = map.get(keyAt);
                if (valueAt == null) {
                    if (obj2 != null || !map.containsKey(keyAt)) {
                        return false;
                    }
                } else if (!valueAt.equals(obj2)) {
                    return false;
                }
                i++;
            } catch (NullPointerException e) {
                return false;
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int[] iArr = this.Hm;
        Object[] objArr = this.Hn;
        int i = this.Ho;
        int i2 = 1;
        int i3 = 0;
        int i4 = i3;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonParser.EMPTY_OBJECT;
        }
        StringBuilder stringBuilder = new StringBuilder(this.Ho * 28);
        stringBuilder.append('{');
        for (int i = 0; i < this.Ho; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            ArrayMap keyAt = keyAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
            stringBuilder.append('=');
            keyAt = valueAt(i);
            if (keyAt != this) {
                stringBuilder.append(keyAt);
            } else {
                stringBuilder.append("(this Map)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    private MapCollections<K, V> dh() {
        if (this.Hp == null) {
            this.Hp = new MapCollections<K, V>() {
                protected int di() {
                    return ArrayMap.this.Ho;
                }

                protected Object k(int i, int i2) {
                    return ArrayMap.this.Hn[(i << 1) + i2];
                }

                protected int c(Object obj) {
                    return obj == null ? ArrayMap.this.dg() : ArrayMap.this.indexOf(obj, obj.hashCode());
                }

                protected int d(Object obj) {
                    return ArrayMap.this.indexOfValue(obj);
                }

                protected Map<K, V> dj() {
                    return ArrayMap.this;
                }

                protected void b(K k, V v) {
                    ArrayMap.this.put(k, v);
                }

                protected V a(int i, V v) {
                    return ArrayMap.this.setValueAt(i, v);
                }

                protected void T(int i) {
                    ArrayMap.this.removeAt(i);
                }

                protected void dk() {
                    ArrayMap.this.clear();
                }
            };
        }
        return this.Hp;
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.a((Map) this, (Collection) collection);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.Ho + map.size());
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.b((Map) this, (Collection) collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.c(this, collection);
    }

    public Set<Entry<K, V>> entrySet() {
        return dh().dz();
    }

    public Set<K> keySet() {
        return dh().dA();
    }

    public Collection<V> values() {
        return dh().dB();
    }
}
