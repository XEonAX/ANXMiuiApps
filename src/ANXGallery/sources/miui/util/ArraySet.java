package miui.util;

import com.miui.internal.vip.utils.JsonParser;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int Hh = 4;
    static Object[] Hi = null;
    static int Hj = 0;
    static Object[] Hk = null;
    static int Hl = 0;
    private static final String TAG = "ArraySet";
    int[] Hm;
    Object[] Hn;
    int Ho;
    MapCollections<E, E> Hp;

    private int indexOf(Object obj, int i) {
        int i2 = this.Ho;
        if (i2 == 0) {
            return -1;
        }
        int a = a.a(this.Hm, i2, i);
        if (a < 0 || obj.equals(this.Hn[a])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.Hm[i3] == i) {
            if (obj.equals(this.Hn[i3])) {
                return i3;
            }
            i3++;
        }
        a--;
        while (a >= 0 && this.Hm[a] == i) {
            if (obj.equals(this.Hn[a])) {
                return a;
            }
            a--;
        }
        return ~i3;
    }

    private int dg() {
        int i = this.Ho;
        if (i == 0) {
            return -1;
        }
        int a = a.a(this.Hm, i, 0);
        if (a < 0 || this.Hn[a] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.Hm[i2] == 0) {
            if (this.Hn[i2] == null) {
                return i2;
            }
            i2++;
        }
        a--;
        while (a >= 0 && this.Hm[a] == 0) {
            if (this.Hn[a] == null) {
                return a;
            }
            a--;
        }
        return ~i2;
    }

    private void S(int i) {
        Object[] objArr;
        if (i == 8) {
            synchronized (ArraySet.class) {
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
            synchronized (ArraySet.class) {
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
        this.Hn = new Object[i];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (Hl < 10) {
                    objArr[0] = Hk;
                    objArr[1] = iArr;
                    for (i--; i >= 2; i--) {
                        objArr[i] = null;
                    }
                    Hk = objArr;
                    Hl++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (Hj < 10) {
                    objArr[0] = Hi;
                    objArr[1] = iArr;
                    for (i--; i >= 2; i--) {
                        objArr[i] = null;
                    }
                    Hi = objArr;
                    Hj++;
                }
            }
        }
    }

    public ArraySet() {
        this.Hm = a.Hx;
        this.Hn = a.Hz;
        this.Ho = 0;
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.Hm = a.Hx;
            this.Hn = a.Hz;
        } else {
            S(i);
        }
        this.Ho = 0;
    }

    public ArraySet(ArraySet arraySet) {
        this();
        if (arraySet != null) {
            addAll(arraySet);
        }
    }

    public void clear() {
        if (this.Ho != 0) {
            a(this.Hm, this.Hn, this.Ho);
            this.Hm = a.Hx;
            this.Hn = a.Hz;
            this.Ho = 0;
        }
    }

    public void ensureCapacity(int i) {
        if (this.Hm.length < i) {
            int[] iArr = this.Hm;
            Object[] objArr = this.Hn;
            S(i);
            if (this.Ho > 0) {
                System.arraycopy(iArr, 0, this.Hm, 0, this.Ho);
                System.arraycopy(objArr, 0, this.Hn, 0, this.Ho);
            }
            a(iArr, objArr, this.Ho);
        }
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            if (dg() < 0) {
                return false;
            }
        } else if (indexOf(obj, obj.hashCode()) < 0) {
            return false;
        }
        return true;
    }

    public E valueAt(int i) {
        return this.Hn[i];
    }

    public boolean isEmpty() {
        return this.Ho <= 0;
    }

    public boolean add(E e) {
        int dg;
        boolean z;
        if (e == null) {
            dg = dg();
            z = false;
        } else {
            boolean hashCode = e.hashCode();
            z = hashCode;
            dg = indexOf(e, hashCode);
        }
        if (dg >= 0) {
            return false;
        }
        int i;
        dg = ~dg;
        if (this.Ho >= this.Hm.length) {
            i = 4;
            if (this.Ho >= 8) {
                i = (this.Ho >> 1) + this.Ho;
            } else if (this.Ho >= 4) {
                i = 8;
            }
            int[] iArr = this.Hm;
            Object[] objArr = this.Hn;
            S(i);
            if (this.Hm.length > 0) {
                System.arraycopy(iArr, 0, this.Hm, 0, iArr.length);
                System.arraycopy(objArr, 0, this.Hn, 0, objArr.length);
            }
            a(iArr, objArr, this.Ho);
        }
        if (dg < this.Ho) {
            i = dg + 1;
            System.arraycopy(this.Hm, dg, this.Hm, i, this.Ho - dg);
            System.arraycopy(this.Hn, dg, this.Hn, i, this.Ho - dg);
        }
        this.Hm[dg] = z;
        this.Hn[dg] = e;
        this.Ho++;
        return true;
    }

    public void putAll(ArraySet<? extends E> arraySet) {
        int i = arraySet.Ho;
        ensureCapacity(this.Ho + i);
        int i2 = 0;
        if (this.Ho != 0) {
            while (i2 < i) {
                add(arraySet.valueAt(i2));
                i2++;
            }
        } else if (i > 0) {
            System.arraycopy(arraySet.Hm, 0, this.Hm, 0, i);
            System.arraycopy(arraySet.Hn, 0, this.Hn, 0, i);
            this.Ho = i;
        }
    }

    public boolean remove(Object obj) {
        int dg = obj == null ? dg() : indexOf(obj, obj.hashCode());
        if (dg < 0) {
            return false;
        }
        removeAt(dg);
        return true;
    }

    public E removeAt(int i) {
        E e = this.Hn[i];
        if (this.Ho <= 1) {
            a(this.Hm, this.Hn, this.Ho);
            this.Hm = a.Hx;
            this.Hn = a.Hz;
            this.Ho = 0;
        } else {
            int i2 = 8;
            int i3;
            if (this.Hm.length <= 8 || this.Ho >= this.Hm.length / 3) {
                this.Ho--;
                if (i < this.Ho) {
                    i3 = i + 1;
                    System.arraycopy(this.Hm, i3, this.Hm, i, this.Ho - i);
                    System.arraycopy(this.Hn, i3, this.Hn, i, this.Ho - i);
                }
                this.Hn[this.Ho] = null;
            } else {
                if (this.Ho > 8) {
                    i2 = (this.Ho >> 1) + this.Ho;
                }
                Object obj = this.Hm;
                Object obj2 = this.Hn;
                S(i2);
                this.Ho--;
                if (i > 0) {
                    System.arraycopy(obj, 0, this.Hm, 0, i);
                    System.arraycopy(obj2, 0, this.Hn, 0, i);
                }
                if (i < this.Ho) {
                    i3 = i + 1;
                    System.arraycopy(obj, i3, this.Hm, i, this.Ho - i);
                    System.arraycopy(obj2, i3, this.Hn, i, this.Ho - i);
                }
            }
        }
        return e;
    }

    public int size() {
        return this.Ho;
    }

    public Object[] toArray() {
        Object obj = new Object[this.Ho];
        System.arraycopy(this.Hn, 0, obj, 0, this.Ho);
        return obj;
    }

    public <T> T[] toArray(T[] tArr) {
        Object tArr2;
        if (tArr2.length < this.Ho) {
            tArr2 = (Object[]) Array.newInstance(tArr2.getClass().getComponentType(), this.Ho);
        }
        System.arraycopy(this.Hn, 0, tArr2, 0, this.Ho);
        if (tArr2.length > this.Ho) {
            tArr2[this.Ho] = null;
        }
        return tArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        int i = 0;
        while (i < this.Ho) {
            try {
                if (!set.contains(valueAt(i))) {
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
        int i = 0;
        int i2 = 0;
        while (i < this.Ho) {
            i2 += iArr[i];
            i++;
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return JsonParser.EMPTY_OBJECT;
        }
        StringBuilder stringBuilder = new StringBuilder(this.Ho * 14);
        stringBuilder.append('{');
        for (int i = 0; i < this.Ho; i++) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            ArraySet valueAt = valueAt(i);
            if (valueAt != this) {
                stringBuilder.append(valueAt);
            } else {
                stringBuilder.append("(this Set)");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    private MapCollections<E, E> dh() {
        if (this.Hp == null) {
            this.Hp = new MapCollections<E, E>() {
                protected int di() {
                    return ArraySet.this.Ho;
                }

                protected Object k(int i, int i2) {
                    return ArraySet.this.Hn[i];
                }

                protected int c(Object obj) {
                    return obj == null ? ArraySet.this.dg() : ArraySet.this.indexOf(obj, obj.hashCode());
                }

                protected int d(Object obj) {
                    return obj == null ? ArraySet.this.dg() : ArraySet.this.indexOf(obj, obj.hashCode());
                }

                protected Map<E, E> dj() {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void b(E e, E e2) {
                    ArraySet.this.add(e);
                }

                protected E a(int i, E e) {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void T(int i) {
                    ArraySet.this.removeAt(i);
                }

                protected void dk() {
                    ArraySet.this.clear();
                }
            };
        }
        return this.Hp;
    }

    public Iterator<E> iterator() {
        return dh().dA().iterator();
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        ensureCapacity(this.Ho + collection.size());
        boolean z = false;
        for (Object add : collection) {
            z |= add(add);
        }
        return z;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        for (Object remove : collection) {
            z |= remove(remove);
        }
        return z;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.Ho - 1; i >= 0; i--) {
            if (!collection.contains(this.Hn[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }
}
